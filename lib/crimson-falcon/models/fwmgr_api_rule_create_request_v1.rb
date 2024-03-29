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
  class FwmgrApiRuleCreateRequestV1
    attr_accessor :action

    attr_accessor :address_family

    attr_accessor :description

    attr_accessor :direction

    attr_accessor :enabled

    attr_accessor :fields

    attr_accessor :fqdn

    attr_accessor :fqdn_enabled

    attr_accessor :icmp

    attr_accessor :local_address

    attr_accessor :local_port

    attr_accessor :log

    attr_accessor :monitor

    attr_accessor :name

    attr_accessor :protocol

    attr_accessor :remote_address

    attr_accessor :remote_port

    attr_accessor :temp_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action' => :'action',
        :'address_family' => :'address_family',
        :'description' => :'description',
        :'direction' => :'direction',
        :'enabled' => :'enabled',
        :'fields' => :'fields',
        :'fqdn' => :'fqdn',
        :'fqdn_enabled' => :'fqdn_enabled',
        :'icmp' => :'icmp',
        :'local_address' => :'local_address',
        :'local_port' => :'local_port',
        :'log' => :'log',
        :'monitor' => :'monitor',
        :'name' => :'name',
        :'protocol' => :'protocol',
        :'remote_address' => :'remote_address',
        :'remote_port' => :'remote_port',
        :'temp_id' => :'temp_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action' => :'String',
        :'address_family' => :'String',
        :'description' => :'String',
        :'direction' => :'String',
        :'enabled' => :'Boolean',
        :'fields' => :'Array<FwmgrApiWorkaroundUIFieldValue>',
        :'fqdn' => :'String',
        :'fqdn_enabled' => :'Boolean',
        :'icmp' => :'FwmgrDomainICMP',
        :'local_address' => :'Array<FwmgrDomainAddressRange>',
        :'local_port' => :'Array<FwmgrDomainPortRange>',
        :'log' => :'Boolean',
        :'monitor' => :'FwmgrDomainMonitoring',
        :'name' => :'String',
        :'protocol' => :'String',
        :'remote_address' => :'Array<FwmgrDomainAddressRange>',
        :'remote_port' => :'Array<FwmgrDomainPortRange>',
        :'temp_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::FwmgrApiRuleCreateRequestV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::FwmgrApiRuleCreateRequestV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'address_family')
        self.address_family = attributes[:'address_family']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.key?(:'fqdn')
        self.fqdn = attributes[:'fqdn']
      end

      if attributes.key?(:'fqdn_enabled')
        self.fqdn_enabled = attributes[:'fqdn_enabled']
      end

      if attributes.key?(:'icmp')
        self.icmp = attributes[:'icmp']
      end

      if attributes.key?(:'local_address')
        if (value = attributes[:'local_address']).is_a?(Array)
          self.local_address = value
        end
      end

      if attributes.key?(:'local_port')
        if (value = attributes[:'local_port']).is_a?(Array)
          self.local_port = value
        end
      end

      if attributes.key?(:'log')
        self.log = attributes[:'log']
      end

      if attributes.key?(:'monitor')
        self.monitor = attributes[:'monitor']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'remote_address')
        if (value = attributes[:'remote_address']).is_a?(Array)
          self.remote_address = value
        end
      end

      if attributes.key?(:'remote_port')
        if (value = attributes[:'remote_port']).is_a?(Array)
          self.remote_port = value
        end
      end

      if attributes.key?(:'temp_id')
        self.temp_id = attributes[:'temp_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action.nil?
        invalid_properties.push('invalid value for "action", action cannot be nil.')
      end

      if @address_family.nil?
        invalid_properties.push('invalid value for "address_family", address_family cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @fields.nil?
        invalid_properties.push('invalid value for "fields", fields cannot be nil.')
      end

      if @fqdn.nil?
        invalid_properties.push('invalid value for "fqdn", fqdn cannot be nil.')
      end

      if @fqdn_enabled.nil?
        invalid_properties.push('invalid value for "fqdn_enabled", fqdn_enabled cannot be nil.')
      end

      if @icmp.nil?
        invalid_properties.push('invalid value for "icmp", icmp cannot be nil.')
      end

      if @local_address.nil?
        invalid_properties.push('invalid value for "local_address", local_address cannot be nil.')
      end

      if @local_port.nil?
        invalid_properties.push('invalid value for "local_port", local_port cannot be nil.')
      end

      if @log.nil?
        invalid_properties.push('invalid value for "log", log cannot be nil.')
      end

      if @monitor.nil?
        invalid_properties.push('invalid value for "monitor", monitor cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @protocol.nil?
        invalid_properties.push('invalid value for "protocol", protocol cannot be nil.')
      end

      if @remote_address.nil?
        invalid_properties.push('invalid value for "remote_address", remote_address cannot be nil.')
      end

      if @remote_port.nil?
        invalid_properties.push('invalid value for "remote_port", remote_port cannot be nil.')
      end

      if @temp_id.nil?
        invalid_properties.push('invalid value for "temp_id", temp_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action.nil?
      return false if @address_family.nil?
      return false if @description.nil?
      return false if @direction.nil?
      return false if @enabled.nil?
      return false if @fields.nil?
      return false if @fqdn.nil?
      return false if @fqdn_enabled.nil?
      return false if @icmp.nil?
      return false if @local_address.nil?
      return false if @local_port.nil?
      return false if @log.nil?
      return false if @monitor.nil?
      return false if @name.nil?
      return false if @protocol.nil?
      return false if @remote_address.nil?
      return false if @remote_port.nil?
      return false if @temp_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          address_family == o.address_family &&
          description == o.description &&
          direction == o.direction &&
          enabled == o.enabled &&
          fields == o.fields &&
          fqdn == o.fqdn &&
          fqdn_enabled == o.fqdn_enabled &&
          icmp == o.icmp &&
          local_address == o.local_address &&
          local_port == o.local_port &&
          log == o.log &&
          monitor == o.monitor &&
          name == o.name &&
          protocol == o.protocol &&
          remote_address == o.remote_address &&
          remote_port == o.remote_port &&
          temp_id == o.temp_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action, address_family, description, direction, enabled, fields, fqdn, fqdn_enabled, icmp, local_address, local_port, log, monitor, name, protocol, remote_address, remote_port, temp_id].hash
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
