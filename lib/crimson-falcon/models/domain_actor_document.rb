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
  class DomainActorDocument
    attr_accessor :active

    attr_accessor :actor_type

    attr_accessor :capabilities

    attr_accessor :capability

    attr_accessor :created_date

    attr_accessor :description

    attr_accessor :ecrime_kill_chain

    attr_accessor :entitlements

    attr_accessor :first_activity_date

    attr_accessor :group

    attr_accessor :id

    attr_accessor :image

    attr_accessor :kill_chain

    attr_accessor :known_as

    attr_accessor :last_activity_date

    attr_accessor :last_modified_date

    attr_accessor :motivations

    attr_accessor :name

    attr_accessor :notify_users

    attr_accessor :objectives

    attr_accessor :origins

    attr_accessor :recent_alerting

    attr_accessor :region

    attr_accessor :rich_text_description

    attr_accessor :short_description

    attr_accessor :slug

    attr_accessor :status

    attr_accessor :target_countries

    attr_accessor :target_industries

    attr_accessor :target_regions

    attr_accessor :thumbnail

    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'actor_type' => :'actor_type',
        :'capabilities' => :'capabilities',
        :'capability' => :'capability',
        :'created_date' => :'created_date',
        :'description' => :'description',
        :'ecrime_kill_chain' => :'ecrime_kill_chain',
        :'entitlements' => :'entitlements',
        :'first_activity_date' => :'first_activity_date',
        :'group' => :'group',
        :'id' => :'id',
        :'image' => :'image',
        :'kill_chain' => :'kill_chain',
        :'known_as' => :'known_as',
        :'last_activity_date' => :'last_activity_date',
        :'last_modified_date' => :'last_modified_date',
        :'motivations' => :'motivations',
        :'name' => :'name',
        :'notify_users' => :'notify_users',
        :'objectives' => :'objectives',
        :'origins' => :'origins',
        :'recent_alerting' => :'recent_alerting',
        :'region' => :'region',
        :'rich_text_description' => :'rich_text_description',
        :'short_description' => :'short_description',
        :'slug' => :'slug',
        :'status' => :'status',
        :'target_countries' => :'target_countries',
        :'target_industries' => :'target_industries',
        :'target_regions' => :'target_regions',
        :'thumbnail' => :'thumbnail',
        :'url' => :'url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'actor_type' => :'String',
        :'capabilities' => :'Array<DomainEntity>',
        :'capability' => :'DomainEntity',
        :'created_date' => :'Integer',
        :'description' => :'String',
        :'ecrime_kill_chain' => :'DomainECrimeKillChain',
        :'entitlements' => :'Array<DomainEntity>',
        :'first_activity_date' => :'Integer',
        :'group' => :'DomainEntity',
        :'id' => :'Integer',
        :'image' => :'DomainImage',
        :'kill_chain' => :'DomainKillChain',
        :'known_as' => :'String',
        :'last_activity_date' => :'Integer',
        :'last_modified_date' => :'Integer',
        :'motivations' => :'Array<DomainEntity>',
        :'name' => :'String',
        :'notify_users' => :'Boolean',
        :'objectives' => :'Array<DomainEntity>',
        :'origins' => :'Array<DomainEntity>',
        :'recent_alerting' => :'Integer',
        :'region' => :'DomainEntity',
        :'rich_text_description' => :'String',
        :'short_description' => :'String',
        :'slug' => :'String',
        :'status' => :'String',
        :'target_countries' => :'Array<DomainEntity>',
        :'target_industries' => :'Array<DomainEntity>',
        :'target_regions' => :'Array<DomainEntity>',
        :'thumbnail' => :'DomainImage',
        :'url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainActorDocument` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainActorDocument`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'actor_type')
        self.actor_type = attributes[:'actor_type']
      end

      if attributes.key?(:'capabilities')
        if (value = attributes[:'capabilities']).is_a?(Array)
          self.capabilities = value
        end
      end

      if attributes.key?(:'capability')
        self.capability = attributes[:'capability']
      end

      if attributes.key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'ecrime_kill_chain')
        self.ecrime_kill_chain = attributes[:'ecrime_kill_chain']
      end

      if attributes.key?(:'entitlements')
        if (value = attributes[:'entitlements']).is_a?(Array)
          self.entitlements = value
        end
      end

      if attributes.key?(:'first_activity_date')
        self.first_activity_date = attributes[:'first_activity_date']
      end

      if attributes.key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'kill_chain')
        self.kill_chain = attributes[:'kill_chain']
      end

      if attributes.key?(:'known_as')
        self.known_as = attributes[:'known_as']
      end

      if attributes.key?(:'last_activity_date')
        self.last_activity_date = attributes[:'last_activity_date']
      end

      if attributes.key?(:'last_modified_date')
        self.last_modified_date = attributes[:'last_modified_date']
      end

      if attributes.key?(:'motivations')
        if (value = attributes[:'motivations']).is_a?(Array)
          self.motivations = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'notify_users')
        self.notify_users = attributes[:'notify_users']
      end

      if attributes.key?(:'objectives')
        if (value = attributes[:'objectives']).is_a?(Array)
          self.objectives = value
        end
      end

      if attributes.key?(:'origins')
        if (value = attributes[:'origins']).is_a?(Array)
          self.origins = value
        end
      end

      if attributes.key?(:'recent_alerting')
        self.recent_alerting = attributes[:'recent_alerting']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'rich_text_description')
        self.rich_text_description = attributes[:'rich_text_description']
      end

      if attributes.key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'target_countries')
        if (value = attributes[:'target_countries']).is_a?(Array)
          self.target_countries = value
        end
      end

      if attributes.key?(:'target_industries')
        if (value = attributes[:'target_industries']).is_a?(Array)
          self.target_industries = value
        end
      end

      if attributes.key?(:'target_regions')
        if (value = attributes[:'target_regions']).is_a?(Array)
          self.target_regions = value
        end
      end

      if attributes.key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @active.nil?
        invalid_properties.push('invalid value for "active", active cannot be nil.')
      end

      if @capabilities.nil?
        invalid_properties.push('invalid value for "capabilities", capabilities cannot be nil.')
      end

      if @created_date.nil?
        invalid_properties.push('invalid value for "created_date", created_date cannot be nil.')
      end

      if @first_activity_date.nil?
        invalid_properties.push('invalid value for "first_activity_date", first_activity_date cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @known_as.nil?
        invalid_properties.push('invalid value for "known_as", known_as cannot be nil.')
      end

      if @last_activity_date.nil?
        invalid_properties.push('invalid value for "last_activity_date", last_activity_date cannot be nil.')
      end

      if @last_modified_date.nil?
        invalid_properties.push('invalid value for "last_modified_date", last_modified_date cannot be nil.')
      end

      if @motivations.nil?
        invalid_properties.push('invalid value for "motivations", motivations cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @notify_users.nil?
        invalid_properties.push('invalid value for "notify_users", notify_users cannot be nil.')
      end

      if @objectives.nil?
        invalid_properties.push('invalid value for "objectives", objectives cannot be nil.')
      end

      if @origins.nil?
        invalid_properties.push('invalid value for "origins", origins cannot be nil.')
      end

      if @short_description.nil?
        invalid_properties.push('invalid value for "short_description", short_description cannot be nil.')
      end

      if @slug.nil?
        invalid_properties.push('invalid value for "slug", slug cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @target_countries.nil?
        invalid_properties.push('invalid value for "target_countries", target_countries cannot be nil.')
      end

      if @target_industries.nil?
        invalid_properties.push('invalid value for "target_industries", target_industries cannot be nil.')
      end

      if @target_regions.nil?
        invalid_properties.push('invalid value for "target_regions", target_regions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @active.nil?
      return false if @capabilities.nil?
      return false if @created_date.nil?
      return false if @first_activity_date.nil?
      return false if @id.nil?
      return false if @known_as.nil?
      return false if @last_activity_date.nil?
      return false if @last_modified_date.nil?
      return false if @motivations.nil?
      return false if @name.nil?
      return false if @notify_users.nil?
      return false if @objectives.nil?
      return false if @origins.nil?
      return false if @short_description.nil?
      return false if @slug.nil?
      return false if @status.nil?
      return false if @target_countries.nil?
      return false if @target_industries.nil?
      return false if @target_regions.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          actor_type == o.actor_type &&
          capabilities == o.capabilities &&
          capability == o.capability &&
          created_date == o.created_date &&
          description == o.description &&
          ecrime_kill_chain == o.ecrime_kill_chain &&
          entitlements == o.entitlements &&
          first_activity_date == o.first_activity_date &&
          group == o.group &&
          id == o.id &&
          image == o.image &&
          kill_chain == o.kill_chain &&
          known_as == o.known_as &&
          last_activity_date == o.last_activity_date &&
          last_modified_date == o.last_modified_date &&
          motivations == o.motivations &&
          name == o.name &&
          notify_users == o.notify_users &&
          objectives == o.objectives &&
          origins == o.origins &&
          recent_alerting == o.recent_alerting &&
          region == o.region &&
          rich_text_description == o.rich_text_description &&
          short_description == o.short_description &&
          slug == o.slug &&
          status == o.status &&
          target_countries == o.target_countries &&
          target_industries == o.target_industries &&
          target_regions == o.target_regions &&
          thumbnail == o.thumbnail &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, actor_type, capabilities, capability, created_date, description, ecrime_kill_chain, entitlements, first_activity_date, group, id, image, kill_chain, known_as, last_activity_date, last_modified_date, motivations, name, notify_users, objectives, origins, recent_alerting, region, rich_text_description, short_description, slug, status, target_countries, target_industries, target_regions, thumbnail, url].hash
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
