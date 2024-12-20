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
  class ModelsDeployment
    attr_accessor :agents

    attr_accessor :annotations

    attr_accessor :annotations_list

    attr_accessor :cid

    attr_accessor :cloud_account_id

    attr_accessor :cloud_name

    attr_accessor :cloud_region

    attr_accessor :cloud_service

    attr_accessor :cluster_id

    attr_accessor :cluster_name

    attr_accessor :container_count

    attr_accessor :created_at

    attr_accessor :deleted_at

    attr_accessor :deployment_id

    attr_accessor :deployment_name

    attr_accessor :first_seen

    attr_accessor :kac_agent_id

    attr_accessor :labels

    attr_accessor :labels_list

    attr_accessor :last_seen

    attr_accessor :management_status

    attr_accessor :namespace

    attr_accessor :pod_count

    attr_accessor :resource_status

    attr_accessor :resource_version

    attr_accessor :revision

    attr_accessor :selector

    attr_accessor :service_account_name

    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'annotations' => :'annotations',
        :'annotations_list' => :'annotations_list',
        :'cid' => :'cid',
        :'cloud_account_id' => :'cloud_account_id',
        :'cloud_name' => :'cloud_name',
        :'cloud_region' => :'cloud_region',
        :'cloud_service' => :'cloud_service',
        :'cluster_id' => :'cluster_id',
        :'cluster_name' => :'cluster_name',
        :'container_count' => :'container_count',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'deployment_id' => :'deployment_id',
        :'deployment_name' => :'deployment_name',
        :'first_seen' => :'first_seen',
        :'kac_agent_id' => :'kac_agent_id',
        :'labels' => :'labels',
        :'labels_list' => :'labels_list',
        :'last_seen' => :'last_seen',
        :'management_status' => :'management_status',
        :'namespace' => :'namespace',
        :'pod_count' => :'pod_count',
        :'resource_status' => :'resource_status',
        :'resource_version' => :'resource_version',
        :'revision' => :'revision',
        :'selector' => :'selector',
        :'service_account_name' => :'service_account_name',
        :'status' => :'status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agents' => :'Array<Hash>',
        :'annotations' => :'Hash<String, String>',
        :'annotations_list' => :'Array<String>',
        :'cid' => :'String',
        :'cloud_account_id' => :'String',
        :'cloud_name' => :'String',
        :'cloud_region' => :'String',
        :'cloud_service' => :'String',
        :'cluster_id' => :'String',
        :'cluster_name' => :'String',
        :'container_count' => :'Integer',
        :'created_at' => :'String',
        :'deleted_at' => :'String',
        :'deployment_id' => :'String',
        :'deployment_name' => :'String',
        :'first_seen' => :'String',
        :'kac_agent_id' => :'String',
        :'labels' => :'Hash<String, String>',
        :'labels_list' => :'Array<String>',
        :'last_seen' => :'String',
        :'management_status' => :'String',
        :'namespace' => :'String',
        :'pod_count' => :'Integer',
        :'resource_status' => :'String',
        :'resource_version' => :'Integer',
        :'revision' => :'Integer',
        :'selector' => :'String',
        :'service_account_name' => :'String',
        :'status' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsDeployment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsDeployment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.key?(:'annotations')
        if (value = attributes[:'annotations']).is_a?(Hash)
          self.annotations = value
        end
      end

      if attributes.key?(:'annotations_list')
        if (value = attributes[:'annotations_list']).is_a?(Array)
          self.annotations_list = value
        end
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cloud_account_id')
        self.cloud_account_id = attributes[:'cloud_account_id']
      end

      if attributes.key?(:'cloud_name')
        self.cloud_name = attributes[:'cloud_name']
      end

      if attributes.key?(:'cloud_region')
        self.cloud_region = attributes[:'cloud_region']
      end

      if attributes.key?(:'cloud_service')
        self.cloud_service = attributes[:'cloud_service']
      end

      if attributes.key?(:'cluster_id')
        self.cluster_id = attributes[:'cluster_id']
      end

      if attributes.key?(:'cluster_name')
        self.cluster_name = attributes[:'cluster_name']
      end

      if attributes.key?(:'container_count')
        self.container_count = attributes[:'container_count']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'deployment_id')
        self.deployment_id = attributes[:'deployment_id']
      end

      if attributes.key?(:'deployment_name')
        self.deployment_name = attributes[:'deployment_name']
      end

      if attributes.key?(:'first_seen')
        self.first_seen = attributes[:'first_seen']
      end

      if attributes.key?(:'kac_agent_id')
        self.kac_agent_id = attributes[:'kac_agent_id']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Hash)
          self.labels = value
        end
      end

      if attributes.key?(:'labels_list')
        if (value = attributes[:'labels_list']).is_a?(Array)
          self.labels_list = value
        end
      end

      if attributes.key?(:'last_seen')
        self.last_seen = attributes[:'last_seen']
      end

      if attributes.key?(:'management_status')
        self.management_status = attributes[:'management_status']
      end

      if attributes.key?(:'namespace')
        self.namespace = attributes[:'namespace']
      end

      if attributes.key?(:'pod_count')
        self.pod_count = attributes[:'pod_count']
      end

      if attributes.key?(:'resource_status')
        self.resource_status = attributes[:'resource_status']
      end

      if attributes.key?(:'resource_version')
        self.resource_version = attributes[:'resource_version']
      end

      if attributes.key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.key?(:'selector')
        self.selector = attributes[:'selector']
      end

      if attributes.key?(:'service_account_name')
        self.service_account_name = attributes[:'service_account_name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @agents.nil?
        invalid_properties.push('invalid value for "agents", agents cannot be nil.')
      end

      if @annotations.nil?
        invalid_properties.push('invalid value for "annotations", annotations cannot be nil.')
      end

      if @annotations_list.nil?
        invalid_properties.push('invalid value for "annotations_list", annotations_list cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @cloud_account_id.nil?
        invalid_properties.push('invalid value for "cloud_account_id", cloud_account_id cannot be nil.')
      end

      if @cloud_name.nil?
        invalid_properties.push('invalid value for "cloud_name", cloud_name cannot be nil.')
      end

      if @cloud_region.nil?
        invalid_properties.push('invalid value for "cloud_region", cloud_region cannot be nil.')
      end

      if @cloud_service.nil?
        invalid_properties.push('invalid value for "cloud_service", cloud_service cannot be nil.')
      end

      if @cluster_id.nil?
        invalid_properties.push('invalid value for "cluster_id", cluster_id cannot be nil.')
      end

      if @cluster_name.nil?
        invalid_properties.push('invalid value for "cluster_name", cluster_name cannot be nil.')
      end

      if @container_count.nil?
        invalid_properties.push('invalid value for "container_count", container_count cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @deployment_id.nil?
        invalid_properties.push('invalid value for "deployment_id", deployment_id cannot be nil.')
      end

      if @deployment_name.nil?
        invalid_properties.push('invalid value for "deployment_name", deployment_name cannot be nil.')
      end

      if @first_seen.nil?
        invalid_properties.push('invalid value for "first_seen", first_seen cannot be nil.')
      end

      if @kac_agent_id.nil?
        invalid_properties.push('invalid value for "kac_agent_id", kac_agent_id cannot be nil.')
      end

      if @labels.nil?
        invalid_properties.push('invalid value for "labels", labels cannot be nil.')
      end

      if @labels_list.nil?
        invalid_properties.push('invalid value for "labels_list", labels_list cannot be nil.')
      end

      if @last_seen.nil?
        invalid_properties.push('invalid value for "last_seen", last_seen cannot be nil.')
      end

      if @management_status.nil?
        invalid_properties.push('invalid value for "management_status", management_status cannot be nil.')
      end

      if @namespace.nil?
        invalid_properties.push('invalid value for "namespace", namespace cannot be nil.')
      end

      if @pod_count.nil?
        invalid_properties.push('invalid value for "pod_count", pod_count cannot be nil.')
      end

      if @resource_status.nil?
        invalid_properties.push('invalid value for "resource_status", resource_status cannot be nil.')
      end

      if @resource_version.nil?
        invalid_properties.push('invalid value for "resource_version", resource_version cannot be nil.')
      end

      if @selector.nil?
        invalid_properties.push('invalid value for "selector", selector cannot be nil.')
      end

      if @service_account_name.nil?
        invalid_properties.push('invalid value for "service_account_name", service_account_name cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @agents.nil?
      return false if @annotations.nil?
      return false if @annotations_list.nil?
      return false if @cid.nil?
      return false if @cloud_account_id.nil?
      return false if @cloud_name.nil?
      return false if @cloud_region.nil?
      return false if @cloud_service.nil?
      return false if @cluster_id.nil?
      return false if @cluster_name.nil?
      return false if @container_count.nil?
      return false if @created_at.nil?
      return false if @deployment_id.nil?
      return false if @deployment_name.nil?
      return false if @first_seen.nil?
      return false if @kac_agent_id.nil?
      return false if @labels.nil?
      return false if @labels_list.nil?
      return false if @last_seen.nil?
      return false if @management_status.nil?
      return false if @namespace.nil?
      return false if @pod_count.nil?
      return false if @resource_status.nil?
      return false if @resource_version.nil?
      return false if @selector.nil?
      return false if @service_account_name.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agents == o.agents &&
          annotations == o.annotations &&
          annotations_list == o.annotations_list &&
          cid == o.cid &&
          cloud_account_id == o.cloud_account_id &&
          cloud_name == o.cloud_name &&
          cloud_region == o.cloud_region &&
          cloud_service == o.cloud_service &&
          cluster_id == o.cluster_id &&
          cluster_name == o.cluster_name &&
          container_count == o.container_count &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          deployment_id == o.deployment_id &&
          deployment_name == o.deployment_name &&
          first_seen == o.first_seen &&
          kac_agent_id == o.kac_agent_id &&
          labels == o.labels &&
          labels_list == o.labels_list &&
          last_seen == o.last_seen &&
          management_status == o.management_status &&
          namespace == o.namespace &&
          pod_count == o.pod_count &&
          resource_status == o.resource_status &&
          resource_version == o.resource_version &&
          revision == o.revision &&
          selector == o.selector &&
          service_account_name == o.service_account_name &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agents, annotations, annotations_list, cid, cloud_account_id, cloud_name, cloud_region, cloud_service, cluster_id, cluster_name, container_count, created_at, deleted_at, deployment_id, deployment_name, first_seen, kac_agent_id, labels, labels_list, last_seen, management_status, namespace, pod_count, resource_status, resource_version, revision, selector, service_account_name, status].hash
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
