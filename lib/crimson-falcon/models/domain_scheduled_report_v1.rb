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
  class DomainScheduledReportV1
    attr_accessor :can_write

    attr_accessor :created_on

    attr_accessor :customer_id

    attr_accessor :description

    attr_accessor :expiration_on

    attr_accessor :id

    attr_accessor :last_execution

    attr_accessor :last_updated_on

    attr_accessor :name

    attr_accessor :next_execution_on

    attr_accessor :notifications

    attr_accessor :report_metadata

    attr_accessor :report_params

    attr_accessor :schedule

    attr_accessor :shared_with

    attr_accessor :start_on

    attr_accessor :status

    attr_accessor :stop_on

    attr_accessor :tracking

    attr_accessor :trigger_reference

    attr_accessor :type

    attr_accessor :user_id

    attr_accessor :user_uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'can_write' => :'can_write',
        :'created_on' => :'created_on',
        :'customer_id' => :'customer_id',
        :'description' => :'description',
        :'expiration_on' => :'expiration_on',
        :'id' => :'id',
        :'last_execution' => :'last_execution',
        :'last_updated_on' => :'last_updated_on',
        :'name' => :'name',
        :'next_execution_on' => :'next_execution_on',
        :'notifications' => :'notifications',
        :'report_metadata' => :'report_metadata',
        :'report_params' => :'report_params',
        :'schedule' => :'schedule',
        :'shared_with' => :'shared_with',
        :'start_on' => :'start_on',
        :'status' => :'status',
        :'stop_on' => :'stop_on',
        :'tracking' => :'tracking',
        :'trigger_reference' => :'trigger_reference',
        :'type' => :'type',
        :'user_id' => :'user_id',
        :'user_uuid' => :'user_uuid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'can_write' => :'Boolean',
        :'created_on' => :'Time',
        :'customer_id' => :'String',
        :'description' => :'String',
        :'expiration_on' => :'Time',
        :'id' => :'String',
        :'last_execution' => :'DomainReportExecutionSummaryV1',
        :'last_updated_on' => :'Time',
        :'name' => :'String',
        :'next_execution_on' => :'Time',
        :'notifications' => :'Array<DomainNotifications>',
        :'report_metadata' => :'DomainReportMetadata',
        :'report_params' => :'DomainReportParams',
        :'schedule' => :'DomainSchedule',
        :'shared_with' => :'Array<String>',
        :'start_on' => :'Time',
        :'status' => :'String',
        :'stop_on' => :'Time',
        :'tracking' => :'String',
        :'trigger_reference' => :'String',
        :'type' => :'String',
        :'user_id' => :'String',
        :'user_uuid' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainScheduledReportV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainScheduledReportV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'can_write')
        self.can_write = attributes[:'can_write']
      end

      if attributes.key?(:'created_on')
        self.created_on = attributes[:'created_on']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'expiration_on')
        self.expiration_on = attributes[:'expiration_on']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_execution')
        self.last_execution = attributes[:'last_execution']
      end

      if attributes.key?(:'last_updated_on')
        self.last_updated_on = attributes[:'last_updated_on']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'next_execution_on')
        self.next_execution_on = attributes[:'next_execution_on']
      end

      if attributes.key?(:'notifications')
        if (value = attributes[:'notifications']).is_a?(Array)
          self.notifications = value
        end
      end

      if attributes.key?(:'report_metadata')
        self.report_metadata = attributes[:'report_metadata']
      end

      if attributes.key?(:'report_params')
        self.report_params = attributes[:'report_params']
      end

      if attributes.key?(:'schedule')
        self.schedule = attributes[:'schedule']
      end

      if attributes.key?(:'shared_with')
        if (value = attributes[:'shared_with']).is_a?(Array)
          self.shared_with = value
        end
      end

      if attributes.key?(:'start_on')
        self.start_on = attributes[:'start_on']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'stop_on')
        self.stop_on = attributes[:'stop_on']
      end

      if attributes.key?(:'tracking')
        self.tracking = attributes[:'tracking']
      end

      if attributes.key?(:'trigger_reference')
        self.trigger_reference = attributes[:'trigger_reference']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'user_uuid')
        self.user_uuid = attributes[:'user_uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_on.nil?
        invalid_properties.push('invalid value for "created_on", created_on cannot be nil.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @last_updated_on.nil?
        invalid_properties.push('invalid value for "last_updated_on", last_updated_on cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @notifications.nil?
        invalid_properties.push('invalid value for "notifications", notifications cannot be nil.')
      end

      if @report_params.nil?
        invalid_properties.push('invalid value for "report_params", report_params cannot be nil.')
      end

      if @schedule.nil?
        invalid_properties.push('invalid value for "schedule", schedule cannot be nil.')
      end

      if @shared_with.nil?
        invalid_properties.push('invalid value for "shared_with", shared_with cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @user_uuid.nil?
        invalid_properties.push('invalid value for "user_uuid", user_uuid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_on.nil?
      return false if @customer_id.nil?
      return false if @description.nil?
      return false if @id.nil?
      return false if @last_updated_on.nil?
      return false if @name.nil?
      return false if @notifications.nil?
      return false if @report_params.nil?
      return false if @schedule.nil?
      return false if @shared_with.nil?
      return false if @status.nil?
      return false if @type.nil?
      return false if @user_id.nil?
      return false if @user_uuid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          can_write == o.can_write &&
          created_on == o.created_on &&
          customer_id == o.customer_id &&
          description == o.description &&
          expiration_on == o.expiration_on &&
          id == o.id &&
          last_execution == o.last_execution &&
          last_updated_on == o.last_updated_on &&
          name == o.name &&
          next_execution_on == o.next_execution_on &&
          notifications == o.notifications &&
          report_metadata == o.report_metadata &&
          report_params == o.report_params &&
          schedule == o.schedule &&
          shared_with == o.shared_with &&
          start_on == o.start_on &&
          status == o.status &&
          stop_on == o.stop_on &&
          tracking == o.tracking &&
          trigger_reference == o.trigger_reference &&
          type == o.type &&
          user_id == o.user_id &&
          user_uuid == o.user_uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [can_write, created_on, customer_id, description, expiration_on, id, last_execution, last_updated_on, name, next_execution_on, notifications, report_metadata, report_params, schedule, shared_with, start_on, status, stop_on, tracking, trigger_reference, type, user_id, user_uuid].hash
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
