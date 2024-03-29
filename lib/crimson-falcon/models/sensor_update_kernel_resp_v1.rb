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
  class SensorUpdateKernelRespV1
    attr_accessor :architecture

    attr_accessor :base_package_supported_sensor_versions

    attr_accessor :created_timestamp

    attr_accessor :distro

    attr_accessor :distro_version

    attr_accessor :flavor

    attr_accessor :id

    attr_accessor :modified_timestamp

    attr_accessor :release

    attr_accessor :vendor

    attr_accessor :version

    attr_accessor :ztl_module_supported_sensor_versions

    attr_accessor :ztl_supported_sensor_versions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'architecture' => :'architecture',
        :'base_package_supported_sensor_versions' => :'base_package_supported_sensor_versions',
        :'created_timestamp' => :'created_timestamp',
        :'distro' => :'distro',
        :'distro_version' => :'distro_version',
        :'flavor' => :'flavor',
        :'id' => :'id',
        :'modified_timestamp' => :'modified_timestamp',
        :'release' => :'release',
        :'vendor' => :'vendor',
        :'version' => :'version',
        :'ztl_module_supported_sensor_versions' => :'ztl_module_supported_sensor_versions',
        :'ztl_supported_sensor_versions' => :'ztl_supported_sensor_versions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'architecture' => :'String',
        :'base_package_supported_sensor_versions' => :'Array<String>',
        :'created_timestamp' => :'String',
        :'distro' => :'String',
        :'distro_version' => :'String',
        :'flavor' => :'String',
        :'id' => :'String',
        :'modified_timestamp' => :'String',
        :'release' => :'String',
        :'vendor' => :'String',
        :'version' => :'String',
        :'ztl_module_supported_sensor_versions' => :'Array<String>',
        :'ztl_supported_sensor_versions' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::SensorUpdateKernelRespV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::SensorUpdateKernelRespV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'architecture')
        self.architecture = attributes[:'architecture']
      end

      if attributes.key?(:'base_package_supported_sensor_versions')
        if (value = attributes[:'base_package_supported_sensor_versions']).is_a?(Array)
          self.base_package_supported_sensor_versions = value
        end
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'distro')
        self.distro = attributes[:'distro']
      end

      if attributes.key?(:'distro_version')
        self.distro_version = attributes[:'distro_version']
      end

      if attributes.key?(:'flavor')
        self.flavor = attributes[:'flavor']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'modified_timestamp')
        self.modified_timestamp = attributes[:'modified_timestamp']
      end

      if attributes.key?(:'release')
        self.release = attributes[:'release']
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'ztl_module_supported_sensor_versions')
        if (value = attributes[:'ztl_module_supported_sensor_versions']).is_a?(Array)
          self.ztl_module_supported_sensor_versions = value
        end
      end

      if attributes.key?(:'ztl_supported_sensor_versions')
        if (value = attributes[:'ztl_supported_sensor_versions']).is_a?(Array)
          self.ztl_supported_sensor_versions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @architecture.nil?
        invalid_properties.push('invalid value for "architecture", architecture cannot be nil.')
      end

      if @base_package_supported_sensor_versions.nil?
        invalid_properties.push('invalid value for "base_package_supported_sensor_versions", base_package_supported_sensor_versions cannot be nil.')
      end

      if @created_timestamp.nil?
        invalid_properties.push('invalid value for "created_timestamp", created_timestamp cannot be nil.')
      end

      if @distro.nil?
        invalid_properties.push('invalid value for "distro", distro cannot be nil.')
      end

      if @distro_version.nil?
        invalid_properties.push('invalid value for "distro_version", distro_version cannot be nil.')
      end

      if @flavor.nil?
        invalid_properties.push('invalid value for "flavor", flavor cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @modified_timestamp.nil?
        invalid_properties.push('invalid value for "modified_timestamp", modified_timestamp cannot be nil.')
      end

      if @release.nil?
        invalid_properties.push('invalid value for "release", release cannot be nil.')
      end

      if @vendor.nil?
        invalid_properties.push('invalid value for "vendor", vendor cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @ztl_module_supported_sensor_versions.nil?
        invalid_properties.push('invalid value for "ztl_module_supported_sensor_versions", ztl_module_supported_sensor_versions cannot be nil.')
      end

      if @ztl_supported_sensor_versions.nil?
        invalid_properties.push('invalid value for "ztl_supported_sensor_versions", ztl_supported_sensor_versions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @architecture.nil?
      return false if @base_package_supported_sensor_versions.nil?
      return false if @created_timestamp.nil?
      return false if @distro.nil?
      return false if @distro_version.nil?
      return false if @flavor.nil?
      return false if @id.nil?
      return false if @modified_timestamp.nil?
      return false if @release.nil?
      return false if @vendor.nil?
      return false if @version.nil?
      return false if @ztl_module_supported_sensor_versions.nil?
      return false if @ztl_supported_sensor_versions.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          architecture == o.architecture &&
          base_package_supported_sensor_versions == o.base_package_supported_sensor_versions &&
          created_timestamp == o.created_timestamp &&
          distro == o.distro &&
          distro_version == o.distro_version &&
          flavor == o.flavor &&
          id == o.id &&
          modified_timestamp == o.modified_timestamp &&
          release == o.release &&
          vendor == o.vendor &&
          version == o.version &&
          ztl_module_supported_sensor_versions == o.ztl_module_supported_sensor_versions &&
          ztl_supported_sensor_versions == o.ztl_supported_sensor_versions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [architecture, base_package_supported_sensor_versions, created_timestamp, distro, distro_version, flavor, id, modified_timestamp, release, vendor, version, ztl_module_supported_sensor_versions, ztl_supported_sensor_versions].hash
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
