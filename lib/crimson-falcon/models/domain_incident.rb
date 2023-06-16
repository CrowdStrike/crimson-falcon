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
  class DomainIncident
    attr_accessor :assigned_to

    attr_accessor :assigned_to_name

    attr_accessor :cid

    attr_accessor :created

    attr_accessor :description

    attr_accessor :email_state

    attr_accessor :_end

    attr_accessor :events_histogram

    attr_accessor :fine_score

    attr_accessor :host_ids

    attr_accessor :hosts

    attr_accessor :incident_id

    attr_accessor :incident_type

    attr_accessor :lm_host_ids

    attr_accessor :lm_hosts_capped

    attr_accessor :lm_types

    attr_accessor :lmra_host_ids

    attr_accessor :lmra_hosts_capped

    attr_accessor :modified_timestamp

    attr_accessor :name

    attr_accessor :objectives

    attr_accessor :start

    attr_accessor :state

    attr_accessor :status

    attr_accessor :tactics

    attr_accessor :tags

    attr_accessor :techniques

    attr_accessor :users

    attr_accessor :visibility

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'assigned_to' => :'assigned_to',
        :'assigned_to_name' => :'assigned_to_name',
        :'cid' => :'cid',
        :'created' => :'created',
        :'description' => :'description',
        :'email_state' => :'email_state',
        :'_end' => :'end',
        :'events_histogram' => :'events_histogram',
        :'fine_score' => :'fine_score',
        :'host_ids' => :'host_ids',
        :'hosts' => :'hosts',
        :'incident_id' => :'incident_id',
        :'incident_type' => :'incident_type',
        :'lm_host_ids' => :'lm_host_ids',
        :'lm_hosts_capped' => :'lm_hosts_capped',
        :'lm_types' => :'lm_types',
        :'lmra_host_ids' => :'lmra_host_ids',
        :'lmra_hosts_capped' => :'lmra_hosts_capped',
        :'modified_timestamp' => :'modified_timestamp',
        :'name' => :'name',
        :'objectives' => :'objectives',
        :'start' => :'start',
        :'state' => :'state',
        :'status' => :'status',
        :'tactics' => :'tactics',
        :'tags' => :'tags',
        :'techniques' => :'techniques',
        :'users' => :'users',
        :'visibility' => :'visibility'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'assigned_to' => :'String',
        :'assigned_to_name' => :'String',
        :'cid' => :'String',
        :'created' => :'Time',
        :'description' => :'String',
        :'email_state' => :'String',
        :'_end' => :'Time',
        :'events_histogram' => :'Array<DomainEventHistogram>',
        :'fine_score' => :'Integer',
        :'host_ids' => :'Array<String>',
        :'hosts' => :'Array<DetectsDeviceDetailIndexed>',
        :'incident_id' => :'String',
        :'incident_type' => :'Integer',
        :'lm_host_ids' => :'Array<String>',
        :'lm_hosts_capped' => :'Boolean',
        :'lm_types' => :'Integer',
        :'lmra_host_ids' => :'Array<String>',
        :'lmra_hosts_capped' => :'Boolean',
        :'modified_timestamp' => :'Time',
        :'name' => :'String',
        :'objectives' => :'Array<String>',
        :'start' => :'Time',
        :'state' => :'String',
        :'status' => :'Integer',
        :'tactics' => :'Array<String>',
        :'tags' => :'Array<String>',
        :'techniques' => :'Array<String>',
        :'users' => :'Array<String>',
        :'visibility' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainIncident` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainIncident`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'assigned_to')
        self.assigned_to = attributes[:'assigned_to']
      end

      if attributes.key?(:'assigned_to_name')
        self.assigned_to_name = attributes[:'assigned_to_name']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'email_state')
        self.email_state = attributes[:'email_state']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'events_histogram')
        if (value = attributes[:'events_histogram']).is_a?(Array)
          self.events_histogram = value
        end
      end

      if attributes.key?(:'fine_score')
        self.fine_score = attributes[:'fine_score']
      end

      if attributes.key?(:'host_ids')
        if (value = attributes[:'host_ids']).is_a?(Array)
          self.host_ids = value
        end
      end

      if attributes.key?(:'hosts')
        if (value = attributes[:'hosts']).is_a?(Array)
          self.hosts = value
        end
      end

      if attributes.key?(:'incident_id')
        self.incident_id = attributes[:'incident_id']
      end

      if attributes.key?(:'incident_type')
        self.incident_type = attributes[:'incident_type']
      end

      if attributes.key?(:'lm_host_ids')
        if (value = attributes[:'lm_host_ids']).is_a?(Array)
          self.lm_host_ids = value
        end
      end

      if attributes.key?(:'lm_hosts_capped')
        self.lm_hosts_capped = attributes[:'lm_hosts_capped']
      end

      if attributes.key?(:'lm_types')
        self.lm_types = attributes[:'lm_types']
      end

      if attributes.key?(:'lmra_host_ids')
        if (value = attributes[:'lmra_host_ids']).is_a?(Array)
          self.lmra_host_ids = value
        end
      end

      if attributes.key?(:'lmra_hosts_capped')
        self.lmra_hosts_capped = attributes[:'lmra_hosts_capped']
      end

      if attributes.key?(:'modified_timestamp')
        self.modified_timestamp = attributes[:'modified_timestamp']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'objectives')
        if (value = attributes[:'objectives']).is_a?(Array)
          self.objectives = value
        end
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tactics')
        if (value = attributes[:'tactics']).is_a?(Array)
          self.tactics = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'techniques')
        if (value = attributes[:'techniques']).is_a?(Array)
          self.techniques = value
        end
      end

      if attributes.key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.key?(:'visibility')
        self.visibility = attributes[:'visibility']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @_end.nil?
        invalid_properties.push('invalid value for "_end", _end cannot be nil.')
      end

      if @fine_score.nil?
        invalid_properties.push('invalid value for "fine_score", fine_score cannot be nil.')
      end

      if @host_ids.nil?
        invalid_properties.push('invalid value for "host_ids", host_ids cannot be nil.')
      end

      if @incident_id.nil?
        invalid_properties.push('invalid value for "incident_id", incident_id cannot be nil.')
      end

      if @start.nil?
        invalid_properties.push('invalid value for "start", start cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cid.nil?
      return false if @created.nil?
      return false if @_end.nil?
      return false if @fine_score.nil?
      return false if @host_ids.nil?
      return false if @incident_id.nil?
      return false if @start.nil?
      return false if @state.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          assigned_to == o.assigned_to &&
          assigned_to_name == o.assigned_to_name &&
          cid == o.cid &&
          created == o.created &&
          description == o.description &&
          email_state == o.email_state &&
          _end == o._end &&
          events_histogram == o.events_histogram &&
          fine_score == o.fine_score &&
          host_ids == o.host_ids &&
          hosts == o.hosts &&
          incident_id == o.incident_id &&
          incident_type == o.incident_type &&
          lm_host_ids == o.lm_host_ids &&
          lm_hosts_capped == o.lm_hosts_capped &&
          lm_types == o.lm_types &&
          lmra_host_ids == o.lmra_host_ids &&
          lmra_hosts_capped == o.lmra_hosts_capped &&
          modified_timestamp == o.modified_timestamp &&
          name == o.name &&
          objectives == o.objectives &&
          start == o.start &&
          state == o.state &&
          status == o.status &&
          tactics == o.tactics &&
          tags == o.tags &&
          techniques == o.techniques &&
          users == o.users &&
          visibility == o.visibility
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [assigned_to, assigned_to_name, cid, created, description, email_state, _end, events_histogram, fine_score, host_ids, hosts, incident_id, incident_type, lm_host_ids, lm_hosts_capped, lm_types, lmra_host_ids, lmra_hosts_capped, modified_timestamp, name, objectives, start, state, status, tactics, tags, techniques, users, visibility].hash
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
