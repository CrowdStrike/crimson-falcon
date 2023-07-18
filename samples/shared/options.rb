# options_parser.rb
require "optparse"

module Options
  # This class defines the base cli options for the CrowdStrike Falcon API client.
  class BaseOptions
    attr_reader :options

    # Initializes the base options with default values and sets up the OptionParser.
    def initialize
      @base_file = File.basename($PROGRAM_NAME)
      @options = { cloud: 'us-1' }

      @opts = OptionParser.new do |opts|
        opts.banner = "Usage: #{@base_file} -k FALCON_CLIENT_ID -s FALCON_CLIENT_SECRET [options]"

        opts.summary_width = 40
        opts.separator ""

        opts.on("-k", "--client-id FALCON_CLIENT_ID", "OAuth2 API Client ID.") do |client_id|
          @options[:client_id] = client_id
        end

        opts.on("-s", "--client-secret FALCON_CLIENT_SECRET", "OAuth2 API Client Secret.") do |client_secret|
          @options[:client_secret] = client_secret
        end

        opts.on("-c", "--cloud FALCON_CLOUD", ["us-1", "us-2", "eu-1", "us-gov-1"], "Falcon cloud region (default: us-1) | valid: us-1, us-2, eu-1, us-gov-1.") do |cloud|
          @options[:cloud] = cloud
        end

        opts.on("-m", "--member-cid MEMBER_CID", "Member CID for MSSP") do |member_cid|
          options_parser.options[:member_cid] = member_cid
        end

        opts.on_tail("-h", "--help", "Show this message") do
          puts opts
          exit
        end
      end
    end

    # Parses the options using the OptionParser.
    def parse!
      @opts.parse!
    end

    # Adds a new option to the OptionParser.
    def add_option(short, long, description, &block)
      @opts.on(short, long, description, &block)
    end
  end
end
