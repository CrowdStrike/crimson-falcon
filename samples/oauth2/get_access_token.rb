# This example will return a generated OAuth2 access token for your API credentials.

require "crimson-falcon"
require_relative "../shared/prompt"
require_relative "../shared/options"

# Sets up the command line options
# Use -h or --help to see the options
options_parser = Options::BaseOptions.new
options_parser.parse!

# Get API credentials from environment variables, cli options, or prompt for input
falcon_client_id = options_parser.options[:client_id] || ENV["FALCON_CLIENT_ID"] || Prompt.ask("Missing FALCON_CLIENT_ID environment variable. " \
"Please provide your OAuth2 API Client ID for authentication with CrowdStrike Falcon platform\n" \
"Falcon Client ID: ")

falcon_client_secret = options_parser.options[:client_secret] || ENV["FALCON_CLIENT_SECRET"] || Prompt.ask("Missing FALCON_CLIENT_SECRET environment variable. " \
"Please provide your OAuth2 API Client Secret for authentication with CrowdStrike Falcon platform\n" \
"Falcon Client Secret: ", true)

Falcon.configure do |config|
  # Grab the environment variable, otherwise, prompt for input
  config.client_id = falcon_client_id
  config.client_secret = falcon_client_secret
  config.cloud = ENV["FALCON_CLOUD"] || options_parser.options[:cloud]
end

# Create an instance of the SensorDownloadApi class
api_instance = Falcon::Oauth2Api.new
opts = {}
opts[:member_cid] = options_parser.options[:member_cid] if options_parser.options[:member_cid]

begin
  # Get OAuth2 access token
  result = api_instance.oauth2_access_token(Falcon.configure.client_id, Falcon.configure.client_secret, opts)
  puts result.access_token
rescue Falcon::ApiError => e
  puts "Exception when calling Oauth2Api->oauth2_access_token: #{e}"
end
