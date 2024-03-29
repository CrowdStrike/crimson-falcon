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
  class DomainSignalProperties
    attr_accessor :aid

    attr_accessor :assessment

    attr_accessor :assessment_items

    attr_accessor :cid

    attr_accessor :event_platform

    attr_accessor :modified_time

    attr_accessor :product_type_desc

    attr_accessor :sensor_file_status

    attr_accessor :system_serial_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aid' => :'aid',
        :'assessment' => :'assessment',
        :'assessment_items' => :'assessment_items',
        :'cid' => :'cid',
        :'event_platform' => :'event_platform',
        :'modified_time' => :'modified_time',
        :'product_type_desc' => :'product_type_desc',
        :'sensor_file_status' => :'sensor_file_status',
        :'system_serial_number' => :'system_serial_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'aid' => :'String',
        :'assessment' => :'DomainAssessment',
        :'assessment_items' => :'DomainAssessmentItems',
        :'cid' => :'String',
        :'event_platform' => :'String',
        :'modified_time' => :'Time',
        :'product_type_desc' => :'String',
        :'sensor_file_status' => :'String',
        :'system_serial_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainSignalProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainSignalProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aid')
        self.aid = attributes[:'aid']
      end

      if attributes.key?(:'assessment')
        self.assessment = attributes[:'assessment']
      end

      if attributes.key?(:'assessment_items')
        self.assessment_items = attributes[:'assessment_items']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'event_platform')
        self.event_platform = attributes[:'event_platform']
      end

      if attributes.key?(:'modified_time')
        self.modified_time = attributes[:'modified_time']
      end

      if attributes.key?(:'product_type_desc')
        self.product_type_desc = attributes[:'product_type_desc']
      end

      if attributes.key?(:'sensor_file_status')
        self.sensor_file_status = attributes[:'sensor_file_status']
      end

      if attributes.key?(:'system_serial_number')
        self.system_serial_number = attributes[:'system_serial_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aid.nil?
        invalid_properties.push('invalid value for "aid", aid cannot be nil.')
      end

      if @assessment.nil?
        invalid_properties.push('invalid value for "assessment", assessment cannot be nil.')
      end

      if @assessment_items.nil?
        invalid_properties.push('invalid value for "assessment_items", assessment_items cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @event_platform.nil?
        invalid_properties.push('invalid value for "event_platform", event_platform cannot be nil.')
      end

      if @modified_time.nil?
        invalid_properties.push('invalid value for "modified_time", modified_time cannot be nil.')
      end

      if @product_type_desc.nil?
        invalid_properties.push('invalid value for "product_type_desc", product_type_desc cannot be nil.')
      end

      if @sensor_file_status.nil?
        invalid_properties.push('invalid value for "sensor_file_status", sensor_file_status cannot be nil.')
      end

      if @system_serial_number.nil?
        invalid_properties.push('invalid value for "system_serial_number", system_serial_number cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aid.nil?
      return false if @assessment.nil?
      return false if @assessment_items.nil?
      return false if @cid.nil?
      return false if @event_platform.nil?
      return false if @modified_time.nil?
      return false if @product_type_desc.nil?
      return false if @sensor_file_status.nil?
      return false if @system_serial_number.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aid == o.aid &&
          assessment == o.assessment &&
          assessment_items == o.assessment_items &&
          cid == o.cid &&
          event_platform == o.event_platform &&
          modified_time == o.modified_time &&
          product_type_desc == o.product_type_desc &&
          sensor_file_status == o.sensor_file_status &&
          system_serial_number == o.system_serial_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aid, assessment, assessment_items, cid, event_platform, modified_time, product_type_desc, sensor_file_status, system_serial_number].hash
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
