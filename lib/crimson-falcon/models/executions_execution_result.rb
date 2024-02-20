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
  class ExecutionsExecutionResult
    # Details for the result of each activity node.
    attr_accessor :activities

    # Populated when the execution origin is from a sub model.
    attr_accessor :ancestor_executions

    # Unique id of the workflow the execution is associated with.
    attr_accessor :definition_id

    # Version of the definition that executed.
    attr_accessor :definition_version

    # Timestamp of when the execution completed. Only present when status is an end state.
    attr_accessor :end_timestamp

    # Unique id generated for the execution.
    attr_accessor :execution_id

    # Details for the results of each loop in the workflow definition.
    attr_accessor :loops

    # A boolean value indicating whether the failed workflow execution is retryable
    attr_accessor :retryable

    # Timestamp of when the execution first started.
    attr_accessor :start_timestamp

    # Overall status for the execution.
    attr_accessor :status

    attr_accessor :trigger

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activities' => :'activities',
        :'ancestor_executions' => :'ancestor_executions',
        :'definition_id' => :'definition_id',
        :'definition_version' => :'definition_version',
        :'end_timestamp' => :'end_timestamp',
        :'execution_id' => :'execution_id',
        :'loops' => :'loops',
        :'retryable' => :'retryable',
        :'start_timestamp' => :'start_timestamp',
        :'status' => :'status',
        :'trigger' => :'trigger'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'activities' => :'Array<ExecutionsActivityExecutionResult>',
        :'ancestor_executions' => :'Array<ExecutionsAncestorExecution>',
        :'definition_id' => :'String',
        :'definition_version' => :'Integer',
        :'end_timestamp' => :'Time',
        :'execution_id' => :'String',
        :'loops' => :'Array<ExecutionsLoopResult>',
        :'retryable' => :'Boolean',
        :'start_timestamp' => :'Time',
        :'status' => :'String',
        :'trigger' => :'ExecutionsTriggerResult'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ExecutionsExecutionResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ExecutionsExecutionResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'activities')
        if (value = attributes[:'activities']).is_a?(Array)
          self.activities = value
        end
      end

      if attributes.key?(:'ancestor_executions')
        if (value = attributes[:'ancestor_executions']).is_a?(Array)
          self.ancestor_executions = value
        end
      end

      if attributes.key?(:'definition_id')
        self.definition_id = attributes[:'definition_id']
      end

      if attributes.key?(:'definition_version')
        self.definition_version = attributes[:'definition_version']
      end

      if attributes.key?(:'end_timestamp')
        self.end_timestamp = attributes[:'end_timestamp']
      end

      if attributes.key?(:'execution_id')
        self.execution_id = attributes[:'execution_id']
      end

      if attributes.key?(:'loops')
        if (value = attributes[:'loops']).is_a?(Array)
          self.loops = value
        end
      end

      if attributes.key?(:'retryable')
        self.retryable = attributes[:'retryable']
      end

      if attributes.key?(:'start_timestamp')
        self.start_timestamp = attributes[:'start_timestamp']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'trigger')
        self.trigger = attributes[:'trigger']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @activities.nil?
        invalid_properties.push('invalid value for "activities", activities cannot be nil.')
      end

      if @ancestor_executions.nil?
        invalid_properties.push('invalid value for "ancestor_executions", ancestor_executions cannot be nil.')
      end

      if @definition_id.nil?
        invalid_properties.push('invalid value for "definition_id", definition_id cannot be nil.')
      end

      if @definition_version.nil?
        invalid_properties.push('invalid value for "definition_version", definition_version cannot be nil.')
      end

      if @execution_id.nil?
        invalid_properties.push('invalid value for "execution_id", execution_id cannot be nil.')
      end

      if @loops.nil?
        invalid_properties.push('invalid value for "loops", loops cannot be nil.')
      end

      if @retryable.nil?
        invalid_properties.push('invalid value for "retryable", retryable cannot be nil.')
      end

      if @start_timestamp.nil?
        invalid_properties.push('invalid value for "start_timestamp", start_timestamp cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @trigger.nil?
        invalid_properties.push('invalid value for "trigger", trigger cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @activities.nil?
      return false if @ancestor_executions.nil?
      return false if @definition_id.nil?
      return false if @definition_version.nil?
      return false if @execution_id.nil?
      return false if @loops.nil?
      return false if @retryable.nil?
      return false if @start_timestamp.nil?
      return false if @status.nil?
      return false if @trigger.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activities == o.activities &&
          ancestor_executions == o.ancestor_executions &&
          definition_id == o.definition_id &&
          definition_version == o.definition_version &&
          end_timestamp == o.end_timestamp &&
          execution_id == o.execution_id &&
          loops == o.loops &&
          retryable == o.retryable &&
          start_timestamp == o.start_timestamp &&
          status == o.status &&
          trigger == o.trigger
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [activities, ancestor_executions, definition_id, definition_version, end_timestamp, execution_id, loops, retryable, start_timestamp, status, trigger].hash
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