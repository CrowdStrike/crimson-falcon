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
  class RulegroupsRule
    attr_accessor :content_files

    attr_accessor :content_registry_values

    attr_accessor :created_timestamp

    attr_accessor :depth

    attr_accessor :description

    attr_accessor :enable_content_capture

    attr_accessor :exclude

    attr_accessor :exclude_processes

    attr_accessor :exclude_users

    attr_accessor :id

    attr_accessor :include

    attr_accessor :include_processes

    attr_accessor :include_users

    attr_accessor :modified_timestamp

    attr_accessor :path

    attr_accessor :precedence

    attr_accessor :rule_group_id

    attr_accessor :severity

    attr_accessor :type

    attr_accessor :watch_attributes_directory_changes

    attr_accessor :watch_attributes_file_changes

    attr_accessor :watch_create_directory_changes

    attr_accessor :watch_create_file_changes

    attr_accessor :watch_create_key_changes

    attr_accessor :watch_delete_directory_changes

    attr_accessor :watch_delete_file_changes

    attr_accessor :watch_delete_key_changes

    attr_accessor :watch_delete_value_changes

    attr_accessor :watch_permissions_directory_changes

    attr_accessor :watch_permissions_file_changes

    attr_accessor :watch_rename_directory_changes

    attr_accessor :watch_rename_file_changes

    attr_accessor :watch_rename_key_changes

    attr_accessor :watch_set_value_changes

    attr_accessor :watch_write_file_changes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'content_files' => :'content_files',
        :'content_registry_values' => :'content_registry_values',
        :'created_timestamp' => :'created_timestamp',
        :'depth' => :'depth',
        :'description' => :'description',
        :'enable_content_capture' => :'enable_content_capture',
        :'exclude' => :'exclude',
        :'exclude_processes' => :'exclude_processes',
        :'exclude_users' => :'exclude_users',
        :'id' => :'id',
        :'include' => :'include',
        :'include_processes' => :'include_processes',
        :'include_users' => :'include_users',
        :'modified_timestamp' => :'modified_timestamp',
        :'path' => :'path',
        :'precedence' => :'precedence',
        :'rule_group_id' => :'rule_group_id',
        :'severity' => :'severity',
        :'type' => :'type',
        :'watch_attributes_directory_changes' => :'watch_attributes_directory_changes',
        :'watch_attributes_file_changes' => :'watch_attributes_file_changes',
        :'watch_create_directory_changes' => :'watch_create_directory_changes',
        :'watch_create_file_changes' => :'watch_create_file_changes',
        :'watch_create_key_changes' => :'watch_create_key_changes',
        :'watch_delete_directory_changes' => :'watch_delete_directory_changes',
        :'watch_delete_file_changes' => :'watch_delete_file_changes',
        :'watch_delete_key_changes' => :'watch_delete_key_changes',
        :'watch_delete_value_changes' => :'watch_delete_value_changes',
        :'watch_permissions_directory_changes' => :'watch_permissions_directory_changes',
        :'watch_permissions_file_changes' => :'watch_permissions_file_changes',
        :'watch_rename_directory_changes' => :'watch_rename_directory_changes',
        :'watch_rename_file_changes' => :'watch_rename_file_changes',
        :'watch_rename_key_changes' => :'watch_rename_key_changes',
        :'watch_set_value_changes' => :'watch_set_value_changes',
        :'watch_write_file_changes' => :'watch_write_file_changes'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'content_files' => :'Array<String>',
        :'content_registry_values' => :'Array<String>',
        :'created_timestamp' => :'String',
        :'depth' => :'String',
        :'description' => :'String',
        :'enable_content_capture' => :'Boolean',
        :'exclude' => :'String',
        :'exclude_processes' => :'String',
        :'exclude_users' => :'String',
        :'id' => :'String',
        :'include' => :'String',
        :'include_processes' => :'String',
        :'include_users' => :'String',
        :'modified_timestamp' => :'String',
        :'path' => :'String',
        :'precedence' => :'Integer',
        :'rule_group_id' => :'String',
        :'severity' => :'String',
        :'type' => :'String',
        :'watch_attributes_directory_changes' => :'Boolean',
        :'watch_attributes_file_changes' => :'Boolean',
        :'watch_create_directory_changes' => :'Boolean',
        :'watch_create_file_changes' => :'Boolean',
        :'watch_create_key_changes' => :'Boolean',
        :'watch_delete_directory_changes' => :'Boolean',
        :'watch_delete_file_changes' => :'Boolean',
        :'watch_delete_key_changes' => :'Boolean',
        :'watch_delete_value_changes' => :'Boolean',
        :'watch_permissions_directory_changes' => :'Boolean',
        :'watch_permissions_file_changes' => :'Boolean',
        :'watch_rename_directory_changes' => :'Boolean',
        :'watch_rename_file_changes' => :'Boolean',
        :'watch_rename_key_changes' => :'Boolean',
        :'watch_set_value_changes' => :'Boolean',
        :'watch_write_file_changes' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::RulegroupsRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::RulegroupsRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'content_files')
        if (value = attributes[:'content_files']).is_a?(Array)
          self.content_files = value
        end
      end

      if attributes.key?(:'content_registry_values')
        if (value = attributes[:'content_registry_values']).is_a?(Array)
          self.content_registry_values = value
        end
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'depth')
        self.depth = attributes[:'depth']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'enable_content_capture')
        self.enable_content_capture = attributes[:'enable_content_capture']
      end

      if attributes.key?(:'exclude')
        self.exclude = attributes[:'exclude']
      end

      if attributes.key?(:'exclude_processes')
        self.exclude_processes = attributes[:'exclude_processes']
      end

      if attributes.key?(:'exclude_users')
        self.exclude_users = attributes[:'exclude_users']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'include')
        self.include = attributes[:'include']
      end

      if attributes.key?(:'include_processes')
        self.include_processes = attributes[:'include_processes']
      end

      if attributes.key?(:'include_users')
        self.include_users = attributes[:'include_users']
      end

      if attributes.key?(:'modified_timestamp')
        self.modified_timestamp = attributes[:'modified_timestamp']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'precedence')
        self.precedence = attributes[:'precedence']
      end

      if attributes.key?(:'rule_group_id')
        self.rule_group_id = attributes[:'rule_group_id']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'watch_attributes_directory_changes')
        self.watch_attributes_directory_changes = attributes[:'watch_attributes_directory_changes']
      end

      if attributes.key?(:'watch_attributes_file_changes')
        self.watch_attributes_file_changes = attributes[:'watch_attributes_file_changes']
      end

      if attributes.key?(:'watch_create_directory_changes')
        self.watch_create_directory_changes = attributes[:'watch_create_directory_changes']
      end

      if attributes.key?(:'watch_create_file_changes')
        self.watch_create_file_changes = attributes[:'watch_create_file_changes']
      end

      if attributes.key?(:'watch_create_key_changes')
        self.watch_create_key_changes = attributes[:'watch_create_key_changes']
      end

      if attributes.key?(:'watch_delete_directory_changes')
        self.watch_delete_directory_changes = attributes[:'watch_delete_directory_changes']
      end

      if attributes.key?(:'watch_delete_file_changes')
        self.watch_delete_file_changes = attributes[:'watch_delete_file_changes']
      end

      if attributes.key?(:'watch_delete_key_changes')
        self.watch_delete_key_changes = attributes[:'watch_delete_key_changes']
      end

      if attributes.key?(:'watch_delete_value_changes')
        self.watch_delete_value_changes = attributes[:'watch_delete_value_changes']
      end

      if attributes.key?(:'watch_permissions_directory_changes')
        self.watch_permissions_directory_changes = attributes[:'watch_permissions_directory_changes']
      end

      if attributes.key?(:'watch_permissions_file_changes')
        self.watch_permissions_file_changes = attributes[:'watch_permissions_file_changes']
      end

      if attributes.key?(:'watch_rename_directory_changes')
        self.watch_rename_directory_changes = attributes[:'watch_rename_directory_changes']
      end

      if attributes.key?(:'watch_rename_file_changes')
        self.watch_rename_file_changes = attributes[:'watch_rename_file_changes']
      end

      if attributes.key?(:'watch_rename_key_changes')
        self.watch_rename_key_changes = attributes[:'watch_rename_key_changes']
      end

      if attributes.key?(:'watch_set_value_changes')
        self.watch_set_value_changes = attributes[:'watch_set_value_changes']
      end

      if attributes.key?(:'watch_write_file_changes')
        self.watch_write_file_changes = attributes[:'watch_write_file_changes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @depth.nil?
        invalid_properties.push('invalid value for "depth", depth cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @include.nil?
        invalid_properties.push('invalid value for "include", include cannot be nil.')
      end

      if @path.nil?
        invalid_properties.push('invalid value for "path", path cannot be nil.')
      end

      if @rule_group_id.nil?
        invalid_properties.push('invalid value for "rule_group_id", rule_group_id cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @depth.nil?
      return false if @id.nil?
      return false if @include.nil?
      return false if @path.nil?
      return false if @rule_group_id.nil?
      return false if @severity.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          content_files == o.content_files &&
          content_registry_values == o.content_registry_values &&
          created_timestamp == o.created_timestamp &&
          depth == o.depth &&
          description == o.description &&
          enable_content_capture == o.enable_content_capture &&
          exclude == o.exclude &&
          exclude_processes == o.exclude_processes &&
          exclude_users == o.exclude_users &&
          id == o.id &&
          include == o.include &&
          include_processes == o.include_processes &&
          include_users == o.include_users &&
          modified_timestamp == o.modified_timestamp &&
          path == o.path &&
          precedence == o.precedence &&
          rule_group_id == o.rule_group_id &&
          severity == o.severity &&
          type == o.type &&
          watch_attributes_directory_changes == o.watch_attributes_directory_changes &&
          watch_attributes_file_changes == o.watch_attributes_file_changes &&
          watch_create_directory_changes == o.watch_create_directory_changes &&
          watch_create_file_changes == o.watch_create_file_changes &&
          watch_create_key_changes == o.watch_create_key_changes &&
          watch_delete_directory_changes == o.watch_delete_directory_changes &&
          watch_delete_file_changes == o.watch_delete_file_changes &&
          watch_delete_key_changes == o.watch_delete_key_changes &&
          watch_delete_value_changes == o.watch_delete_value_changes &&
          watch_permissions_directory_changes == o.watch_permissions_directory_changes &&
          watch_permissions_file_changes == o.watch_permissions_file_changes &&
          watch_rename_directory_changes == o.watch_rename_directory_changes &&
          watch_rename_file_changes == o.watch_rename_file_changes &&
          watch_rename_key_changes == o.watch_rename_key_changes &&
          watch_set_value_changes == o.watch_set_value_changes &&
          watch_write_file_changes == o.watch_write_file_changes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [content_files, content_registry_values, created_timestamp, depth, description, enable_content_capture, exclude, exclude_processes, exclude_users, id, include, include_processes, include_users, modified_timestamp, path, precedence, rule_group_id, severity, type, watch_attributes_directory_changes, watch_attributes_file_changes, watch_create_directory_changes, watch_create_file_changes, watch_create_key_changes, watch_delete_directory_changes, watch_delete_file_changes, watch_delete_key_changes, watch_delete_value_changes, watch_permissions_directory_changes, watch_permissions_file_changes, watch_rename_directory_changes, watch_rename_file_changes, watch_rename_key_changes, watch_set_value_changes, watch_write_file_changes].hash
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