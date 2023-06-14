=begin

Helper class to validate the cloud, as well as provide autodiscovery functionality if needed.

=end

module Falcon
  class Cloud
    VALID_CLOUDS = {
      "us-1" => "api.crowdstrike.com",
      "us-2" => "api.us-2.crowdstrike.com",
      "us-gov-1" => "api.laggar.gcw.crowdstrike.com",
      "eu-1" => "api.eu-1.crowdstrike.com",
    }.freeze

    attr_reader :cloud

    def initialize(cloud)
      raise ArgumentError, "Invalid cloud: #{cloud}" unless VALID_CLOUDS.key?(cloud)

      @cloud = cloud
    end

    def host
      VALID_CLOUDS[cloud]
    end
  end
end
