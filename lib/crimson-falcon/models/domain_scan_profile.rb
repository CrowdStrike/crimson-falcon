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
  class DomainScanProfile
    attr_accessor :cid

    attr_accessor :cloud_ml_level_detection

    attr_accessor :cloud_ml_level_prevention

    attr_accessor :cpu_priority

    attr_accessor :created_by

    attr_accessor :created_on

    attr_accessor :deleted

    attr_accessor :description

    attr_accessor :endpoint_notification

    attr_accessor :file_paths

    attr_accessor :host_groups

    attr_accessor :hosts

    attr_accessor :id

    attr_accessor :initiated_from

    attr_accessor :last_updated

    attr_accessor :max_duration

    attr_accessor :max_file_size

    attr_accessor :metadata

    attr_accessor :pause_duration

    attr_accessor :policy_setting

    attr_accessor :preemption_priority

    attr_accessor :quarantine

    attr_accessor :scan_exclusions

    attr_accessor :scan_inclusions

    attr_accessor :schedule

    attr_accessor :sensor_ml_level_detection

    attr_accessor :sensor_ml_level_prevention

    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cid' => :'cid',
        :'cloud_ml_level_detection' => :'cloud_ml_level_detection',
        :'cloud_ml_level_prevention' => :'cloud_ml_level_prevention',
        :'cpu_priority' => :'cpu_priority',
        :'created_by' => :'created_by',
        :'created_on' => :'created_on',
        :'deleted' => :'deleted',
        :'description' => :'description',
        :'endpoint_notification' => :'endpoint_notification',
        :'file_paths' => :'file_paths',
        :'host_groups' => :'host_groups',
        :'hosts' => :'hosts',
        :'id' => :'id',
        :'initiated_from' => :'initiated_from',
        :'last_updated' => :'last_updated',
        :'max_duration' => :'max_duration',
        :'max_file_size' => :'max_file_size',
        :'metadata' => :'metadata',
        :'pause_duration' => :'pause_duration',
        :'policy_setting' => :'policy_setting',
        :'preemption_priority' => :'preemption_priority',
        :'quarantine' => :'quarantine',
        :'scan_exclusions' => :'scan_exclusions',
        :'scan_inclusions' => :'scan_inclusions',
        :'schedule' => :'schedule',
        :'sensor_ml_level_detection' => :'sensor_ml_level_detection',
        :'sensor_ml_level_prevention' => :'sensor_ml_level_prevention',
        :'status' => :'status'
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
        :'cloud_ml_level_detection' => :'Integer',
        :'cloud_ml_level_prevention' => :'Integer',
        :'cpu_priority' => :'Integer',
        :'created_by' => :'String',
        :'created_on' => :'Time',
        :'deleted' => :'Boolean',
        :'description' => :'String',
        :'endpoint_notification' => :'Boolean',
        :'file_paths' => :'Array<String>',
        :'host_groups' => :'Array<String>',
        :'hosts' => :'Array<String>',
        :'id' => :'String',
        :'initiated_from' => :'String',
        :'last_updated' => :'Time',
        :'max_duration' => :'Integer',
        :'max_file_size' => :'Integer',
        :'metadata' => :'Array<DomainScanProfileMetadata>',
        :'pause_duration' => :'Integer',
        :'policy_setting' => :'Array<Integer>',
        :'preemption_priority' => :'Integer',
        :'quarantine' => :'Boolean',
        :'scan_exclusions' => :'Array<String>',
        :'scan_inclusions' => :'Array<String>',
        :'schedule' => :'DomainSchedule',
        :'sensor_ml_level_detection' => :'Integer',
        :'sensor_ml_level_prevention' => :'Integer',
        :'status' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainScanProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainScanProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cloud_ml_level_detection')
        self.cloud_ml_level_detection = attributes[:'cloud_ml_level_detection']
      end

      if attributes.key?(:'cloud_ml_level_prevention')
        self.cloud_ml_level_prevention = attributes[:'cloud_ml_level_prevention']
      end

      if attributes.key?(:'cpu_priority')
        self.cpu_priority = attributes[:'cpu_priority']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
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

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'initiated_from')
        self.initiated_from = attributes[:'initiated_from']
      end

      if attributes.key?(:'last_updated')
        self.last_updated = attributes[:'last_updated']
      end

      if attributes.key?(:'max_duration')
        self.max_duration = attributes[:'max_duration']
      end

      if attributes.key?(:'max_file_size')
        self.max_file_size = attributes[:'max_file_size']
      end

      if attributes.key?(:'metadata')
        if (value = attributes[:'metadata']).is_a?(Array)
          self.metadata = value
        end
      end

      if attributes.key?(:'pause_duration')
        self.pause_duration = attributes[:'pause_duration']
      end

      if attributes.key?(:'policy_setting')
        if (value = attributes[:'policy_setting']).is_a?(Array)
          self.policy_setting = value
        end
      end

      if attributes.key?(:'preemption_priority')
        self.preemption_priority = attributes[:'preemption_priority']
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

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'sensor_ml_level_detection')
        self.sensor_ml_level_detection = attributes[:'sensor_ml_level_detection']
      end

      if attributes.key?(:'sensor_ml_level_prevention')
        self.sensor_ml_level_prevention = attributes[:'sensor_ml_level_prevention']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @deleted.nil?
        invalid_properties.push('invalid value for "deleted", deleted cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @deleted.nil?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cid == o.cid &&
          cloud_ml_level_detection == o.cloud_ml_level_detection &&
          cloud_ml_level_prevention == o.cloud_ml_level_prevention &&
          cpu_priority == o.cpu_priority &&
          created_by == o.created_by &&
          created_on == o.created_on &&
          deleted == o.deleted &&
          description == o.description &&
          endpoint_notification == o.endpoint_notification &&
          file_paths == o.file_paths &&
          host_groups == o.host_groups &&
          hosts == o.hosts &&
          id == o.id &&
          initiated_from == o.initiated_from &&
          last_updated == o.last_updated &&
          max_duration == o.max_duration &&
          max_file_size == o.max_file_size &&
          metadata == o.metadata &&
          pause_duration == o.pause_duration &&
          policy_setting == o.policy_setting &&
          preemption_priority == o.preemption_priority &&
          quarantine == o.quarantine &&
          scan_exclusions == o.scan_exclusions &&
          scan_inclusions == o.scan_inclusions &&
          schedule == o.schedule &&
          sensor_ml_level_detection == o.sensor_ml_level_detection &&
          sensor_ml_level_prevention == o.sensor_ml_level_prevention &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cid, cloud_ml_level_detection, cloud_ml_level_prevention, cpu_priority, created_by, created_on, deleted, description, endpoint_notification, file_paths, host_groups, hosts, id, initiated_from, last_updated, max_duration, max_file_size, metadata, pause_duration, policy_setting, preemption_priority, quarantine, scan_exclusions, scan_inclusions, schedule, sensor_ml_level_detection, sensor_ml_level_prevention, status].hash
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
