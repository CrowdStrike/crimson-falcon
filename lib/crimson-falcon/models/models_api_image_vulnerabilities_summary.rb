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
  class ModelsAPIImageVulnerabilitiesSummary
    attr_accessor :app_packages_with_vulnerabilities

    attr_accessor :app_vuln_by_severity

    attr_accessor :image_vuln_by_severity

    attr_accessor :layers_with_vulnerabilities

    attr_accessor :os_packages_with_vulnerabilities

    attr_accessor :os_vuln_by_severity

    attr_accessor :total_app_packages

    attr_accessor :total_os_packages

    attr_accessor :total_vulnerabilities

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'app_packages_with_vulnerabilities' => :'app_packages_with_vulnerabilities',
        :'app_vuln_by_severity' => :'app_vuln_by_severity',
        :'image_vuln_by_severity' => :'image_vuln_by_severity',
        :'layers_with_vulnerabilities' => :'layers_with_vulnerabilities',
        :'os_packages_with_vulnerabilities' => :'os_packages_with_vulnerabilities',
        :'os_vuln_by_severity' => :'os_vuln_by_severity',
        :'total_app_packages' => :'total_app_packages',
        :'total_os_packages' => :'total_os_packages',
        :'total_vulnerabilities' => :'total_vulnerabilities'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'app_packages_with_vulnerabilities' => :'Integer',
        :'app_vuln_by_severity' => :'Array<ModelsAPIVulnCountBySeverity>',
        :'image_vuln_by_severity' => :'Array<ModelsAPIVulnCountBySeverity>',
        :'layers_with_vulnerabilities' => :'Integer',
        :'os_packages_with_vulnerabilities' => :'Integer',
        :'os_vuln_by_severity' => :'Array<ModelsAPIVulnCountBySeverity>',
        :'total_app_packages' => :'Integer',
        :'total_os_packages' => :'Integer',
        :'total_vulnerabilities' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsAPIImageVulnerabilitiesSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsAPIImageVulnerabilitiesSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'app_packages_with_vulnerabilities')
        self.app_packages_with_vulnerabilities = attributes[:'app_packages_with_vulnerabilities']
      end

      if attributes.key?(:'app_vuln_by_severity')
        if (value = attributes[:'app_vuln_by_severity']).is_a?(Array)
          self.app_vuln_by_severity = value
        end
      end

      if attributes.key?(:'image_vuln_by_severity')
        if (value = attributes[:'image_vuln_by_severity']).is_a?(Array)
          self.image_vuln_by_severity = value
        end
      end

      if attributes.key?(:'layers_with_vulnerabilities')
        self.layers_with_vulnerabilities = attributes[:'layers_with_vulnerabilities']
      end

      if attributes.key?(:'os_packages_with_vulnerabilities')
        self.os_packages_with_vulnerabilities = attributes[:'os_packages_with_vulnerabilities']
      end

      if attributes.key?(:'os_vuln_by_severity')
        if (value = attributes[:'os_vuln_by_severity']).is_a?(Array)
          self.os_vuln_by_severity = value
        end
      end

      if attributes.key?(:'total_app_packages')
        self.total_app_packages = attributes[:'total_app_packages']
      end

      if attributes.key?(:'total_os_packages')
        self.total_os_packages = attributes[:'total_os_packages']
      end

      if attributes.key?(:'total_vulnerabilities')
        self.total_vulnerabilities = attributes[:'total_vulnerabilities']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @app_packages_with_vulnerabilities.nil?
        invalid_properties.push('invalid value for "app_packages_with_vulnerabilities", app_packages_with_vulnerabilities cannot be nil.')
      end

      if @app_vuln_by_severity.nil?
        invalid_properties.push('invalid value for "app_vuln_by_severity", app_vuln_by_severity cannot be nil.')
      end

      if @image_vuln_by_severity.nil?
        invalid_properties.push('invalid value for "image_vuln_by_severity", image_vuln_by_severity cannot be nil.')
      end

      if @layers_with_vulnerabilities.nil?
        invalid_properties.push('invalid value for "layers_with_vulnerabilities", layers_with_vulnerabilities cannot be nil.')
      end

      if @os_packages_with_vulnerabilities.nil?
        invalid_properties.push('invalid value for "os_packages_with_vulnerabilities", os_packages_with_vulnerabilities cannot be nil.')
      end

      if @os_vuln_by_severity.nil?
        invalid_properties.push('invalid value for "os_vuln_by_severity", os_vuln_by_severity cannot be nil.')
      end

      if @total_app_packages.nil?
        invalid_properties.push('invalid value for "total_app_packages", total_app_packages cannot be nil.')
      end

      if @total_os_packages.nil?
        invalid_properties.push('invalid value for "total_os_packages", total_os_packages cannot be nil.')
      end

      if @total_vulnerabilities.nil?
        invalid_properties.push('invalid value for "total_vulnerabilities", total_vulnerabilities cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @app_packages_with_vulnerabilities.nil?
      return false if @app_vuln_by_severity.nil?
      return false if @image_vuln_by_severity.nil?
      return false if @layers_with_vulnerabilities.nil?
      return false if @os_packages_with_vulnerabilities.nil?
      return false if @os_vuln_by_severity.nil?
      return false if @total_app_packages.nil?
      return false if @total_os_packages.nil?
      return false if @total_vulnerabilities.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          app_packages_with_vulnerabilities == o.app_packages_with_vulnerabilities &&
          app_vuln_by_severity == o.app_vuln_by_severity &&
          image_vuln_by_severity == o.image_vuln_by_severity &&
          layers_with_vulnerabilities == o.layers_with_vulnerabilities &&
          os_packages_with_vulnerabilities == o.os_packages_with_vulnerabilities &&
          os_vuln_by_severity == o.os_vuln_by_severity &&
          total_app_packages == o.total_app_packages &&
          total_os_packages == o.total_os_packages &&
          total_vulnerabilities == o.total_vulnerabilities
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [app_packages_with_vulnerabilities, app_vuln_by_severity, image_vuln_by_severity, layers_with_vulnerabilities, os_packages_with_vulnerabilities, os_vuln_by_severity, total_app_packages, total_os_packages, total_vulnerabilities].hash
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
