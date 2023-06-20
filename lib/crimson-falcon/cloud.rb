=begin
Crimson Falcon - Ruby Client SDK

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

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
