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
  class RegistrationAzureAccountV1Ext
    attr_accessor :created_at

    attr_accessor :deleted_at

    attr_accessor :id

    attr_accessor :updated_at

    attr_accessor :account_type

    # Permissions status returned via API.
    attr_accessor :azure_permissions_status

    attr_accessor :cid

    attr_accessor :client_id

    attr_accessor :cloud_scopes

    attr_accessor :conditions

    attr_accessor :credentials_end_date

    attr_accessor :credentials_type

    # Default Azure Subscription ID to provision shared IOA infrastructure.
    attr_accessor :default_subscription_id

    attr_accessor :environment

    attr_accessor :failed_permissions_str

    attr_accessor :ioa_status

    attr_accessor :iom_status

    # Is CSPM Lite enabled.
    attr_accessor :is_cspm_lite

    attr_accessor :parent_management_group_id

    attr_accessor :parent_management_group_name

    attr_accessor :passed_permissions_str

    attr_accessor :public_certificate

    attr_accessor :public_certificate_raw

    attr_accessor :role_assignments

    # Whether to show modal on the UI instructing existing D4C Azure customer to reregister subscriptions for CSPM.
    attr_accessor :show_modal

    # Account registration status.
    attr_accessor :status

    # Azure Subscription ID.
    attr_accessor :subscription_id

    # Azure Subscription Name.
    attr_accessor :subscription_name

    # Azure Tenant ID to use.
    attr_accessor :tenant_id

    attr_accessor :years_valid

    attr_accessor :obj_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'CreatedAt',
        :'deleted_at' => :'DeletedAt',
        :'id' => :'ID',
        :'updated_at' => :'UpdatedAt',
        :'account_type' => :'account_type',
        :'azure_permissions_status' => :'azure_permissions_status',
        :'cid' => :'cid',
        :'client_id' => :'client_id',
        :'cloud_scopes' => :'cloud_scopes',
        :'conditions' => :'conditions',
        :'credentials_end_date' => :'credentials_end_date',
        :'credentials_type' => :'credentials_type',
        :'default_subscription_id' => :'default_subscription_id',
        :'environment' => :'environment',
        :'failed_permissions_str' => :'failed_permissions_str',
        :'ioa_status' => :'ioa_status',
        :'iom_status' => :'iom_status',
        :'is_cspm_lite' => :'is_cspm_lite',
        :'parent_management_group_id' => :'parent_management_group_id',
        :'parent_management_group_name' => :'parent_management_group_name',
        :'passed_permissions_str' => :'passed_permissions_str',
        :'public_certificate' => :'public_certificate',
        :'public_certificate_raw' => :'public_certificate_raw',
        :'role_assignments' => :'role_assignments',
        :'show_modal' => :'show_modal',
        :'status' => :'status',
        :'subscription_id' => :'subscription_id',
        :'subscription_name' => :'subscription_name',
        :'tenant_id' => :'tenant_id',
        :'years_valid' => :'years_valid',
        :'obj_id' => :'obj_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'id' => :'Integer',
        :'updated_at' => :'Time',
        :'account_type' => :'String',
        :'azure_permissions_status' => :'Array<DomainPermission>',
        :'cid' => :'String',
        :'client_id' => :'String',
        :'cloud_scopes' => :'Array<DomainCloudScope>',
        :'conditions' => :'Array<StatemgmtCondition>',
        :'credentials_end_date' => :'Time',
        :'credentials_type' => :'String',
        :'default_subscription_id' => :'String',
        :'environment' => :'String',
        :'failed_permissions_str' => :'String',
        :'ioa_status' => :'String',
        :'iom_status' => :'String',
        :'is_cspm_lite' => :'Boolean',
        :'parent_management_group_id' => :'String',
        :'parent_management_group_name' => :'String',
        :'passed_permissions_str' => :'String',
        :'public_certificate' => :'String',
        :'public_certificate_raw' => :'String',
        :'role_assignments' => :'Array<AzureDBRoleAssignment>',
        :'show_modal' => :'Boolean',
        :'status' => :'String',
        :'subscription_id' => :'String',
        :'subscription_name' => :'String',
        :'tenant_id' => :'String',
        :'years_valid' => :'Integer',
        :'obj_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::RegistrationAzureAccountV1Ext` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::RegistrationAzureAccountV1Ext`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'azure_permissions_status')
        if (value = attributes[:'azure_permissions_status']).is_a?(Array)
          self.azure_permissions_status = value
        end
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'cloud_scopes')
        if (value = attributes[:'cloud_scopes']).is_a?(Array)
          self.cloud_scopes = value
        end
      end

      if attributes.key?(:'conditions')
        if (value = attributes[:'conditions']).is_a?(Array)
          self.conditions = value
        end
      end

      if attributes.key?(:'credentials_end_date')
        self.credentials_end_date = attributes[:'credentials_end_date']
      end

      if attributes.key?(:'credentials_type')
        self.credentials_type = attributes[:'credentials_type']
      end

      if attributes.key?(:'default_subscription_id')
        self.default_subscription_id = attributes[:'default_subscription_id']
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.key?(:'failed_permissions_str')
        self.failed_permissions_str = attributes[:'failed_permissions_str']
      end

      if attributes.key?(:'ioa_status')
        self.ioa_status = attributes[:'ioa_status']
      end

      if attributes.key?(:'iom_status')
        self.iom_status = attributes[:'iom_status']
      end

      if attributes.key?(:'is_cspm_lite')
        self.is_cspm_lite = attributes[:'is_cspm_lite']
      end

      if attributes.key?(:'parent_management_group_id')
        self.parent_management_group_id = attributes[:'parent_management_group_id']
      end

      if attributes.key?(:'parent_management_group_name')
        self.parent_management_group_name = attributes[:'parent_management_group_name']
      end

      if attributes.key?(:'passed_permissions_str')
        self.passed_permissions_str = attributes[:'passed_permissions_str']
      end

      if attributes.key?(:'public_certificate')
        self.public_certificate = attributes[:'public_certificate']
      end

      if attributes.key?(:'public_certificate_raw')
        self.public_certificate_raw = attributes[:'public_certificate_raw']
      end

      if attributes.key?(:'role_assignments')
        if (value = attributes[:'role_assignments']).is_a?(Array)
          self.role_assignments = value
        end
      end

      if attributes.key?(:'show_modal')
        self.show_modal = attributes[:'show_modal']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subscription_id')
        self.subscription_id = attributes[:'subscription_id']
      end

      if attributes.key?(:'subscription_name')
        self.subscription_name = attributes[:'subscription_name']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'years_valid')
        self.years_valid = attributes[:'years_valid']
      end

      if attributes.key?(:'obj_id')
        self.obj_id = attributes[:'obj_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @deleted_at.nil?
        invalid_properties.push('invalid value for "deleted_at", deleted_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @azure_permissions_status.nil?
        invalid_properties.push('invalid value for "azure_permissions_status", azure_permissions_status cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @failed_permissions_str.nil?
        invalid_properties.push('invalid value for "failed_permissions_str", failed_permissions_str cannot be nil.')
      end

      if @ioa_status.nil?
        invalid_properties.push('invalid value for "ioa_status", ioa_status cannot be nil.')
      end

      if @iom_status.nil?
        invalid_properties.push('invalid value for "iom_status", iom_status cannot be nil.')
      end

      if @passed_permissions_str.nil?
        invalid_properties.push('invalid value for "passed_permissions_str", passed_permissions_str cannot be nil.')
      end

      if @show_modal.nil?
        invalid_properties.push('invalid value for "show_modal", show_modal cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_at.nil?
      return false if @deleted_at.nil?
      return false if @id.nil?
      return false if @updated_at.nil?
      return false if @azure_permissions_status.nil?
      return false if @cid.nil?
      return false if @failed_permissions_str.nil?
      return false if @ioa_status.nil?
      return false if @iom_status.nil?
      return false if @passed_permissions_str.nil?
      return false if @show_modal.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          id == o.id &&
          updated_at == o.updated_at &&
          account_type == o.account_type &&
          azure_permissions_status == o.azure_permissions_status &&
          cid == o.cid &&
          client_id == o.client_id &&
          cloud_scopes == o.cloud_scopes &&
          conditions == o.conditions &&
          credentials_end_date == o.credentials_end_date &&
          credentials_type == o.credentials_type &&
          default_subscription_id == o.default_subscription_id &&
          environment == o.environment &&
          failed_permissions_str == o.failed_permissions_str &&
          ioa_status == o.ioa_status &&
          iom_status == o.iom_status &&
          is_cspm_lite == o.is_cspm_lite &&
          parent_management_group_id == o.parent_management_group_id &&
          parent_management_group_name == o.parent_management_group_name &&
          passed_permissions_str == o.passed_permissions_str &&
          public_certificate == o.public_certificate &&
          public_certificate_raw == o.public_certificate_raw &&
          role_assignments == o.role_assignments &&
          show_modal == o.show_modal &&
          status == o.status &&
          subscription_id == o.subscription_id &&
          subscription_name == o.subscription_name &&
          tenant_id == o.tenant_id &&
          years_valid == o.years_valid &&
          obj_id == o.obj_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, deleted_at, id, updated_at, account_type, azure_permissions_status, cid, client_id, cloud_scopes, conditions, credentials_end_date, credentials_type, default_subscription_id, environment, failed_permissions_str, ioa_status, iom_status, is_cspm_lite, parent_management_group_id, parent_management_group_name, passed_permissions_str, public_certificate, public_certificate_raw, role_assignments, show_modal, status, subscription_id, subscription_name, tenant_id, years_valid, obj_id].hash
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
