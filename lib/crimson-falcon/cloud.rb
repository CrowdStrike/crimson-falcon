=begin
Crimson Falcon - Ruby Client SDK

MIT License

Copyright (c) 2023 Crowdstrike

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end

module Falcon
  # Validates and returns the cloud to use for API Requests.
  class Cloud
    VALID_CLOUDS = {
      "us-1" => "api.crowdstrike.com",
      "us-2" => "api.us-2.crowdstrike.com",
      "us-gov-1" => "api.laggar.gcw.crowdstrike.com",
      "eu-1" => "api.eu-1.crowdstrike.com",
    }.freeze

    # Initializes a new `Cloud` instance with the specified cloud name.
    #
    # @param cloud [String] The name of the cloud instance.
    # @raise [ArgumentError] If the specified cloud name is not valid.
    def initialize(cloud)
      message = "Invalid cloud '#{cloud}'. Valid clouds are: #{VALID_CLOUDS.keys.map { |c| "'#{c}'" }.join(", ")}"
      raise ArgumentError, message unless VALID_CLOUDS.key?(cloud)

      @cloud = cloud
    end

    # Returns the host name for the current cloud instance.
    #
    # @return [String] The host name for the current cloud instance.
    def host
      VALID_CLOUDS[cloud]
    end

    # The name of the cloud instance.
    #
    # @return [String] The name of the cloud instance.
    attr_reader :cloud
  end
end
