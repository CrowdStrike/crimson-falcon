=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module Falcon
  class DomainResultMetadata
    attr_accessor :execution_delay

    attr_accessor :execution_duration

    attr_accessor :execution_finish

    attr_accessor :execution_start

    attr_accessor :queue_duration

    attr_accessor :queue_start

    attr_accessor :report_file_name

    attr_accessor :report_finish

    attr_accessor :result_count

    attr_accessor :result_id

    attr_accessor :search_window_end

    attr_accessor :search_window_start

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'execution_delay' => :'execution_delay',
        :'execution_duration' => :'execution_duration',
        :'execution_finish' => :'execution_finish',
        :'execution_start' => :'execution_start',
        :'queue_duration' => :'queue_duration',
        :'queue_start' => :'queue_start',
        :'report_file_name' => :'report_file_name',
        :'report_finish' => :'report_finish',
        :'result_count' => :'result_count',
        :'result_id' => :'result_id',
        :'search_window_end' => :'search_window_end',
        :'search_window_start' => :'search_window_start'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'execution_delay' => :'Integer',
        :'execution_duration' => :'Integer',
        :'execution_finish' => :'Time',
        :'execution_start' => :'Time',
        :'queue_duration' => :'Integer',
        :'queue_start' => :'Time',
        :'report_file_name' => :'String',
        :'report_finish' => :'Time',
        :'result_count' => :'Integer',
        :'result_id' => :'String',
        :'search_window_end' => :'Time',
        :'search_window_start' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainResultMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainResultMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'execution_delay')
        self.execution_delay = attributes[:'execution_delay']
      end

      if attributes.key?(:'execution_duration')
        self.execution_duration = attributes[:'execution_duration']
      end

      if attributes.key?(:'execution_finish')
        self.execution_finish = attributes[:'execution_finish']
      end

      if attributes.key?(:'execution_start')
        self.execution_start = attributes[:'execution_start']
      end

      if attributes.key?(:'queue_duration')
        self.queue_duration = attributes[:'queue_duration']
      end

      if attributes.key?(:'queue_start')
        self.queue_start = attributes[:'queue_start']
      end

      if attributes.key?(:'report_file_name')
        self.report_file_name = attributes[:'report_file_name']
      end

      if attributes.key?(:'report_finish')
        self.report_finish = attributes[:'report_finish']
      end

      if attributes.key?(:'result_count')
        self.result_count = attributes[:'result_count']
      end

      if attributes.key?(:'result_id')
        self.result_id = attributes[:'result_id']
      end

      if attributes.key?(:'search_window_end')
        self.search_window_end = attributes[:'search_window_end']
      end

      if attributes.key?(:'search_window_start')
        self.search_window_start = attributes[:'search_window_start']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @execution_delay.nil?
        invalid_properties.push('invalid value for "execution_delay", execution_delay cannot be nil.')
      end

      if @execution_duration.nil?
        invalid_properties.push('invalid value for "execution_duration", execution_duration cannot be nil.')
      end

      if @execution_finish.nil?
        invalid_properties.push('invalid value for "execution_finish", execution_finish cannot be nil.')
      end

      if @execution_start.nil?
        invalid_properties.push('invalid value for "execution_start", execution_start cannot be nil.')
      end

      if @queue_duration.nil?
        invalid_properties.push('invalid value for "queue_duration", queue_duration cannot be nil.')
      end

      if @queue_start.nil?
        invalid_properties.push('invalid value for "queue_start", queue_start cannot be nil.')
      end

      if @report_file_name.nil?
        invalid_properties.push('invalid value for "report_file_name", report_file_name cannot be nil.')
      end

      if @report_finish.nil?
        invalid_properties.push('invalid value for "report_finish", report_finish cannot be nil.')
      end

      if @result_count.nil?
        invalid_properties.push('invalid value for "result_count", result_count cannot be nil.')
      end

      if @result_id.nil?
        invalid_properties.push('invalid value for "result_id", result_id cannot be nil.')
      end

      if @search_window_end.nil?
        invalid_properties.push('invalid value for "search_window_end", search_window_end cannot be nil.')
      end

      if @search_window_start.nil?
        invalid_properties.push('invalid value for "search_window_start", search_window_start cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @execution_delay.nil?
      return false if @execution_duration.nil?
      return false if @execution_finish.nil?
      return false if @execution_start.nil?
      return false if @queue_duration.nil?
      return false if @queue_start.nil?
      return false if @report_file_name.nil?
      return false if @report_finish.nil?
      return false if @result_count.nil?
      return false if @result_id.nil?
      return false if @search_window_end.nil?
      return false if @search_window_start.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          execution_delay == o.execution_delay &&
          execution_duration == o.execution_duration &&
          execution_finish == o.execution_finish &&
          execution_start == o.execution_start &&
          queue_duration == o.queue_duration &&
          queue_start == o.queue_start &&
          report_file_name == o.report_file_name &&
          report_finish == o.report_finish &&
          result_count == o.result_count &&
          result_id == o.result_id &&
          search_window_end == o.search_window_end &&
          search_window_start == o.search_window_start
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [execution_delay, execution_duration, execution_finish, execution_start, queue_duration, queue_start, report_file_name, report_finish, result_count, result_id, search_window_end, search_window_start].hash
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