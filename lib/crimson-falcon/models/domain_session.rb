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

=end

require 'date'
require 'time'

module Falcon
  class DomainSession
    attr_accessor :cid

    attr_accessor :cloud_request_ids

    attr_accessor :commands

    attr_accessor :commands_queued

    attr_accessor :created_at

    attr_accessor :deleted_at

    attr_accessor :device_details

    attr_accessor :device_id

    attr_accessor :duration

    attr_accessor :hostname

    attr_accessor :id

    attr_accessor :logs

    attr_accessor :offline_queued

    attr_accessor :origin

    attr_accessor :platform_id

    attr_accessor :platform_name

    attr_accessor :pwd

    attr_accessor :updated_at

    attr_accessor :user_id

    attr_accessor :user_uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cid' => :'cid',
        :'cloud_request_ids' => :'cloud_request_ids',
        :'commands' => :'commands',
        :'commands_queued' => :'commands_queued',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'device_details' => :'device_details',
        :'device_id' => :'device_id',
        :'duration' => :'duration',
        :'hostname' => :'hostname',
        :'id' => :'id',
        :'logs' => :'logs',
        :'offline_queued' => :'offline_queued',
        :'origin' => :'origin',
        :'platform_id' => :'platform_id',
        :'platform_name' => :'platform_name',
        :'pwd' => :'pwd',
        :'updated_at' => :'updated_at',
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
        :'cid' => :'String',
        :'cloud_request_ids' => :'Array<String>',
        :'commands' => :'Hash<String, Object>',
        :'commands_queued' => :'Boolean',
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'device_details' => :'DomainDevice',
        :'device_id' => :'String',
        :'duration' => :'Float',
        :'hostname' => :'String',
        :'id' => :'String',
        :'logs' => :'Array<ModelSessionLog>',
        :'offline_queued' => :'Boolean',
        :'origin' => :'String',
        :'platform_id' => :'Integer',
        :'platform_name' => :'String',
        :'pwd' => :'String',
        :'updated_at' => :'Time',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainSession` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainSession`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cloud_request_ids')
        if (value = attributes[:'cloud_request_ids']).is_a?(Array)
          self.cloud_request_ids = value
        end
      end

      if attributes.key?(:'commands')
        if (value = attributes[:'commands']).is_a?(Hash)
          self.commands = value
        end
      end

      if attributes.key?(:'commands_queued')
        self.commands_queued = attributes[:'commands_queued']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'device_details')
        self.device_details = attributes[:'device_details']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'logs')
        if (value = attributes[:'logs']).is_a?(Array)
          self.logs = value
        end
      end

      if attributes.key?(:'offline_queued')
        self.offline_queued = attributes[:'offline_queued']
      end

      if attributes.key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.key?(:'platform_id')
        self.platform_id = attributes[:'platform_id']
      end

      if attributes.key?(:'platform_name')
        self.platform_name = attributes[:'platform_name']
      end

      if attributes.key?(:'pwd')
        self.pwd = attributes[:'pwd']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @cloud_request_ids.nil?
        invalid_properties.push('invalid value for "cloud_request_ids", cloud_request_ids cannot be nil.')
      end

      if @commands.nil?
        invalid_properties.push('invalid value for "commands", commands cannot be nil.')
      end

      if @commands_queued.nil?
        invalid_properties.push('invalid value for "commands_queued", commands_queued cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @deleted_at.nil?
        invalid_properties.push('invalid value for "deleted_at", deleted_at cannot be nil.')
      end

      if @device_details.nil?
        invalid_properties.push('invalid value for "device_details", device_details cannot be nil.')
      end

      if @device_id.nil?
        invalid_properties.push('invalid value for "device_id", device_id cannot be nil.')
      end

      if @duration.nil?
        invalid_properties.push('invalid value for "duration", duration cannot be nil.')
      end

      if @hostname.nil?
        invalid_properties.push('invalid value for "hostname", hostname cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @logs.nil?
        invalid_properties.push('invalid value for "logs", logs cannot be nil.')
      end

      if @offline_queued.nil?
        invalid_properties.push('invalid value for "offline_queued", offline_queued cannot be nil.')
      end

      if @origin.nil?
        invalid_properties.push('invalid value for "origin", origin cannot be nil.')
      end

      if @platform_id.nil?
        invalid_properties.push('invalid value for "platform_id", platform_id cannot be nil.')
      end

      if @platform_name.nil?
        invalid_properties.push('invalid value for "platform_name", platform_name cannot be nil.')
      end

      if @pwd.nil?
        invalid_properties.push('invalid value for "pwd", pwd cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
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
      return false if @cid.nil?
      return false if @cloud_request_ids.nil?
      return false if @commands.nil?
      return false if @commands_queued.nil?
      return false if @created_at.nil?
      return false if @deleted_at.nil?
      return false if @device_details.nil?
      return false if @device_id.nil?
      return false if @duration.nil?
      return false if @hostname.nil?
      return false if @id.nil?
      return false if @logs.nil?
      return false if @offline_queued.nil?
      return false if @origin.nil?
      return false if @platform_id.nil?
      return false if @platform_name.nil?
      return false if @pwd.nil?
      return false if @updated_at.nil?
      return false if @user_id.nil?
      return false if @user_uuid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cid == o.cid &&
          cloud_request_ids == o.cloud_request_ids &&
          commands == o.commands &&
          commands_queued == o.commands_queued &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          device_details == o.device_details &&
          device_id == o.device_id &&
          duration == o.duration &&
          hostname == o.hostname &&
          id == o.id &&
          logs == o.logs &&
          offline_queued == o.offline_queued &&
          origin == o.origin &&
          platform_id == o.platform_id &&
          platform_name == o.platform_name &&
          pwd == o.pwd &&
          updated_at == o.updated_at &&
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
      [cid, cloud_request_ids, commands, commands_queued, created_at, deleted_at, device_details, device_id, duration, hostname, id, logs, offline_queued, origin, platform_id, platform_name, pwd, updated_at, user_id, user_uuid].hash
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
