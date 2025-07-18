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
  class AzureAzureRegistrationUpdateInput
    attr_accessor :account_type

    attr_accessor :additional_features

    attr_accessor :additional_properties

    attr_accessor :api_client_key_id

    attr_accessor :api_client_key_type

    attr_accessor :cs_infra_region

    attr_accessor :cs_infra_subscription_id

    attr_accessor :deployment_method

    attr_accessor :deployment_stack_host_id

    attr_accessor :deployment_stack_name

    attr_accessor :dspm_regions

    attr_accessor :environment

    attr_accessor :event_hub_settings

    attr_accessor :management_group_ids

    attr_accessor :microsoft_graph_permission_ids

    attr_accessor :microsoft_graph_permission_ids_readonly

    attr_accessor :products

    attr_accessor :resource_name_prefix

    attr_accessor :resource_name_suffix

    attr_accessor :status

    attr_accessor :subscription_ids

    attr_accessor :tags

    attr_accessor :template_version

    attr_accessor :tenant_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_type' => :'account_type',
        :'additional_features' => :'additional_features',
        :'additional_properties' => :'additional_properties',
        :'api_client_key_id' => :'api_client_key_id',
        :'api_client_key_type' => :'api_client_key_type',
        :'cs_infra_region' => :'cs_infra_region',
        :'cs_infra_subscription_id' => :'cs_infra_subscription_id',
        :'deployment_method' => :'deployment_method',
        :'deployment_stack_host_id' => :'deployment_stack_host_id',
        :'deployment_stack_name' => :'deployment_stack_name',
        :'dspm_regions' => :'dspm_regions',
        :'environment' => :'environment',
        :'event_hub_settings' => :'event_hub_settings',
        :'management_group_ids' => :'management_group_ids',
        :'microsoft_graph_permission_ids' => :'microsoft_graph_permission_ids',
        :'microsoft_graph_permission_ids_readonly' => :'microsoft_graph_permission_ids_readonly',
        :'products' => :'products',
        :'resource_name_prefix' => :'resource_name_prefix',
        :'resource_name_suffix' => :'resource_name_suffix',
        :'status' => :'status',
        :'subscription_ids' => :'subscription_ids',
        :'tags' => :'tags',
        :'template_version' => :'template_version',
        :'tenant_id' => :'tenant_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_type' => :'String',
        :'additional_features' => :'Array<AzureAdditionalFeature>',
        :'additional_properties' => :'Object',
        :'api_client_key_id' => :'String',
        :'api_client_key_type' => :'String',
        :'cs_infra_region' => :'String',
        :'cs_infra_subscription_id' => :'String',
        :'deployment_method' => :'String',
        :'deployment_stack_host_id' => :'String',
        :'deployment_stack_name' => :'String',
        :'dspm_regions' => :'Array<String>',
        :'environment' => :'String',
        :'event_hub_settings' => :'Array<AzureEventHubSettings>',
        :'management_group_ids' => :'Array<String>',
        :'microsoft_graph_permission_ids' => :'Array<String>',
        :'microsoft_graph_permission_ids_readonly' => :'Boolean',
        :'products' => :'Array<DomainProductFeatures>',
        :'resource_name_prefix' => :'String',
        :'resource_name_suffix' => :'String',
        :'status' => :'String',
        :'subscription_ids' => :'Array<String>',
        :'tags' => :'Hash<String, String>',
        :'template_version' => :'String',
        :'tenant_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::AzureAzureRegistrationUpdateInput` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::AzureAzureRegistrationUpdateInput`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'additional_features')
        if (value = attributes[:'additional_features']).is_a?(Array)
          self.additional_features = value
        end
      end

      if attributes.key?(:'additional_properties')
        self.additional_properties = attributes[:'additional_properties']
      end

      if attributes.key?(:'api_client_key_id')
        self.api_client_key_id = attributes[:'api_client_key_id']
      end

      if attributes.key?(:'api_client_key_type')
        self.api_client_key_type = attributes[:'api_client_key_type']
      end

      if attributes.key?(:'cs_infra_region')
        self.cs_infra_region = attributes[:'cs_infra_region']
      end

      if attributes.key?(:'cs_infra_subscription_id')
        self.cs_infra_subscription_id = attributes[:'cs_infra_subscription_id']
      end

      if attributes.key?(:'deployment_method')
        self.deployment_method = attributes[:'deployment_method']
      end

      if attributes.key?(:'deployment_stack_host_id')
        self.deployment_stack_host_id = attributes[:'deployment_stack_host_id']
      end

      if attributes.key?(:'deployment_stack_name')
        self.deployment_stack_name = attributes[:'deployment_stack_name']
      end

      if attributes.key?(:'dspm_regions')
        if (value = attributes[:'dspm_regions']).is_a?(Array)
          self.dspm_regions = value
        end
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'event_hub_settings')
        if (value = attributes[:'event_hub_settings']).is_a?(Array)
          self.event_hub_settings = value
        end
      end

      if attributes.key?(:'management_group_ids')
        if (value = attributes[:'management_group_ids']).is_a?(Array)
          self.management_group_ids = value
        end
      end

      if attributes.key?(:'microsoft_graph_permission_ids')
        if (value = attributes[:'microsoft_graph_permission_ids']).is_a?(Array)
          self.microsoft_graph_permission_ids = value
        end
      end

      if attributes.key?(:'microsoft_graph_permission_ids_readonly')
        self.microsoft_graph_permission_ids_readonly = attributes[:'microsoft_graph_permission_ids_readonly']
      end

      if attributes.key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

      if attributes.key?(:'resource_name_prefix')
        self.resource_name_prefix = attributes[:'resource_name_prefix']
      end

      if attributes.key?(:'resource_name_suffix')
        self.resource_name_suffix = attributes[:'resource_name_suffix']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subscription_ids')
        if (value = attributes[:'subscription_ids']).is_a?(Array)
          self.subscription_ids = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Hash)
          self.tags = value
        end
      end

      if attributes.key?(:'template_version')
        self.template_version = attributes[:'template_version']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @additional_features.nil?
        invalid_properties.push('invalid value for "additional_features", additional_features cannot be nil.')
      end

      if @event_hub_settings.nil?
        invalid_properties.push('invalid value for "event_hub_settings", event_hub_settings cannot be nil.')
      end

      if @management_group_ids.nil?
        invalid_properties.push('invalid value for "management_group_ids", management_group_ids cannot be nil.')
      end

      if @microsoft_graph_permission_ids.nil?
        invalid_properties.push('invalid value for "microsoft_graph_permission_ids", microsoft_graph_permission_ids cannot be nil.')
      end

      if @subscription_ids.nil?
        invalid_properties.push('invalid value for "subscription_ids", subscription_ids cannot be nil.')
      end

      if @tags.nil?
        invalid_properties.push('invalid value for "tags", tags cannot be nil.')
      end

      if @tenant_id.nil?
        invalid_properties.push('invalid value for "tenant_id", tenant_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @additional_features.nil?
      return false if @event_hub_settings.nil?
      return false if @management_group_ids.nil?
      return false if @microsoft_graph_permission_ids.nil?
      return false if @subscription_ids.nil?
      return false if @tags.nil?
      return false if @tenant_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_type == o.account_type &&
          additional_features == o.additional_features &&
          additional_properties == o.additional_properties &&
          api_client_key_id == o.api_client_key_id &&
          api_client_key_type == o.api_client_key_type &&
          cs_infra_region == o.cs_infra_region &&
          cs_infra_subscription_id == o.cs_infra_subscription_id &&
          deployment_method == o.deployment_method &&
          deployment_stack_host_id == o.deployment_stack_host_id &&
          deployment_stack_name == o.deployment_stack_name &&
          dspm_regions == o.dspm_regions &&
          environment == o.environment &&
          event_hub_settings == o.event_hub_settings &&
          management_group_ids == o.management_group_ids &&
          microsoft_graph_permission_ids == o.microsoft_graph_permission_ids &&
          microsoft_graph_permission_ids_readonly == o.microsoft_graph_permission_ids_readonly &&
          products == o.products &&
          resource_name_prefix == o.resource_name_prefix &&
          resource_name_suffix == o.resource_name_suffix &&
          status == o.status &&
          subscription_ids == o.subscription_ids &&
          tags == o.tags &&
          template_version == o.template_version &&
          tenant_id == o.tenant_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_type, additional_features, additional_properties, api_client_key_id, api_client_key_type, cs_infra_region, cs_infra_subscription_id, deployment_method, deployment_stack_host_id, deployment_stack_name, dspm_regions, environment, event_hub_settings, management_group_ids, microsoft_graph_permission_ids, microsoft_graph_permission_ids_readonly, products, resource_name_prefix, resource_name_suffix, status, subscription_ids, tags, template_version, tenant_id].hash
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
