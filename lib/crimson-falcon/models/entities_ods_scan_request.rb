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
  class EntitiesODSScanRequest
    attr_accessor :cloud_ml_level_detection

    attr_accessor :cloud_ml_level_prevention

    attr_accessor :cloud_pup_adware_level_detection

    attr_accessor :cloud_pup_adware_level_prevention

    attr_accessor :cpu_priority

    attr_accessor :description

    attr_accessor :endpoint_notification

    attr_accessor :file_paths

    attr_accessor :host_groups

    attr_accessor :hosts

    attr_accessor :initiated_from

    attr_accessor :max_duration

    attr_accessor :pause_duration

    attr_accessor :quarantine

    attr_accessor :scan_exclusions

    attr_accessor :scan_inclusions

    attr_accessor :sensor_ml_level_detection

    attr_accessor :sensor_ml_level_prevention

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cloud_ml_level_detection' => :'cloud_ml_level_detection',
        :'cloud_ml_level_prevention' => :'cloud_ml_level_prevention',
        :'cloud_pup_adware_level_detection' => :'cloud_pup_adware_level_detection',
        :'cloud_pup_adware_level_prevention' => :'cloud_pup_adware_level_prevention',
        :'cpu_priority' => :'cpu_priority',
        :'description' => :'description',
        :'endpoint_notification' => :'endpoint_notification',
        :'file_paths' => :'file_paths',
        :'host_groups' => :'host_groups',
        :'hosts' => :'hosts',
        :'initiated_from' => :'initiated_from',
        :'max_duration' => :'max_duration',
        :'pause_duration' => :'pause_duration',
        :'quarantine' => :'quarantine',
        :'scan_exclusions' => :'scan_exclusions',
        :'scan_inclusions' => :'scan_inclusions',
        :'sensor_ml_level_detection' => :'sensor_ml_level_detection',
        :'sensor_ml_level_prevention' => :'sensor_ml_level_prevention'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cloud_ml_level_detection' => :'Integer',
        :'cloud_ml_level_prevention' => :'Integer',
        :'cloud_pup_adware_level_detection' => :'Integer',
        :'cloud_pup_adware_level_prevention' => :'Integer',
        :'cpu_priority' => :'Integer',
        :'description' => :'String',
        :'endpoint_notification' => :'Boolean',
        :'file_paths' => :'Array<String>',
        :'host_groups' => :'Array<String>',
        :'hosts' => :'Array<String>',
        :'initiated_from' => :'String',
        :'max_duration' => :'Integer',
        :'pause_duration' => :'Integer',
        :'quarantine' => :'Boolean',
        :'scan_exclusions' => :'Array<String>',
        :'scan_inclusions' => :'Array<String>',
        :'sensor_ml_level_detection' => :'Integer',
        :'sensor_ml_level_prevention' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::EntitiesODSScanRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::EntitiesODSScanRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cloud_ml_level_detection')
        self.cloud_ml_level_detection = attributes[:'cloud_ml_level_detection']
      end

      if attributes.key?(:'cloud_ml_level_prevention')
        self.cloud_ml_level_prevention = attributes[:'cloud_ml_level_prevention']
      end

      if attributes.key?(:'cloud_pup_adware_level_detection')
        self.cloud_pup_adware_level_detection = attributes[:'cloud_pup_adware_level_detection']
      end

      if attributes.key?(:'cloud_pup_adware_level_prevention')
        self.cloud_pup_adware_level_prevention = attributes[:'cloud_pup_adware_level_prevention']
      end

      if attributes.key?(:'cpu_priority')
        self.cpu_priority = attributes[:'cpu_priority']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'endpoint_notification')
        self.endpoint_notification = attributes[:'endpoint_notification']
      end

      if attributes.key?(:'file_paths')
        if (value = attributes[:'file_paths']).is_a?(Array)
          self.file_paths = value
        end
      end

      if attributes.key?(:'host_groups')
        if (value = attributes[:'host_groups']).is_a?(Array)
          self.host_groups = value
        end
      end

      if attributes.key?(:'hosts')
        if (value = attributes[:'hosts']).is_a?(Array)
          self.hosts = value
        end
      end

      if attributes.key?(:'initiated_from')
        self.initiated_from = attributes[:'initiated_from']
      end

      if attributes.key?(:'max_duration')
        self.max_duration = attributes[:'max_duration']
      end

      if attributes.key?(:'pause_duration')
        self.pause_duration = attributes[:'pause_duration']
      end

      if attributes.key?(:'quarantine')
        self.quarantine = attributes[:'quarantine']
      end

      if attributes.key?(:'scan_exclusions')
        if (value = attributes[:'scan_exclusions']).is_a?(Array)
          self.scan_exclusions = value
        end
      end

      if attributes.key?(:'scan_inclusions')
        if (value = attributes[:'scan_inclusions']).is_a?(Array)
          self.scan_inclusions = value
        end
      end

      if attributes.key?(:'sensor_ml_level_detection')
        self.sensor_ml_level_detection = attributes[:'sensor_ml_level_detection']
      end

      if attributes.key?(:'sensor_ml_level_prevention')
        self.sensor_ml_level_prevention = attributes[:'sensor_ml_level_prevention']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cloud_ml_level_detection.nil?
        invalid_properties.push('invalid value for "cloud_ml_level_detection", cloud_ml_level_detection cannot be nil.')
      end

      if @cloud_ml_level_prevention.nil?
        invalid_properties.push('invalid value for "cloud_ml_level_prevention", cloud_ml_level_prevention cannot be nil.')
      end

      if @cloud_pup_adware_level_detection.nil?
        invalid_properties.push('invalid value for "cloud_pup_adware_level_detection", cloud_pup_adware_level_detection cannot be nil.')
      end

      if @cloud_pup_adware_level_prevention.nil?
        invalid_properties.push('invalid value for "cloud_pup_adware_level_prevention", cloud_pup_adware_level_prevention cannot be nil.')
      end

      if @cpu_priority.nil?
        invalid_properties.push('invalid value for "cpu_priority", cpu_priority cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @endpoint_notification.nil?
        invalid_properties.push('invalid value for "endpoint_notification", endpoint_notification cannot be nil.')
      end

      if @file_paths.nil?
        invalid_properties.push('invalid value for "file_paths", file_paths cannot be nil.')
      end

      if @host_groups.nil?
        invalid_properties.push('invalid value for "host_groups", host_groups cannot be nil.')
      end

      if @hosts.nil?
        invalid_properties.push('invalid value for "hosts", hosts cannot be nil.')
      end

      if @initiated_from.nil?
        invalid_properties.push('invalid value for "initiated_from", initiated_from cannot be nil.')
      end

      if @max_duration.nil?
        invalid_properties.push('invalid value for "max_duration", max_duration cannot be nil.')
      end

      if @pause_duration.nil?
        invalid_properties.push('invalid value for "pause_duration", pause_duration cannot be nil.')
      end

      if @quarantine.nil?
        invalid_properties.push('invalid value for "quarantine", quarantine cannot be nil.')
      end

      if @scan_exclusions.nil?
        invalid_properties.push('invalid value for "scan_exclusions", scan_exclusions cannot be nil.')
      end

      if @scan_inclusions.nil?
        invalid_properties.push('invalid value for "scan_inclusions", scan_inclusions cannot be nil.')
      end

      if @sensor_ml_level_detection.nil?
        invalid_properties.push('invalid value for "sensor_ml_level_detection", sensor_ml_level_detection cannot be nil.')
      end

      if @sensor_ml_level_prevention.nil?
        invalid_properties.push('invalid value for "sensor_ml_level_prevention", sensor_ml_level_prevention cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cloud_ml_level_detection.nil?
      return false if @cloud_ml_level_prevention.nil?
      return false if @cloud_pup_adware_level_detection.nil?
      return false if @cloud_pup_adware_level_prevention.nil?
      return false if @cpu_priority.nil?
      return false if @description.nil?
      return false if @endpoint_notification.nil?
      return false if @file_paths.nil?
      return false if @host_groups.nil?
      return false if @hosts.nil?
      return false if @initiated_from.nil?
      return false if @max_duration.nil?
      return false if @pause_duration.nil?
      return false if @quarantine.nil?
      return false if @scan_exclusions.nil?
      return false if @scan_inclusions.nil?
      return false if @sensor_ml_level_detection.nil?
      return false if @sensor_ml_level_prevention.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cloud_ml_level_detection == o.cloud_ml_level_detection &&
          cloud_ml_level_prevention == o.cloud_ml_level_prevention &&
          cloud_pup_adware_level_detection == o.cloud_pup_adware_level_detection &&
          cloud_pup_adware_level_prevention == o.cloud_pup_adware_level_prevention &&
          cpu_priority == o.cpu_priority &&
          description == o.description &&
          endpoint_notification == o.endpoint_notification &&
          file_paths == o.file_paths &&
          host_groups == o.host_groups &&
          hosts == o.hosts &&
          initiated_from == o.initiated_from &&
          max_duration == o.max_duration &&
          pause_duration == o.pause_duration &&
          quarantine == o.quarantine &&
          scan_exclusions == o.scan_exclusions &&
          scan_inclusions == o.scan_inclusions &&
          sensor_ml_level_detection == o.sensor_ml_level_detection &&
          sensor_ml_level_prevention == o.sensor_ml_level_prevention
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cloud_ml_level_detection, cloud_ml_level_prevention, cloud_pup_adware_level_detection, cloud_pup_adware_level_prevention, cpu_priority, description, endpoint_notification, file_paths, host_groups, hosts, initiated_from, max_duration, pause_duration, quarantine, scan_exclusions, scan_inclusions, sensor_ml_level_detection, sensor_ml_level_prevention].hash
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
