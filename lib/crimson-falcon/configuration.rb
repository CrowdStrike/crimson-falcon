module Falcon
  class Configuration
    ATTRIBUTES = [
      :scheme, :host, :base_path, :client_id, :client_secret, :member_cid, :cloud,
      :access_token, :access_token_getter, :return_binary_data, :debugging, :logger,
      :temp_folder_path, :timeout, :client_side_validation, :verify_ssl, :verify_ssl_host,
      :ssl_ca_cert, :cert_file, :key_file, :params_encoding, :inject_format, :force_ending_format
    ].freeze

    ATTRIBUTES.each { |attr| attr_accessor attr }

    def initialize
      @scheme = 'https'
      @cloud = 'us-1'
      @host = 'api.crowdstrike.com'
      @base_path = ''
      @client_side_validation = true
      @verify_ssl = true
      @verify_ssl_host = true
      @cert_file = nil
      @key_file = nil
      @timeout = 0
      @params_encoding = nil
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    def self.default
      @default ||= new
    end

    def configure
      yield(self) if block_given?
    end

    def scheme=(scheme)
      @scheme = scheme.sub(/:\/\//, '')
    end

    # When cloud is set, update host
    def cloud=(cloud)
      @cloud = cloud
      @host = Cloud.new(@cloud).host
    end

    def base_path=(base_path)
      @base_path = "/#{base_path}".gsub(/\/+/, '/')
      @base_path = '' if @base_path == '/'
    end

    # Returns base URL for specified operation based on server settings
    def base_url
      "#{scheme}://#{[host, base_path].join('/').gsub(/\/+/, '/')}".sub(/\/+\z/, '')
    end

    def api_key_with_prefix(param_name, param_alias = nil)
      key = @api_key[param_name]
      key = @api_key.fetch(param_alias, key) unless param_alias.nil?
      if @api_key_prefix[param_name]
        "#{@api_key_prefix[param_name]} #{key}"
      else
        key
      end
    end

    def access_token_with_refresh
      return access_token if access_token_getter.nil?
      access_token_getter.call
    end

    def auth_settings
      {
        'oauth2' =>
          {
            type: 'oauth2',
            in: 'header',
            key: 'Authorization',
            value: "Bearer #{access_token_with_refresh}"
          },
      }
    end
  end
end
