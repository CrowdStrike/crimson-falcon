# This example will return the latest CrowdScore for your environment.

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

# Create an instance of the CrowdScoreApi class
api_instance = Falcon::IncidentsApi.new
opts = {
  # Sort by timestamp descending
  sort: "timestamp.desc",
}

begin
  # Get the CrowdScore
  result = api_instance.crowd_score(opts)
  puts "As of #{result.resources[0].timestamp}, your CrowdScore is #{result.resources[0].score}"
rescue Falcon::ApiError => e
  puts "Exception when calling IncidentsApi->crowd_score: #{e}"
end
