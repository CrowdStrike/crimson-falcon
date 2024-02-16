=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

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

require 'date'
require 'time'

module Falcon
  class DomainAPIHostInfoFacetV1
    attr_accessor :asset_criticality

    attr_accessor :build_number

    attr_accessor :groups

    attr_accessor :host_hidden_status

    attr_accessor :id

    attr_accessor :last_seen_timestamp

    attr_accessor :local_ip

    attr_accessor :mac_address

    attr_accessor :machine_domain

    attr_accessor :name

    attr_accessor :os_version

    attr_accessor :ou

    attr_accessor :platform_name

    attr_accessor :product_type_desc

    attr_accessor :serial_number

    attr_accessor :site_name

    attr_accessor :system_manufacturer

    attr_accessor :system_product_name

    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'asset_criticality' => :'asset_criticality',
        :'build_number' => :'build_number',
        :'groups' => :'groups',
        :'host_hidden_status' => :'host_hidden_status',
        :'id' => :'id',
        :'last_seen_timestamp' => :'last_seen_timestamp',
        :'local_ip' => :'local_ip',
        :'mac_address' => :'mac_address',
        :'machine_domain' => :'machine_domain',
        :'name' => :'name',
        :'os_version' => :'os_version',
        :'ou' => :'ou',
        :'platform_name' => :'platform_name',
        :'product_type_desc' => :'product_type_desc',
        :'serial_number' => :'serial_number',
        :'site_name' => :'site_name',
        :'system_manufacturer' => :'system_manufacturer',
        :'system_product_name' => :'system_product_name',
        :'tags' => :'tags'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asset_criticality' => :'DomainAssetCriticalityInfoV1',
        :'build_number' => :'String',
        :'groups' => :'Array<DomainAPIHostGroup>',
        :'host_hidden_status' => :'String',
        :'id' => :'String',
        :'last_seen_timestamp' => :'String',
        :'local_ip' => :'String',
        :'mac_address' => :'String',
        :'machine_domain' => :'String',
        :'name' => :'String',
        :'os_version' => :'String',
        :'ou' => :'String',
        :'platform_name' => :'String',
        :'product_type_desc' => :'String',
        :'serial_number' => :'String',
        :'site_name' => :'String',
        :'system_manufacturer' => :'String',
        :'system_product_name' => :'String',
        :'tags' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainAPIHostInfoFacetV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainAPIHostInfoFacetV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asset_criticality')
        self.asset_criticality = attributes[:'asset_criticality']
      end

      if attributes.key?(:'build_number')
        self.build_number = attributes[:'build_number']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'host_hidden_status')
        self.host_hidden_status = attributes[:'host_hidden_status']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_seen_timestamp')
        self.last_seen_timestamp = attributes[:'last_seen_timestamp']
      end

      if attributes.key?(:'local_ip')
        self.local_ip = attributes[:'local_ip']
      end

      if attributes.key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.key?(:'machine_domain')
        self.machine_domain = attributes[:'machine_domain']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'ou')
        self.ou = attributes[:'ou']
      end

      if attributes.key?(:'platform_name')
        self.platform_name = attributes[:'platform_name']
      end

      if attributes.key?(:'product_type_desc')
        self.product_type_desc = attributes[:'product_type_desc']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'site_name')
        self.site_name = attributes[:'site_name']
      end

      if attributes.key?(:'system_manufacturer')
        self.system_manufacturer = attributes[:'system_manufacturer']
      end

      if attributes.key?(:'system_product_name')
        self.system_product_name = attributes[:'system_product_name']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @groups.nil?
        invalid_properties.push('invalid value for "groups", groups cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @groups.nil?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asset_criticality == o.asset_criticality &&
          build_number == o.build_number &&
          groups == o.groups &&
          host_hidden_status == o.host_hidden_status &&
          id == o.id &&
          last_seen_timestamp == o.last_seen_timestamp &&
          local_ip == o.local_ip &&
          mac_address == o.mac_address &&
          machine_domain == o.machine_domain &&
          name == o.name &&
          os_version == o.os_version &&
          ou == o.ou &&
          platform_name == o.platform_name &&
          product_type_desc == o.product_type_desc &&
          serial_number == o.serial_number &&
          site_name == o.site_name &&
          system_manufacturer == o.system_manufacturer &&
          system_product_name == o.system_product_name &&
          tags == o.tags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asset_criticality, build_number, groups, host_hidden_status, id, last_seen_timestamp, local_ip, mac_address, machine_domain, name, os_version, ou, platform_name, product_type_desc, serial_number, site_name, system_manufacturer, system_product_name, tags].hash
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
