=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module Falcon
  # Represents information about an account.
  class DomainDiscoverAPIAccount
    # The account's name (Domain\\Username or Hostname\\Username).
    attr_accessor :account_name

    # The type of the account (Local or Domain).
    attr_accessor :account_type

    # Whether the account has administrator privileges (Yes, No, or Unknown).
    attr_accessor :admin_privileges

    # The account's customer ID.
    attr_accessor :cid

    # The first time the account was seen successfully logging in to your environment.
    attr_accessor :first_seen_timestamp

    # The unique ID of the account.
    attr_accessor :id

    # The hostname of the asset on which the account last made a failed login.
    attr_accessor :last_failed_login_hostname

    # The date and time of the account's most recent failed login.
    attr_accessor :last_failed_login_timestamp

    # The type of the account's most recent failed login. <ul><li>Interactive</li><li>Network</li><li>Batch</li><li>Service</li><li>Unlock</li><li>Network cleartext</li><li>New credentials</li><li>Terminal server</li><li>Cached credentials</li><li>Auditing</li></ul>
    attr_accessor :last_failed_login_type

    # The name of the city where the asset is located on which the account last successfully logged in.
    attr_accessor :last_successful_login_host_city

    # The name of the country where the asset is located on which the account last successfully logged in.
    attr_accessor :last_successful_login_host_country

    # The hostname of the asset on which the account last successfully logged in.
    attr_accessor :last_successful_login_hostname

    # The remote IP address of the asset on which the account last successfully logged in.
    attr_accessor :last_successful_login_remote_ip

    # The date and time of the account's most recent successful login.
    attr_accessor :last_successful_login_timestamp

    # The type of the account's most recent successful login. <ul><li>Interactive</li><li>Service</li><li>Terminal server</li><li>Cached credentials</li><li>Auditing</li></ul>
    attr_accessor :last_successful_login_type

    # Whether the account has local administrator privileges (Yes, No).
    attr_accessor :local_admin_privileges

    # The domain of the asset the account successfully logged in to.
    attr_accessor :login_domain

    # The most recent date and time the account's password was changed.
    attr_accessor :password_last_set_timestamp

    # The account's security identifier on Windows assets.
    attr_accessor :user_sid

    # The account's username.
    attr_accessor :username

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_name' => :'account_name',
        :'account_type' => :'account_type',
        :'admin_privileges' => :'admin_privileges',
        :'cid' => :'cid',
        :'first_seen_timestamp' => :'first_seen_timestamp',
        :'id' => :'id',
        :'last_failed_login_hostname' => :'last_failed_login_hostname',
        :'last_failed_login_timestamp' => :'last_failed_login_timestamp',
        :'last_failed_login_type' => :'last_failed_login_type',
        :'last_successful_login_host_city' => :'last_successful_login_host_city',
        :'last_successful_login_host_country' => :'last_successful_login_host_country',
        :'last_successful_login_hostname' => :'last_successful_login_hostname',
        :'last_successful_login_remote_ip' => :'last_successful_login_remote_ip',
        :'last_successful_login_timestamp' => :'last_successful_login_timestamp',
        :'last_successful_login_type' => :'last_successful_login_type',
        :'local_admin_privileges' => :'local_admin_privileges',
        :'login_domain' => :'login_domain',
        :'password_last_set_timestamp' => :'password_last_set_timestamp',
        :'user_sid' => :'user_sid',
        :'username' => :'username'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_name' => :'String',
        :'account_type' => :'String',
        :'admin_privileges' => :'String',
        :'cid' => :'String',
        :'first_seen_timestamp' => :'String',
        :'id' => :'String',
        :'last_failed_login_hostname' => :'String',
        :'last_failed_login_timestamp' => :'String',
        :'last_failed_login_type' => :'String',
        :'last_successful_login_host_city' => :'String',
        :'last_successful_login_host_country' => :'String',
        :'last_successful_login_hostname' => :'String',
        :'last_successful_login_remote_ip' => :'String',
        :'last_successful_login_timestamp' => :'String',
        :'last_successful_login_type' => :'String',
        :'local_admin_privileges' => :'String',
        :'login_domain' => :'String',
        :'password_last_set_timestamp' => :'String',
        :'user_sid' => :'String',
        :'username' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainDiscoverAPIAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainDiscoverAPIAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'admin_privileges')
        self.admin_privileges = attributes[:'admin_privileges']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'first_seen_timestamp')
        self.first_seen_timestamp = attributes[:'first_seen_timestamp']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_failed_login_hostname')
        self.last_failed_login_hostname = attributes[:'last_failed_login_hostname']
      end

      if attributes.key?(:'last_failed_login_timestamp')
        self.last_failed_login_timestamp = attributes[:'last_failed_login_timestamp']
      end

      if attributes.key?(:'last_failed_login_type')
        self.last_failed_login_type = attributes[:'last_failed_login_type']
      end

      if attributes.key?(:'last_successful_login_host_city')
        self.last_successful_login_host_city = attributes[:'last_successful_login_host_city']
      end

      if attributes.key?(:'last_successful_login_host_country')
        self.last_successful_login_host_country = attributes[:'last_successful_login_host_country']
      end

      if attributes.key?(:'last_successful_login_hostname')
        self.last_successful_login_hostname = attributes[:'last_successful_login_hostname']
      end

      if attributes.key?(:'last_successful_login_remote_ip')
        self.last_successful_login_remote_ip = attributes[:'last_successful_login_remote_ip']
      end

      if attributes.key?(:'last_successful_login_timestamp')
        self.last_successful_login_timestamp = attributes[:'last_successful_login_timestamp']
      end

      if attributes.key?(:'last_successful_login_type')
        self.last_successful_login_type = attributes[:'last_successful_login_type']
      end

      if attributes.key?(:'local_admin_privileges')
        self.local_admin_privileges = attributes[:'local_admin_privileges']
      end

      if attributes.key?(:'login_domain')
        self.login_domain = attributes[:'login_domain']
      end

      if attributes.key?(:'password_last_set_timestamp')
        self.password_last_set_timestamp = attributes[:'password_last_set_timestamp']
      end

      if attributes.key?(:'user_sid')
        self.user_sid = attributes[:'user_sid']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cid.nil?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_name == o.account_name &&
          account_type == o.account_type &&
          admin_privileges == o.admin_privileges &&
          cid == o.cid &&
          first_seen_timestamp == o.first_seen_timestamp &&
          id == o.id &&
          last_failed_login_hostname == o.last_failed_login_hostname &&
          last_failed_login_timestamp == o.last_failed_login_timestamp &&
          last_failed_login_type == o.last_failed_login_type &&
          last_successful_login_host_city == o.last_successful_login_host_city &&
          last_successful_login_host_country == o.last_successful_login_host_country &&
          last_successful_login_hostname == o.last_successful_login_hostname &&
          last_successful_login_remote_ip == o.last_successful_login_remote_ip &&
          last_successful_login_timestamp == o.last_successful_login_timestamp &&
          last_successful_login_type == o.last_successful_login_type &&
          local_admin_privileges == o.local_admin_privileges &&
          login_domain == o.login_domain &&
          password_last_set_timestamp == o.password_last_set_timestamp &&
          user_sid == o.user_sid &&
          username == o.username
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_name, account_type, admin_privileges, cid, first_seen_timestamp, id, last_failed_login_hostname, last_failed_login_timestamp, last_failed_login_type, last_successful_login_host_city, last_successful_login_host_country, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_timestamp, last_successful_login_type, local_admin_privileges, login_domain, password_last_set_timestamp, user_sid, username].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Falcon.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end