require 'net/http'

module Falcon
  class Configuration
    # Client ID used for authentication with CrowdStrike Falcon API. **Required**
    attr_accessor :client_id

    # Client Secret used for authentication with CrowdStrike Falcon API. **Required**
    attr_accessor :client_secret

    # CID selector for cases when the ClientID/ClientSecret has access to multiple CIDs. **Optional**
    attr_accessor :member_cid

    # The cloud to use for API calls. **Optional**
    attr_accessor :cloud

    # Override the default host for the API. (default: api.crowdstrike.com) **Optional**
    attr_accessor :host_override

    # Override the default base path for the API. (default: /) **Optional**
    attr_accessor :base_path_override

    # Override the default HTTP timeout. (default: 300) **Optional**
    attr_accessor :http_timeout_override

    # Override the default user agent. (default: crowdstrike-crimson/VERSION) **Optional**
    attr_accessor :user_agent_override

    
    attr_accessor :transport_decorator
    attr_accessor :debug

    DEFAULT_USER_AGENT = "crowdstrike-crimson/#{VERSION}"
    DEFAULT_HTTP_TIMEOUT = 300 # seconds equivalent to 5 minutes
    DEFAULT_BASE_PATH = "/" # Based on the assumption as it's not defined in the code snippet provided

    def initialize(client_id:, client_secret:, member_cid: nil, cloud: Clouds::US1, host_override: nil, base_path_override: nil, http_timeout_override: nil, user_agent_override: nil, transport_decorator: nil, debug: false)
      @client_id = client_id
      @client_secret = client_secret
      @member_cid = member_cid
      @cloud = cloud
      @host_override = host_override
      @base_path_override = base_path_override
      @http_timeout_override = http_timeout_override
      @user_agent_override = user_agent_override
      @transport_decorator = transport_decorator
      @debug = debug
    end

    def host
      host_override.empty? ? cloud.host : host_override
    end

    def base_path
      base_path_override.empty? ? DEFAULT_BASE_PATH : base_path_override
    end

    def http_timeout
      http_timeout_override.nil? ? DEFAULT_HTTP_TIMEOUT : http_timeout_override
    end

    def user_agent
      # If you are editing this part of the code, you may want to familiarise yourself with
      # Section 5.5.3. User-Agent of RFC 7231: Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content
      user_agent_override.empty? ? DEFAULT_USER_AGENT : "#{user_agent_override} #{DEFAULT_USER_AGENT}"
    end
  end
end
