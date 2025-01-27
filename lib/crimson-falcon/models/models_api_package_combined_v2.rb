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
  class ModelsAPIPackageCombinedV2
    attr_accessor :ai_related

    attr_accessor :all_images

    attr_accessor :cid

    attr_accessor :cveid

    attr_accessor :fix_resolution

    attr_accessor :license

    attr_accessor :package_name_version

    attr_accessor :running_images

    attr_accessor :severity

    attr_accessor :type

    attr_accessor :vulnerability_description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ai_related' => :'ai_related',
        :'all_images' => :'all_images',
        :'cid' => :'cid',
        :'cveid' => :'cveid',
        :'fix_resolution' => :'fix_resolution',
        :'license' => :'license',
        :'package_name_version' => :'package_name_version',
        :'running_images' => :'running_images',
        :'severity' => :'severity',
        :'type' => :'type',
        :'vulnerability_description' => :'vulnerability_description'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ai_related' => :'Boolean',
        :'all_images' => :'Integer',
        :'cid' => :'String',
        :'cveid' => :'String',
        :'fix_resolution' => :'Array<String>',
        :'license' => :'String',
        :'package_name_version' => :'String',
        :'running_images' => :'Integer',
        :'severity' => :'String',
        :'type' => :'String',
        :'vulnerability_description' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsAPIPackageCombinedV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsAPIPackageCombinedV2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ai_related')
        self.ai_related = attributes[:'ai_related']
      end

      if attributes.key?(:'all_images')
        self.all_images = attributes[:'all_images']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cveid')
        self.cveid = attributes[:'cveid']
      end

      if attributes.key?(:'fix_resolution')
        if (value = attributes[:'fix_resolution']).is_a?(Array)
          self.fix_resolution = value
        end
      end

      if attributes.key?(:'license')
        self.license = attributes[:'license']
      end

      if attributes.key?(:'package_name_version')
        self.package_name_version = attributes[:'package_name_version']
      end

      if attributes.key?(:'running_images')
        self.running_images = attributes[:'running_images']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'vulnerability_description')
        self.vulnerability_description = attributes[:'vulnerability_description']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ai_related.nil?
        invalid_properties.push('invalid value for "ai_related", ai_related cannot be nil.')
      end

      if @all_images.nil?
        invalid_properties.push('invalid value for "all_images", all_images cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @cveid.nil?
        invalid_properties.push('invalid value for "cveid", cveid cannot be nil.')
      end

      if @fix_resolution.nil?
        invalid_properties.push('invalid value for "fix_resolution", fix_resolution cannot be nil.')
      end

      if @license.nil?
        invalid_properties.push('invalid value for "license", license cannot be nil.')
      end

      if @package_name_version.nil?
        invalid_properties.push('invalid value for "package_name_version", package_name_version cannot be nil.')
      end

      if @running_images.nil?
        invalid_properties.push('invalid value for "running_images", running_images cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @vulnerability_description.nil?
        invalid_properties.push('invalid value for "vulnerability_description", vulnerability_description cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ai_related.nil?
      return false if @all_images.nil?
      return false if @cid.nil?
      return false if @cveid.nil?
      return false if @fix_resolution.nil?
      return false if @license.nil?
      return false if @package_name_version.nil?
      return false if @running_images.nil?
      return false if @severity.nil?
      return false if @type.nil?
      return false if @vulnerability_description.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ai_related == o.ai_related &&
          all_images == o.all_images &&
          cid == o.cid &&
          cveid == o.cveid &&
          fix_resolution == o.fix_resolution &&
          license == o.license &&
          package_name_version == o.package_name_version &&
          running_images == o.running_images &&
          severity == o.severity &&
          type == o.type &&
          vulnerability_description == o.vulnerability_description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ai_related, all_images, cid, cveid, fix_resolution, license, package_name_version, running_images, severity, type, vulnerability_description].hash
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
