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
  class DomainItemDetailsV1
    # The threat actor associated with a raw intelligence item, if available.
    attr_accessor :actor_slug

    # Attachments items linked to the raw intelligence item
    attr_accessor :attachments

    # The author’s username of a raw intelligence item
    attr_accessor :author

    # The raw intelligence item author identifier in our system
    attr_accessor :author_id

    # The type of source where the raw intelligence item was found
    attr_accessor :category

    # The date and time the raw intelligence item was scraped from the original source
    attr_accessor :collection_date

    # Highlighted content based on the monitoring rule that generated the notification. Highlights are surrounded with a `<cs-highlight>` tag
    attr_accessor :content

    # The date and time when the raw intelligence item was created
    attr_accessor :created_date

    # The file type of the raw intelligence item, if available
    attr_accessor :file_type

    attr_accessor :fragment_info

    # The URL to download the full raw text content of the raw intelligence item. It has a limited time to live
    attr_accessor :full_content_url

    # The types of IOCs found in the raw intelligence item. List of keys populated in the iocs field
    attr_accessor :ioc_types

    attr_accessor :iocs

    # Labels for the type of information included in a raw intelligence item
    attr_accessor :labels

    # The language of the raw intelligence item
    attr_accessor :language

    attr_accessor :marketplace_product

    # The mime type of the file
    attr_accessor :mime_type

    # Screenshots of the raw intelligence item
    attr_accessor :screenshots

    # The SHA256 hash for the file
    attr_accessor :sha256

    # The site where the raw intelligence item was found
    attr_accessor :site

    # The ID of the site where the raw intelligence item was found
    attr_accessor :site_id

    # The size of the item's content in bytes, if available
    attr_accessor :size

    attr_accessor :telegram_info

    # Identifier that groups all raw intelligence items belonging to the same conversation thread
    attr_accessor :thread_id

    # The title of the raw intelligence item
    attr_accessor :title

    # The type of the raw intelligence item
    attr_accessor :type

    # The date and time when the raw intelligence item was updated
    attr_accessor :updated_date

    # The URL of the raw intelligence item
    attr_accessor :url

    # The raw intelligence item author identifier in the original source
    attr_accessor :user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'actor_slug' => :'actor_slug',
        :'attachments' => :'attachments',
        :'author' => :'author',
        :'author_id' => :'author_id',
        :'category' => :'category',
        :'collection_date' => :'collection_date',
        :'content' => :'content',
        :'created_date' => :'created_date',
        :'file_type' => :'file_type',
        :'fragment_info' => :'fragment_info',
        :'full_content_url' => :'full_content_url',
        :'ioc_types' => :'ioc_types',
        :'iocs' => :'iocs',
        :'labels' => :'labels',
        :'language' => :'language',
        :'marketplace_product' => :'marketplace_product',
        :'mime_type' => :'mime_type',
        :'screenshots' => :'screenshots',
        :'sha256' => :'sha256',
        :'site' => :'site',
        :'site_id' => :'site_id',
        :'size' => :'size',
        :'telegram_info' => :'telegram_info',
        :'thread_id' => :'thread_id',
        :'title' => :'title',
        :'type' => :'type',
        :'updated_date' => :'updated_date',
        :'url' => :'url',
        :'user_id' => :'user_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'actor_slug' => :'String',
        :'attachments' => :'Array<DomainAttachment>',
        :'author' => :'String',
        :'author_id' => :'String',
        :'category' => :'String',
        :'collection_date' => :'Time',
        :'content' => :'String',
        :'created_date' => :'Time',
        :'file_type' => :'String',
        :'fragment_info' => :'DomainFragmentInfo',
        :'full_content_url' => :'String',
        :'ioc_types' => :'Array<String>',
        :'iocs' => :'DomainIOC',
        :'labels' => :'Array<String>',
        :'language' => :'String',
        :'marketplace_product' => :'DomainMarketplaceProduct',
        :'mime_type' => :'String',
        :'screenshots' => :'Array<DomainScreenshot>',
        :'sha256' => :'String',
        :'site' => :'String',
        :'site_id' => :'String',
        :'size' => :'Integer',
        :'telegram_info' => :'DomainTelegramInfo',
        :'thread_id' => :'String',
        :'title' => :'String',
        :'type' => :'String',
        :'updated_date' => :'Time',
        :'url' => :'String',
        :'user_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainItemDetailsV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainItemDetailsV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'actor_slug')
        self.actor_slug = attributes[:'actor_slug']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      end

      if attributes.key?(:'author_id')
        self.author_id = attributes[:'author_id']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'collection_date')
        self.collection_date = attributes[:'collection_date']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.key?(:'file_type')
        self.file_type = attributes[:'file_type']
      end

      if attributes.key?(:'fragment_info')
        self.fragment_info = attributes[:'fragment_info']
      end

      if attributes.key?(:'full_content_url')
        self.full_content_url = attributes[:'full_content_url']
      end

      if attributes.key?(:'ioc_types')
        if (value = attributes[:'ioc_types']).is_a?(Array)
          self.ioc_types = value
        end
      end

      if attributes.key?(:'iocs')
        self.iocs = attributes[:'iocs']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'marketplace_product')
        self.marketplace_product = attributes[:'marketplace_product']
      end

      if attributes.key?(:'mime_type')
        self.mime_type = attributes[:'mime_type']
      end

      if attributes.key?(:'screenshots')
        if (value = attributes[:'screenshots']).is_a?(Array)
          self.screenshots = value
        end
      end

      if attributes.key?(:'sha256')
        self.sha256 = attributes[:'sha256']
      end

      if attributes.key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.key?(:'site_id')
        self.site_id = attributes[:'site_id']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'telegram_info')
        self.telegram_info = attributes[:'telegram_info']
      end

      if attributes.key?(:'thread_id')
        self.thread_id = attributes[:'thread_id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'updated_date')
        self.updated_date = attributes[:'updated_date']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      if @created_date.nil?
        invalid_properties.push('invalid value for "created_date", created_date cannot be nil.')
      end

      if @site_id.nil?
        invalid_properties.push('invalid value for "site_id", site_id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @updated_date.nil?
        invalid_properties.push('invalid value for "updated_date", updated_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @category.nil?
      return false if @content.nil?
      return false if @created_date.nil?
      return false if @site_id.nil?
      return false if @type.nil?
      return false if @updated_date.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          actor_slug == o.actor_slug &&
          attachments == o.attachments &&
          author == o.author &&
          author_id == o.author_id &&
          category == o.category &&
          collection_date == o.collection_date &&
          content == o.content &&
          created_date == o.created_date &&
          file_type == o.file_type &&
          fragment_info == o.fragment_info &&
          full_content_url == o.full_content_url &&
          ioc_types == o.ioc_types &&
          iocs == o.iocs &&
          labels == o.labels &&
          language == o.language &&
          marketplace_product == o.marketplace_product &&
          mime_type == o.mime_type &&
          screenshots == o.screenshots &&
          sha256 == o.sha256 &&
          site == o.site &&
          site_id == o.site_id &&
          size == o.size &&
          telegram_info == o.telegram_info &&
          thread_id == o.thread_id &&
          title == o.title &&
          type == o.type &&
          updated_date == o.updated_date &&
          url == o.url &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [actor_slug, attachments, author, author_id, category, collection_date, content, created_date, file_type, fragment_info, full_content_url, ioc_types, iocs, labels, language, marketplace_product, mime_type, screenshots, sha256, site, site_id, size, telegram_info, thread_id, title, type, updated_date, url, user_id].hash
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
