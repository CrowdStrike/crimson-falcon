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
  class ModelsAPICustomerAndImage
    attr_accessor :base_image_id

    attr_accessor :base_os

    attr_accessor :base_os_version

    attr_accessor :cid

    attr_accessor :config

    attr_accessor :created_at

    attr_accessor :crowdstrike_user

    attr_accessor :digest

    attr_accessor :eol_date

    attr_accessor :first_scanned

    attr_accessor :image_id

    attr_accessor :image_scanning_active

    attr_accessor :image_size

    attr_accessor :is_base_image

    attr_accessor :registry

    attr_accessor :repository

    attr_accessor :source

    attr_accessor :source_base_image

    attr_accessor :tag

    attr_accessor :updated_at

    attr_accessor :uuid

    attr_accessor :warning

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'base_image_id' => :'base_image_id',
        :'base_os' => :'base_os',
        :'base_os_version' => :'base_os_version',
        :'cid' => :'cid',
        :'config' => :'config',
        :'created_at' => :'created_at',
        :'crowdstrike_user' => :'crowdstrike_user',
        :'digest' => :'digest',
        :'eol_date' => :'eol_date',
        :'first_scanned' => :'first_scanned',
        :'image_id' => :'image_id',
        :'image_scanning_active' => :'image_scanning_active',
        :'image_size' => :'image_size',
        :'is_base_image' => :'is_base_image',
        :'registry' => :'registry',
        :'repository' => :'repository',
        :'source' => :'source',
        :'source_base_image' => :'source_base_image',
        :'tag' => :'tag',
        :'updated_at' => :'updated_at',
        :'uuid' => :'uuid',
        :'warning' => :'warning'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'base_image_id' => :'String',
        :'base_os' => :'String',
        :'base_os_version' => :'String',
        :'cid' => :'String',
        :'config' => :'ModelsLightWeightConfig',
        :'created_at' => :'String',
        :'crowdstrike_user' => :'String',
        :'digest' => :'String',
        :'eol_date' => :'String',
        :'first_scanned' => :'String',
        :'image_id' => :'String',
        :'image_scanning_active' => :'Boolean',
        :'image_size' => :'Integer',
        :'is_base_image' => :'Boolean',
        :'registry' => :'String',
        :'repository' => :'String',
        :'source' => :'String',
        :'source_base_image' => :'ModelsImageDetails',
        :'tag' => :'String',
        :'updated_at' => :'String',
        :'uuid' => :'String',
        :'warning' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsAPICustomerAndImage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsAPICustomerAndImage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'base_image_id')
        self.base_image_id = attributes[:'base_image_id']
      end

      if attributes.key?(:'base_os')
        self.base_os = attributes[:'base_os']
      end

      if attributes.key?(:'base_os_version')
        self.base_os_version = attributes[:'base_os_version']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'config')
        self.config = attributes[:'config']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'crowdstrike_user')
        self.crowdstrike_user = attributes[:'crowdstrike_user']
      end

      if attributes.key?(:'digest')
        self.digest = attributes[:'digest']
      end

      if attributes.key?(:'eol_date')
        self.eol_date = attributes[:'eol_date']
      end

      if attributes.key?(:'first_scanned')
        self.first_scanned = attributes[:'first_scanned']
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'image_scanning_active')
        self.image_scanning_active = attributes[:'image_scanning_active']
      end

      if attributes.key?(:'image_size')
        self.image_size = attributes[:'image_size']
      end

      if attributes.key?(:'is_base_image')
        self.is_base_image = attributes[:'is_base_image']
      end

      if attributes.key?(:'registry')
        self.registry = attributes[:'registry']
      end

      if attributes.key?(:'repository')
        self.repository = attributes[:'repository']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'source_base_image')
        self.source_base_image = attributes[:'source_base_image']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.key?(:'warning')
        self.warning = attributes[:'warning']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @base_os.nil?
        invalid_properties.push('invalid value for "base_os", base_os cannot be nil.')
      end

      if @base_os_version.nil?
        invalid_properties.push('invalid value for "base_os_version", base_os_version cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @crowdstrike_user.nil?
        invalid_properties.push('invalid value for "crowdstrike_user", crowdstrike_user cannot be nil.')
      end

      if @digest.nil?
        invalid_properties.push('invalid value for "digest", digest cannot be nil.')
      end

      if @eol_date.nil?
        invalid_properties.push('invalid value for "eol_date", eol_date cannot be nil.')
      end

      if @first_scanned.nil?
        invalid_properties.push('invalid value for "first_scanned", first_scanned cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @image_scanning_active.nil?
        invalid_properties.push('invalid value for "image_scanning_active", image_scanning_active cannot be nil.')
      end

      if @image_size.nil?
        invalid_properties.push('invalid value for "image_size", image_size cannot be nil.')
      end

      if @is_base_image.nil?
        invalid_properties.push('invalid value for "is_base_image", is_base_image cannot be nil.')
      end

      if @registry.nil?
        invalid_properties.push('invalid value for "registry", registry cannot be nil.')
      end

      if @repository.nil?
        invalid_properties.push('invalid value for "repository", repository cannot be nil.')
      end

      if @source.nil?
        invalid_properties.push('invalid value for "source", source cannot be nil.')
      end

      if @source_base_image.nil?
        invalid_properties.push('invalid value for "source_base_image", source_base_image cannot be nil.')
      end

      if @tag.nil?
        invalid_properties.push('invalid value for "tag", tag cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @uuid.nil?
        invalid_properties.push('invalid value for "uuid", uuid cannot be nil.')
      end

      if @warning.nil?
        invalid_properties.push('invalid value for "warning", warning cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @base_os.nil?
      return false if @base_os_version.nil?
      return false if @cid.nil?
      return false if @created_at.nil?
      return false if @crowdstrike_user.nil?
      return false if @digest.nil?
      return false if @eol_date.nil?
      return false if @first_scanned.nil?
      return false if @image_id.nil?
      return false if @image_scanning_active.nil?
      return false if @image_size.nil?
      return false if @is_base_image.nil?
      return false if @registry.nil?
      return false if @repository.nil?
      return false if @source.nil?
      return false if @source_base_image.nil?
      return false if @tag.nil?
      return false if @updated_at.nil?
      return false if @uuid.nil?
      return false if @warning.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          base_image_id == o.base_image_id &&
          base_os == o.base_os &&
          base_os_version == o.base_os_version &&
          cid == o.cid &&
          config == o.config &&
          created_at == o.created_at &&
          crowdstrike_user == o.crowdstrike_user &&
          digest == o.digest &&
          eol_date == o.eol_date &&
          first_scanned == o.first_scanned &&
          image_id == o.image_id &&
          image_scanning_active == o.image_scanning_active &&
          image_size == o.image_size &&
          is_base_image == o.is_base_image &&
          registry == o.registry &&
          repository == o.repository &&
          source == o.source &&
          source_base_image == o.source_base_image &&
          tag == o.tag &&
          updated_at == o.updated_at &&
          uuid == o.uuid &&
          warning == o.warning
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [base_image_id, base_os, base_os_version, cid, config, created_at, crowdstrike_user, digest, eol_date, first_scanned, image_id, image_scanning_active, image_size, is_base_image, registry, repository, source, source_base_image, tag, updated_at, uuid, warning].hash
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
