# This example demonstrates how to retrieve a list of hosts and their sensor versions by hostname.
# This example also demonstrates using a class to take advantage of instance variables such as
# @api_instance and @options.
require "crimson-falcon"
require_relative "../shared/prompt"
require_relative "../shared/options"

class SensorVersionsByHostname
  # Initializes a new instance of the SensorVersionsByHostname class.
  # This method sets up the options parser, prompts the user for the Falcon client ID and secret, and configures the Falcon client.
  # It also initializes the @api_instance and @options instance variables.
  #
  # Returns nothing.
  def initialize
    options_parser = Options::BaseOptions.new
    # Add reverse option
    options_parser.add_option("-r", "--reverse", "Reverse sort order.") do |reverse|
      options_parser.options[:reverse] = reverse
    end
    # Add threaded option
    options_parser.add_option("-t", "--threads", "Use threads.") do |threads|
      options_parser.options[:threads] = threads
    end
    options_parser.parse!

    falcon_client_id = options_parser.options[:client_id] || ENV["FALCON_CLIENT_ID"] || Prompt.ask("Missing FALCON_CLIENT_ID environment variable. " \
    "Please provide your OAuth2 API Client ID for authentication with CrowdStrike Falcon platform\n" \
    "Falcon Client ID: ")

    falcon_client_secret = options_parser.options[:client_secret] || ENV["FALCON_CLIENT_SECRET"] || Prompt.ask("Missing FALCON_CLIENT_SECRET environment variable. " \
    "Please provide your OAuth2 API Client Secret for authentication with CrowdStrike Falcon platform\n" \
    "Falcon Client Secret: ", true)

    Falcon.configure do |config|
      config.client_id = falcon_client_id
      config.client_secret = falcon_client_secret
      config.member_cid = options_parser.options[:member_cid] if options_parser.options[:member_cid]
      config.cloud = ENV["FALCON_CLOUD"] || options_parser.options[:cloud]
    end

    @api_instance = Falcon::Hosts.new
    @options = options_parser.options
  end


  def device_list(offset: String, limit: Integer, sort: String)
    # This method retrieves a list of devices by query_devices_by_filter_scroll.
    #
    # offset - The offset to start the device list.
    # limit - The maximum number of devices to retrieve.
    # sort - The sort order for the device list.
    #
    # Returns the new offset, the total number of devices and the list of devices.
    new_offset = ""
    total = 0
    returned_device_list = []
    opts = {
      offset: offset,
      limit: limit,
      sort: sort
    }

    begin
      result = @api_instance.query_devices_by_filter_scroll(opts)
    rescue Falcon::ApiError => e
      puts "Exception when calling Hosts->query_devices_by_filter_scroll: #{e}"
    end

    new_offset = result.meta.pagination.offset
    total = result.meta.pagination.total
    returned_device_list = result.resources

    return new_offset, total, returned_device_list
  end

  def device_detail(aids: Array)
    # This method receives an array of device aids and returns an array of hashes with the hostname and agent version for each device.
    #
    # aids - An array of device aids.
    #
    # Returns an array of hashes with the hostname and agent version for each device.
    begin
      result = @api_instance.post_device_details_v2(Falcon::MsaIdsRequest.new(ids: aids))
    rescue Falcon::ApiError => e
      puts "Exception when calling Hosts->post_device_details_v2: #{e}"
    end

    device_details = []
    result.resources.each do |device|
      res = {}
      res[:hostname] = device.hostname || "N/A"
      res[:agent_version] = device.agent_version || "N/A"
      device_details << res
    end

    device_details
  end

  def fetch_and_print_with_threads
    # This method retrieves a list of devices and their sensor versions by hostname using threads.
    # It uses the device_list and device_detail methods to retrieve the device list and details.
    # It prints the hostname and agent version for each device.
    #
    # Returns nothing.
    offset = nil
    displayed = false
    limit = 500
    sort = @options[:reverse] ? "hostname.desc" : "hostname.asc"
    total = 1
    offset_position = 0
    threads = []

    while offset_position < total
      offset, total, devices = device_list(offset: offset, limit: limit, sort: sort)
      offset_position += limit

      threads << Thread.new do
        details = device_detail(aids: devices)
        details.each do |device|
          displayed = true
          puts "#{device[:hostname]} is on version #{device[:agent_version]}"
        end
      end
    end

    threads.each(&:join)  # wait for all threads to finish

    if not displayed
      puts "No devices found."
    end
  end

  def fetch_and_print
    # This method retrieves a list of devices and their sensor versions by hostname.
    # It uses the device_list and device_detail methods to retrieve the device list and details.
    # It prints the hostname and agent version for each device.
    #
    # Returns nothing.
    offset = nil
    displayed = 0
    limit = 500
    sort = @options[:reverse] ? "hostname.desc" : "hostname.asc"
    total = 1
    offset_position = 0

    while offset_position < total
      offset, total, devices = device_list(offset: offset, limit: limit, sort: sort)
      offset_position += limit
      details = device_detail(aids: devices)
      details.each do |device|
        displayed += 1
        puts "#{displayed}: #{device[:hostname]} is on version #{device[:agent_version]}"
      end
    end

    if not displayed
      puts "No devices found."
    end
  end
end

sensor_versions = SensorVersionsByHostname.new
# If @options[:threads] is true, use threads to retrieve the device list and details.
# Otherwise, retrieve the device list and details without threads.
if sensor_versions.instance_variable_get(:@options)[:threads]
  sensor_versions.fetch_and_print_with_threads
else
  sensor_versions.fetch_and_print
end
