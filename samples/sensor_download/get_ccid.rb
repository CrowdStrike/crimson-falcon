# This example will return the CCID associated with your API credentials.

require "crimson-falcon"
require_relative "../shared/prompt"
require_relative "../shared/options"

# Sets up the command line options
# Use -h or --help to see the options
options_parser = Options::BaseOptions.new
options_parser.parse!

# Get API credentials from environment variables, cli options, or prompt for input
falcon_client_id = ENV["FALCON_CLIENT_ID"] || options_parser.options[:client_id] || Prompt.ask("Missing FALCON_CLIENT_ID environment variable. " \
"Please provide your OAuth2 API Client ID for authentication with CrowdStrike Falcon platform\n" \
"Falcon Client ID: ")

falcon_client_secret = ENV["FALCON_CLIENT_SECRET"] || options_parser.options[:client_secret] || Prompt.ask("Missing FALCON_CLIENT_SECRET environment variable. " \
"Please provide your OAuth2 API Client Secret for authentication with CrowdStrike Falcon platform\n" \
"Falcon Client Secret: ", true)

Falcon.configure do |config|
  # Grab the environment variable, otherwise, prompt for input
  config.client_id = falcon_client_id
  config.client_secret = falcon_client_secret
  config.cloud = ENV["FALCON_CLOUD"] || options_parser.options[:cloud]
end

# Create an instance of the SensorDownloadApi class
api_instance = Falcon::SensorDownloadApi.new

begin
  # Get the CCID
  result = api_instance.get_sensor_installers_ccidby_query
  puts "Your CCID is #{result.resources.first}"
rescue Falcon::ApiError => e
  puts "Exception when calling SensorDownloadApi->get_sensor_installers_ccidby_query: #{e}"
end

