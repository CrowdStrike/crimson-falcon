=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

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

CrowdStrike Swagger API Version: 2023-05-30T23:10:32Z

=end

require 'date'
require 'time'

module Falcon
  # Represents information about a successful or a failed login.
  class DomainDiscoverAPILogin
    # The ID of the account that made the login.
    attr_accessor :account_id

    # The name of the account that made the login (Domain\\Username or Hostname\\Username).
    attr_accessor :account_name

    # The type of the account that made the login.
    attr_accessor :account_type

    # Whether the account that made the login has administrator privileges (Yes, No, or Unknown).
    attr_accessor :admin_privileges

    # A login represents an aggregation of login attempts made in a window of time (1-hour window for logins in the past day, or 24-hour window for logins older than a day).
    attr_accessor :aggregation_time_interval

    # The agent ID of the Falcon sensor installed on the asset where the login took place.
    attr_accessor :aid

    # The customer ID where login took place.
    attr_accessor :cid

    # The description of the reason why the login failed, if login_status=\"Failed\".<ul><li>There are currently no login servers available to service the login request.</li><li>User login with misspelled or bad user account</li><li>User login with misspelled or bad password</li><li>This is either due to a bad username or authentication information</li><li>Unknown user name or bad password.</li><li>User login outside authorized hours</li><li>User login from unauthorized workstation</li><li>User login with expired password</li><li>User login to account disabled by administrator</li><li>Indicates the Sam Server was in the wrong state to perform the desired operation.</li><li>Clocks between DC and other computer too far out of sync</li><li>The user has not been granted the requested login type (aka login right) at this machine</li><li>The login request failed because the trust relationship between the primary domain and the trusted domain failed.</li><li>An attempt was made to login, but the Netlogon service was not started.</li><li>User login with expired account</li><li>User is required to change password at next login</li><li>Evidently a bug in Windows and not a risk</li><li>User login with account locked</li><li>Failure Reason: An Error occurred during Login</li><li>Login Failure: The machine you are logging in to is protected by an authentication firewall. The specified account is not allowed to authenticate to the machine.</li><li>Status OK.</li><li>Invalid password entered</li></ul>
    attr_accessor :failure_description

    # The name of the city where the asset is located where the login took place.
    attr_accessor :host_city

    # The name of the country where the asset is located on which the login took place.
    attr_accessor :host_country

    # The unique ID of the asset where the login took place.
    attr_accessor :host_id

    # The hostname of the host where the login took place.
    attr_accessor :hostname

    # The unique ID of the login.
    attr_accessor :id

    # Whether the failed login is considered suspicious based on criteria including login failures and locations (true or false).
    attr_accessor :is_suspicious

    # Whether the account has local administrator privileges (Yes, No).
    attr_accessor :local_admin_privileges

    # The external IP address of the asset where the login took place.
    attr_accessor :local_ip

    # The domain of the asset where the login took place.
    attr_accessor :login_domain

    # Number of times a login attempt happened in the specified aggregation time interval for this login (1-hour window for logins in the past day, or 24-hour window for logins older than a day).
    attr_accessor :login_event_count

    # The status of the login (Successful or Failed).
    attr_accessor :login_status

    # The date and time of the most recent attempt in the login.
    attr_accessor :login_timestamp

    # The type of the login.  For successful logins: <ul><li>Interactive</li><li>Service</li><li>Terminal server</li><li>Cached credentials</li><li>Auditing</li></ul> For failed logins: <ul><li>Interactive</li><li>Network</li><li>Batch</li><li>Service</li><li>Unlock</li><li>Network cleartext</li><li>New credentials</li><li>Terminal server</li><li>Cached credentials</li><li>Auditing</li></ul>
    attr_accessor :login_type

    # The remote IP address where the login was initiated.
    attr_accessor :remote_ip

    # The security identifier of the account on a Windows asset that made the login.
    attr_accessor :user_sid

    # The username of the account that made the login.
    attr_accessor :username

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'account_name' => :'account_name',
        :'account_type' => :'account_type',
        :'admin_privileges' => :'admin_privileges',
        :'aggregation_time_interval' => :'aggregation_time_interval',
        :'aid' => :'aid',
        :'cid' => :'cid',
        :'failure_description' => :'failure_description',
        :'host_city' => :'host_city',
        :'host_country' => :'host_country',
        :'host_id' => :'host_id',
        :'hostname' => :'hostname',
        :'id' => :'id',
        :'is_suspicious' => :'is_suspicious',
        :'local_admin_privileges' => :'local_admin_privileges',
        :'local_ip' => :'local_ip',
        :'login_domain' => :'login_domain',
        :'login_event_count' => :'login_event_count',
        :'login_status' => :'login_status',
        :'login_timestamp' => :'login_timestamp',
        :'login_type' => :'login_type',
        :'remote_ip' => :'remote_ip',
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
        :'account_id' => :'String',
        :'account_name' => :'String',
        :'account_type' => :'String',
        :'admin_privileges' => :'String',
        :'aggregation_time_interval' => :'String',
        :'aid' => :'String',
        :'cid' => :'String',
        :'failure_description' => :'String',
        :'host_city' => :'String',
        :'host_country' => :'String',
        :'host_id' => :'String',
        :'hostname' => :'String',
        :'id' => :'String',
        :'is_suspicious' => :'Boolean',
        :'local_admin_privileges' => :'String',
        :'local_ip' => :'String',
        :'login_domain' => :'String',
        :'login_event_count' => :'Integer',
        :'login_status' => :'String',
        :'login_timestamp' => :'String',
        :'login_type' => :'String',
        :'remote_ip' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainDiscoverAPILogin` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainDiscoverAPILogin`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'admin_privileges')
        self.admin_privileges = attributes[:'admin_privileges']
      end

      if attributes.key?(:'aggregation_time_interval')
        self.aggregation_time_interval = attributes[:'aggregation_time_interval']
      end

      if attributes.key?(:'aid')
        self.aid = attributes[:'aid']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'failure_description')
        self.failure_description = attributes[:'failure_description']
      end

      if attributes.key?(:'host_city')
        self.host_city = attributes[:'host_city']
      end

      if attributes.key?(:'host_country')
        self.host_country = attributes[:'host_country']
      end

      if attributes.key?(:'host_id')
        self.host_id = attributes[:'host_id']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_suspicious')
        self.is_suspicious = attributes[:'is_suspicious']
      end

      if attributes.key?(:'local_admin_privileges')
        self.local_admin_privileges = attributes[:'local_admin_privileges']
      end

      if attributes.key?(:'local_ip')
        self.local_ip = attributes[:'local_ip']
      end

      if attributes.key?(:'login_domain')
        self.login_domain = attributes[:'login_domain']
      end

      if attributes.key?(:'login_event_count')
        self.login_event_count = attributes[:'login_event_count']
      end

      if attributes.key?(:'login_status')
        self.login_status = attributes[:'login_status']
      end

      if attributes.key?(:'login_timestamp')
        self.login_timestamp = attributes[:'login_timestamp']
      end

      if attributes.key?(:'login_type')
        self.login_type = attributes[:'login_type']
      end

      if attributes.key?(:'remote_ip')
        self.remote_ip = attributes[:'remote_ip']
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          account_name == o.account_name &&
          account_type == o.account_type &&
          admin_privileges == o.admin_privileges &&
          aggregation_time_interval == o.aggregation_time_interval &&
          aid == o.aid &&
          cid == o.cid &&
          failure_description == o.failure_description &&
          host_city == o.host_city &&
          host_country == o.host_country &&
          host_id == o.host_id &&
          hostname == o.hostname &&
          id == o.id &&
          is_suspicious == o.is_suspicious &&
          local_admin_privileges == o.local_admin_privileges &&
          local_ip == o.local_ip &&
          login_domain == o.login_domain &&
          login_event_count == o.login_event_count &&
          login_status == o.login_status &&
          login_timestamp == o.login_timestamp &&
          login_type == o.login_type &&
          remote_ip == o.remote_ip &&
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
      [account_id, account_name, account_type, admin_privileges, aggregation_time_interval, aid, cid, failure_description, host_city, host_country, host_id, hostname, id, is_suspicious, local_admin_privileges, local_ip, login_domain, login_event_count, login_status, login_timestamp, login_type, remote_ip, user_sid, username].hash
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
