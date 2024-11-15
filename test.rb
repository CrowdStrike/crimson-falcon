require "crimson-falcon"

Falcon.configure do |config|
  config.client_id = "XXXX"
  config.client_secret = "XXXX"
  # config.cloud = 'us-2'
  # config.debugging = true
end

# Create new api instance of Falcon::SensorUpdatePolicies
api_instance = Falcon::SensorUpdatePolicies.new

opts = {
  platform: "windows",
}

begin
  # Get sensor update policy settings by platform
  result = api_instance.query_combined_sensor_update_builds(opts)
  result.resources.each do |resource|
    puts resource.sensor_version
  end
rescue Falcon::ApiError => e
  puts "Exception when calling SensorUpdatePolicies->query_combined_sensor_update_builds: #{e}"
end
# rubocop:enable all
