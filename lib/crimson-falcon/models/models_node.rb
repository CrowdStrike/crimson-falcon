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
  class ModelsNode
    attr_accessor :agents

    attr_accessor :annotations_list

    attr_accessor :architecture

    attr_accessor :base_image

    attr_accessor :cid

    attr_accessor :cloud_account_id

    attr_accessor :cloud_instance_id

    attr_accessor :cloud_instance_type

    attr_accessor :cloud_name

    attr_accessor :cloud_region

    attr_accessor :cluster_id

    attr_accessor :cluster_name

    attr_accessor :container_count

    attr_accessor :container_runtime_version

    attr_accessor :cpu

    attr_accessor :created_at

    attr_accessor :external_ip

    attr_accessor :first_seen

    attr_accessor :ipv4

    attr_accessor :ipv6

    attr_accessor :kernel_version

    attr_accessor :kubernetes_version

    attr_accessor :labels

    attr_accessor :labels_list

    attr_accessor :last_seen

    attr_accessor :linux_sensor_coverage

    attr_accessor :memory

    attr_accessor :node_id

    attr_accessor :node_name

    attr_accessor :os

    attr_accessor :pod_cidr

    attr_accessor :pod_count

    attr_accessor :provider_id

    attr_accessor :storage

    attr_accessor :uid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agents' => :'agents',
        :'annotations_list' => :'annotations_list',
        :'architecture' => :'architecture',
        :'base_image' => :'base_image',
        :'cid' => :'cid',
        :'cloud_account_id' => :'cloud_account_id',
        :'cloud_instance_id' => :'cloud_instance_id',
        :'cloud_instance_type' => :'cloud_instance_type',
        :'cloud_name' => :'cloud_name',
        :'cloud_region' => :'cloud_region',
        :'cluster_id' => :'cluster_id',
        :'cluster_name' => :'cluster_name',
        :'container_count' => :'container_count',
        :'container_runtime_version' => :'container_runtime_version',
        :'cpu' => :'cpu',
        :'created_at' => :'created_at',
        :'external_ip' => :'external_ip',
        :'first_seen' => :'first_seen',
        :'ipv4' => :'ipv4',
        :'ipv6' => :'ipv6',
        :'kernel_version' => :'kernel_version',
        :'kubernetes_version' => :'kubernetes_version',
        :'labels' => :'labels',
        :'labels_list' => :'labels_list',
        :'last_seen' => :'last_seen',
        :'linux_sensor_coverage' => :'linux_sensor_coverage',
        :'memory' => :'memory',
        :'node_id' => :'node_id',
        :'node_name' => :'node_name',
        :'os' => :'os',
        :'pod_cidr' => :'pod_cidr',
        :'pod_count' => :'pod_count',
        :'provider_id' => :'provider_id',
        :'storage' => :'storage',
        :'uid' => :'uid'
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
        :'annotations_list' => :'Array<String>',
        :'architecture' => :'String',
        :'base_image' => :'String',
        :'cid' => :'String',
        :'cloud_account_id' => :'String',
        :'cloud_instance_id' => :'String',
        :'cloud_instance_type' => :'String',
        :'cloud_name' => :'String',
        :'cloud_region' => :'String',
        :'cluster_id' => :'String',
        :'cluster_name' => :'String',
        :'container_count' => :'Integer',
        :'container_runtime_version' => :'String',
        :'cpu' => :'String',
        :'created_at' => :'String',
        :'external_ip' => :'String',
        :'first_seen' => :'String',
        :'ipv4' => :'String',
        :'ipv6' => :'String',
        :'kernel_version' => :'String',
        :'kubernetes_version' => :'String',
        :'labels' => :'Hash<String, String>',
        :'labels_list' => :'Array<String>',
        :'last_seen' => :'String',
        :'linux_sensor_coverage' => :'Boolean',
        :'memory' => :'String',
        :'node_id' => :'String',
        :'node_name' => :'String',
        :'os' => :'String',
        :'pod_cidr' => :'String',
        :'pod_count' => :'Integer',
        :'provider_id' => :'String',
        :'storage' => :'String',
        :'uid' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsNode` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsNode`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agents')
        if (value = attributes[:'agents']).is_a?(Array)
          self.agents = value
        end
      end

      if attributes.key?(:'annotations_list')
        if (value = attributes[:'annotations_list']).is_a?(Array)
          self.annotations_list = value
        end
      end

      if attributes.key?(:'architecture')
        self.architecture = attributes[:'architecture']
      end

      if attributes.key?(:'base_image')
        self.base_image = attributes[:'base_image']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cloud_account_id')
        self.cloud_account_id = attributes[:'cloud_account_id']
      end

      if attributes.key?(:'cloud_instance_id')
        self.cloud_instance_id = attributes[:'cloud_instance_id']
      end

      if attributes.key?(:'cloud_instance_type')
        self.cloud_instance_type = attributes[:'cloud_instance_type']
      end

      if attributes.key?(:'cloud_name')
        self.cloud_name = attributes[:'cloud_name']
      end

      if attributes.key?(:'cloud_region')
        self.cloud_region = attributes[:'cloud_region']
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

      if attributes.key?(:'container_runtime_version')
        self.container_runtime_version = attributes[:'container_runtime_version']
      end

      if attributes.key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'external_ip')
        self.external_ip = attributes[:'external_ip']
      end

      if attributes.key?(:'first_seen')
        self.first_seen = attributes[:'first_seen']
      end

      if attributes.key?(:'ipv4')
        self.ipv4 = attributes[:'ipv4']
      end

      if attributes.key?(:'ipv6')
        self.ipv6 = attributes[:'ipv6']
      end

      if attributes.key?(:'kernel_version')
        self.kernel_version = attributes[:'kernel_version']
      end

      if attributes.key?(:'kubernetes_version')
        self.kubernetes_version = attributes[:'kubernetes_version']
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

      if attributes.key?(:'linux_sensor_coverage')
        self.linux_sensor_coverage = attributes[:'linux_sensor_coverage']
      end

      if attributes.key?(:'memory')
        self.memory = attributes[:'memory']
      end

      if attributes.key?(:'node_id')
        self.node_id = attributes[:'node_id']
      end

      if attributes.key?(:'node_name')
        self.node_name = attributes[:'node_name']
      end

      if attributes.key?(:'os')
        self.os = attributes[:'os']
      end

      if attributes.key?(:'pod_cidr')
        self.pod_cidr = attributes[:'pod_cidr']
      end

      if attributes.key?(:'pod_count')
        self.pod_count = attributes[:'pod_count']
      end

      if attributes.key?(:'provider_id')
        self.provider_id = attributes[:'provider_id']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end

      if attributes.key?(:'uid')
        self.uid = attributes[:'uid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @agents.nil?
        invalid_properties.push('invalid value for "agents", agents cannot be nil.')
      end

      if @annotations_list.nil?
        invalid_properties.push('invalid value for "annotations_list", annotations_list cannot be nil.')
      end

      if @architecture.nil?
        invalid_properties.push('invalid value for "architecture", architecture cannot be nil.')
      end

      if @base_image.nil?
        invalid_properties.push('invalid value for "base_image", base_image cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @cloud_account_id.nil?
        invalid_properties.push('invalid value for "cloud_account_id", cloud_account_id cannot be nil.')
      end

      if @cloud_instance_id.nil?
        invalid_properties.push('invalid value for "cloud_instance_id", cloud_instance_id cannot be nil.')
      end

      if @cloud_instance_type.nil?
        invalid_properties.push('invalid value for "cloud_instance_type", cloud_instance_type cannot be nil.')
      end

      if @cloud_name.nil?
        invalid_properties.push('invalid value for "cloud_name", cloud_name cannot be nil.')
      end

      if @cloud_region.nil?
        invalid_properties.push('invalid value for "cloud_region", cloud_region cannot be nil.')
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

      if @container_runtime_version.nil?
        invalid_properties.push('invalid value for "container_runtime_version", container_runtime_version cannot be nil.')
      end

      if @cpu.nil?
        invalid_properties.push('invalid value for "cpu", cpu cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @external_ip.nil?
        invalid_properties.push('invalid value for "external_ip", external_ip cannot be nil.')
      end

      if @first_seen.nil?
        invalid_properties.push('invalid value for "first_seen", first_seen cannot be nil.')
      end

      if @ipv4.nil?
        invalid_properties.push('invalid value for "ipv4", ipv4 cannot be nil.')
      end

      if @ipv6.nil?
        invalid_properties.push('invalid value for "ipv6", ipv6 cannot be nil.')
      end

      if @kernel_version.nil?
        invalid_properties.push('invalid value for "kernel_version", kernel_version cannot be nil.')
      end

      if @kubernetes_version.nil?
        invalid_properties.push('invalid value for "kubernetes_version", kubernetes_version cannot be nil.')
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

      if @linux_sensor_coverage.nil?
        invalid_properties.push('invalid value for "linux_sensor_coverage", linux_sensor_coverage cannot be nil.')
      end

      if @memory.nil?
        invalid_properties.push('invalid value for "memory", memory cannot be nil.')
      end

      if @node_id.nil?
        invalid_properties.push('invalid value for "node_id", node_id cannot be nil.')
      end

      if @node_name.nil?
        invalid_properties.push('invalid value for "node_name", node_name cannot be nil.')
      end

      if @os.nil?
        invalid_properties.push('invalid value for "os", os cannot be nil.')
      end

      if @pod_cidr.nil?
        invalid_properties.push('invalid value for "pod_cidr", pod_cidr cannot be nil.')
      end

      if @pod_count.nil?
        invalid_properties.push('invalid value for "pod_count", pod_count cannot be nil.')
      end

      if @provider_id.nil?
        invalid_properties.push('invalid value for "provider_id", provider_id cannot be nil.')
      end

      if @storage.nil?
        invalid_properties.push('invalid value for "storage", storage cannot be nil.')
      end

      if @uid.nil?
        invalid_properties.push('invalid value for "uid", uid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @agents.nil?
      return false if @annotations_list.nil?
      return false if @architecture.nil?
      return false if @base_image.nil?
      return false if @cid.nil?
      return false if @cloud_account_id.nil?
      return false if @cloud_instance_id.nil?
      return false if @cloud_instance_type.nil?
      return false if @cloud_name.nil?
      return false if @cloud_region.nil?
      return false if @cluster_id.nil?
      return false if @cluster_name.nil?
      return false if @container_count.nil?
      return false if @container_runtime_version.nil?
      return false if @cpu.nil?
      return false if @created_at.nil?
      return false if @external_ip.nil?
      return false if @first_seen.nil?
      return false if @ipv4.nil?
      return false if @ipv6.nil?
      return false if @kernel_version.nil?
      return false if @kubernetes_version.nil?
      return false if @labels.nil?
      return false if @labels_list.nil?
      return false if @last_seen.nil?
      return false if @linux_sensor_coverage.nil?
      return false if @memory.nil?
      return false if @node_id.nil?
      return false if @node_name.nil?
      return false if @os.nil?
      return false if @pod_cidr.nil?
      return false if @pod_count.nil?
      return false if @provider_id.nil?
      return false if @storage.nil?
      return false if @uid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agents == o.agents &&
          annotations_list == o.annotations_list &&
          architecture == o.architecture &&
          base_image == o.base_image &&
          cid == o.cid &&
          cloud_account_id == o.cloud_account_id &&
          cloud_instance_id == o.cloud_instance_id &&
          cloud_instance_type == o.cloud_instance_type &&
          cloud_name == o.cloud_name &&
          cloud_region == o.cloud_region &&
          cluster_id == o.cluster_id &&
          cluster_name == o.cluster_name &&
          container_count == o.container_count &&
          container_runtime_version == o.container_runtime_version &&
          cpu == o.cpu &&
          created_at == o.created_at &&
          external_ip == o.external_ip &&
          first_seen == o.first_seen &&
          ipv4 == o.ipv4 &&
          ipv6 == o.ipv6 &&
          kernel_version == o.kernel_version &&
          kubernetes_version == o.kubernetes_version &&
          labels == o.labels &&
          labels_list == o.labels_list &&
          last_seen == o.last_seen &&
          linux_sensor_coverage == o.linux_sensor_coverage &&
          memory == o.memory &&
          node_id == o.node_id &&
          node_name == o.node_name &&
          os == o.os &&
          pod_cidr == o.pod_cidr &&
          pod_count == o.pod_count &&
          provider_id == o.provider_id &&
          storage == o.storage &&
          uid == o.uid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agents, annotations_list, architecture, base_image, cid, cloud_account_id, cloud_instance_id, cloud_instance_type, cloud_name, cloud_region, cluster_id, cluster_name, container_count, container_runtime_version, cpu, created_at, external_ip, first_seen, ipv4, ipv6, kernel_version, kubernetes_version, labels, labels_list, last_seen, linux_sensor_coverage, memory, node_id, node_name, os, pod_cidr, pod_count, provider_id, storage, uid].hash
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
