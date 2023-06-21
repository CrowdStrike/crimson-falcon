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
  class MsaAggregateQueryRequest
    attr_accessor :date_ranges

    attr_accessor :exclude

    attr_accessor :field

    attr_accessor :filter

    attr_accessor :from

    attr_accessor :include

    attr_accessor :interval

    attr_accessor :max_doc_count

    attr_accessor :min_doc_count

    attr_accessor :missing

    attr_accessor :name

    attr_accessor :q

    attr_accessor :ranges

    attr_accessor :size

    attr_accessor :sort

    attr_accessor :sub_aggregates

    attr_accessor :time_zone

    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_ranges' => :'date_ranges',
        :'exclude' => :'exclude',
        :'field' => :'field',
        :'filter' => :'filter',
        :'from' => :'from',
        :'include' => :'include',
        :'interval' => :'interval',
        :'max_doc_count' => :'max_doc_count',
        :'min_doc_count' => :'min_doc_count',
        :'missing' => :'missing',
        :'name' => :'name',
        :'q' => :'q',
        :'ranges' => :'ranges',
        :'size' => :'size',
        :'sort' => :'sort',
        :'sub_aggregates' => :'sub_aggregates',
        :'time_zone' => :'time_zone',
        :'type' => :'type'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date_ranges' => :'Array<MsaDateRangeSpec>',
        :'exclude' => :'String',
        :'field' => :'String',
        :'filter' => :'String',
        :'from' => :'Integer',
        :'include' => :'String',
        :'interval' => :'String',
        :'max_doc_count' => :'Integer',
        :'min_doc_count' => :'Integer',
        :'missing' => :'String',
        :'name' => :'String',
        :'q' => :'String',
        :'ranges' => :'Array<MsaRangeSpec>',
        :'size' => :'Integer',
        :'sort' => :'String',
        :'sub_aggregates' => :'Array<MsaAggregateQueryRequest>',
        :'time_zone' => :'String',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::MsaAggregateQueryRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::MsaAggregateQueryRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date_ranges')
        if (value = attributes[:'date_ranges']).is_a?(Array)
          self.date_ranges = value
        end
      end

      if attributes.key?(:'exclude')
        self.exclude = attributes[:'exclude']
      end

      if attributes.key?(:'field')
        self.field = attributes[:'field']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'include')
        self.include = attributes[:'include']
      end

      if attributes.key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.key?(:'max_doc_count')
        self.max_doc_count = attributes[:'max_doc_count']
      end

      if attributes.key?(:'min_doc_count')
        self.min_doc_count = attributes[:'min_doc_count']
      end

      if attributes.key?(:'missing')
        self.missing = attributes[:'missing']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'ranges')
        if (value = attributes[:'ranges']).is_a?(Array)
          self.ranges = value
        end
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'sub_aggregates')
        if (value = attributes[:'sub_aggregates']).is_a?(Array)
          self.sub_aggregates = value
        end
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date_ranges.nil?
        invalid_properties.push('invalid value for "date_ranges", date_ranges cannot be nil.')
      end

      if @exclude.nil?
        invalid_properties.push('invalid value for "exclude", exclude cannot be nil.')
      end

      if @field.nil?
        invalid_properties.push('invalid value for "field", field cannot be nil.')
      end

      if @filter.nil?
        invalid_properties.push('invalid value for "filter", filter cannot be nil.')
      end

      if @from.nil?
        invalid_properties.push('invalid value for "from", from cannot be nil.')
      end

      if @include.nil?
        invalid_properties.push('invalid value for "include", include cannot be nil.')
      end

      if @interval.nil?
        invalid_properties.push('invalid value for "interval", interval cannot be nil.')
      end

      if @missing.nil?
        invalid_properties.push('invalid value for "missing", missing cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @q.nil?
        invalid_properties.push('invalid value for "q", q cannot be nil.')
      end

      if @ranges.nil?
        invalid_properties.push('invalid value for "ranges", ranges cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @sort.nil?
        invalid_properties.push('invalid value for "sort", sort cannot be nil.')
      end

      if @sub_aggregates.nil?
        invalid_properties.push('invalid value for "sub_aggregates", sub_aggregates cannot be nil.')
      end

      if @time_zone.nil?
        invalid_properties.push('invalid value for "time_zone", time_zone cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date_ranges.nil?
      return false if @exclude.nil?
      return false if @field.nil?
      return false if @filter.nil?
      return false if @from.nil?
      return false if @include.nil?
      return false if @interval.nil?
      return false if @missing.nil?
      return false if @name.nil?
      return false if @q.nil?
      return false if @ranges.nil?
      return false if @size.nil?
      return false if @sort.nil?
      return false if @sub_aggregates.nil?
      return false if @time_zone.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_ranges == o.date_ranges &&
          exclude == o.exclude &&
          field == o.field &&
          filter == o.filter &&
          from == o.from &&
          include == o.include &&
          interval == o.interval &&
          max_doc_count == o.max_doc_count &&
          min_doc_count == o.min_doc_count &&
          missing == o.missing &&
          name == o.name &&
          q == o.q &&
          ranges == o.ranges &&
          size == o.size &&
          sort == o.sort &&
          sub_aggregates == o.sub_aggregates &&
          time_zone == o.time_zone &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date_ranges, exclude, field, filter, from, include, interval, max_doc_count, min_doc_count, missing, name, q, ranges, size, sort, sub_aggregates, time_zone, type].hash
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
