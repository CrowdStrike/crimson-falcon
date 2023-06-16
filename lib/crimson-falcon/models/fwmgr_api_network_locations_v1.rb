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
  class FwmgrApiNetworkLocationsV1
    attr_accessor :cid

    attr_accessor :connection_types

    attr_accessor :created_by

    attr_accessor :created_on

    attr_accessor :default_gateways

    attr_accessor :description

    attr_accessor :dhcp_servers

    attr_accessor :dns_resolution_targets

    attr_accessor :dns_servers

    attr_accessor :enabled

    attr_accessor :host_addresses

    attr_accessor :https_reachable_hosts

    attr_accessor :icmp_request_targets

    attr_accessor :id

    attr_accessor :metadata

    attr_accessor :modified_by

    attr_accessor :modified_on

    attr_accessor :name

    attr_accessor :rule_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cid' => :'cid',
        :'connection_types' => :'connection_types',
        :'created_by' => :'created_by',
        :'created_on' => :'created_on',
        :'default_gateways' => :'default_gateways',
        :'description' => :'description',
        :'dhcp_servers' => :'dhcp_servers',
        :'dns_resolution_targets' => :'dns_resolution_targets',
        :'dns_servers' => :'dns_servers',
        :'enabled' => :'enabled',
        :'host_addresses' => :'host_addresses',
        :'https_reachable_hosts' => :'https_reachable_hosts',
        :'icmp_request_targets' => :'icmp_request_targets',
        :'id' => :'id',
        :'metadata' => :'metadata',
        :'modified_by' => :'modified_by',
        :'modified_on' => :'modified_on',
        :'name' => :'name',
        :'rule_count' => :'rule_count'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cid' => :'String',
        :'connection_types' => :'FwmgrDomainConnectionType',
        :'created_by' => :'String',
        :'created_on' => :'String',
        :'default_gateways' => :'Array<String>',
        :'description' => :'String',
        :'dhcp_servers' => :'Array<String>',
        :'dns_resolution_targets' => :'FwmgrDomainDNSResolutionTargetsWithPolling',
        :'dns_servers' => :'Array<String>',
        :'enabled' => :'Boolean',
        :'host_addresses' => :'Array<String>',
        :'https_reachable_hosts' => :'FwmgrDomainHTTPSHostsWithPolling',
        :'icmp_request_targets' => :'FwmgrDomainICMPTargetsWithPolling',
        :'id' => :'String',
        :'metadata' => :'FwmgrApiNetworkLocationsMetadataV1',
        :'modified_by' => :'String',
        :'modified_on' => :'String',
        :'name' => :'String',
        :'rule_count' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::FwmgrApiNetworkLocationsV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::FwmgrApiNetworkLocationsV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'connection_types')
        self.connection_types = attributes[:'connection_types']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'default_gateways')
        if (value = attributes[:'default_gateways']).is_a?(Array)
          self.default_gateways = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'dhcp_servers')
        if (value = attributes[:'dhcp_servers']).is_a?(Array)
          self.dhcp_servers = value
        end
      end

      if attributes.key?(:'dns_resolution_targets')
        self.dns_resolution_targets = attributes[:'dns_resolution_targets']
      end

      if attributes.key?(:'dns_servers')
        if (value = attributes[:'dns_servers']).is_a?(Array)
          self.dns_servers = value
        end
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'host_addresses')
        if (value = attributes[:'host_addresses']).is_a?(Array)
          self.host_addresses = value
        end
      end

      if attributes.key?(:'https_reachable_hosts')
        self.https_reachable_hosts = attributes[:'https_reachable_hosts']
      end

      if attributes.key?(:'icmp_request_targets')
        self.icmp_request_targets = attributes[:'icmp_request_targets']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'modified_by')
        self.modified_by = attributes[:'modified_by']
      end

      if attributes.key?(:'modified_on')
        self.modified_on = attributes[:'modified_on']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rule_count')
        self.rule_count = attributes[:'rule_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @connection_types.nil?
        invalid_properties.push('invalid value for "connection_types", connection_types cannot be nil.')
      end

      if @default_gateways.nil?
        invalid_properties.push('invalid value for "default_gateways", default_gateways cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @dhcp_servers.nil?
        invalid_properties.push('invalid value for "dhcp_servers", dhcp_servers cannot be nil.')
      end

      if @dns_resolution_targets.nil?
        invalid_properties.push('invalid value for "dns_resolution_targets", dns_resolution_targets cannot be nil.')
      end

      if @dns_servers.nil?
        invalid_properties.push('invalid value for "dns_servers", dns_servers cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @host_addresses.nil?
        invalid_properties.push('invalid value for "host_addresses", host_addresses cannot be nil.')
      end

      if @https_reachable_hosts.nil?
        invalid_properties.push('invalid value for "https_reachable_hosts", https_reachable_hosts cannot be nil.')
      end

      if @icmp_request_targets.nil?
        invalid_properties.push('invalid value for "icmp_request_targets", icmp_request_targets cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @rule_count.nil?
        invalid_properties.push('invalid value for "rule_count", rule_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cid.nil?
      return false if @connection_types.nil?
      return false if @default_gateways.nil?
      return false if @description.nil?
      return false if @dhcp_servers.nil?
      return false if @dns_resolution_targets.nil?
      return false if @dns_servers.nil?
      return false if @enabled.nil?
      return false if @host_addresses.nil?
      return false if @https_reachable_hosts.nil?
      return false if @icmp_request_targets.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @rule_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cid == o.cid &&
          connection_types == o.connection_types &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          default_gateways == o.default_gateways &&
          description == o.description &&
          dhcp_servers == o.dhcp_servers &&
          dns_resolution_targets == o.dns_resolution_targets &&
          dns_servers == o.dns_servers &&
          enabled == o.enabled &&
          host_addresses == o.host_addresses &&
          https_reachable_hosts == o.https_reachable_hosts &&
          icmp_request_targets == o.icmp_request_targets &&
          id == o.id &&
          metadata == o.metadata &&
          modified_by == o.modified_by &&
          modified_on == o.modified_on &&
          name == o.name &&
          rule_count == o.rule_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cid, connection_types, created_by, created_on, default_gateways, description, dhcp_servers, dns_resolution_targets, dns_servers, enabled, host_addresses, https_reachable_hosts, icmp_request_targets, id, metadata, modified_by, modified_on, name, rule_count].hash
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
