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
  class ModelsAPIRuntimeDetection
    attr_accessor :action_taken

    attr_accessor :agent_type

    attr_accessor :aid

    attr_accessor :assigned_to

    attr_accessor :cid

    attr_accessor :cloud

    attr_accessor :cloud_account_id

    attr_accessor :cloud_id

    attr_accessor :cloud_instance_id

    attr_accessor :cloud_name

    attr_accessor :cluster_name

    attr_accessor :command_line

    attr_accessor :computer_name

    attr_accessor :container_devices

    attr_accessor :container_id

    attr_accessor :container_interactive_mode

    attr_accessor :container_name

    attr_accessor :container_network_ip_address

    attr_accessor :container_privileged

    attr_accessor :container_read_only_root_fs

    attr_accessor :container_user_info

    attr_accessor :containers_impacted_count

    attr_accessor :detect_timestamp

    attr_accessor :detection_description

    attr_accessor :detection_id

    attr_accessor :detection_name

    attr_accessor :executable_sha_256

    attr_accessor :file_name

    attr_accessor :file_path

    attr_accessor :host_containers_count

    attr_accessor :host_detections_count

    attr_accessor :host_detections_ids

    attr_accessor :host_id

    attr_accessor :host_last_seen_timestamp

    attr_accessor :host_type

    attr_accessor :image_digest

    attr_accessor :image_first_seen_timestamp

    attr_accessor :image_id

    attr_accessor :image_label

    attr_accessor :image_last_seen_timestamp

    attr_accessor :image_maintainer

    attr_accessor :image_name

    attr_accessor :images_container_count

    attr_accessor :namespace

    attr_accessor :network_ip_address

    attr_accessor :os_version

    attr_accessor :pod_id

    attr_accessor :pod_name

    attr_accessor :pod_namespace

    attr_accessor :sensor_version

    attr_accessor :severity

    attr_accessor :tactic_and_technique

    attr_accessor :type

    attr_accessor :vulnerabilities_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action_taken' => :'action_taken',
        :'agent_type' => :'agent_type',
        :'aid' => :'aid',
        :'assigned_to' => :'assigned_to',
        :'cid' => :'cid',
        :'cloud' => :'cloud',
        :'cloud_account_id' => :'cloud_account_id',
        :'cloud_id' => :'cloud_id',
        :'cloud_instance_id' => :'cloud_instance_id',
        :'cloud_name' => :'cloud_name',
        :'cluster_name' => :'cluster_name',
        :'command_line' => :'command_line',
        :'computer_name' => :'computer_name',
        :'container_devices' => :'container_devices',
        :'container_id' => :'container_id',
        :'container_interactive_mode' => :'container_interactive_mode',
        :'container_name' => :'container_name',
        :'container_network_ip_address' => :'container_network_ip_address',
        :'container_privileged' => :'container_privileged',
        :'container_read_only_root_fs' => :'container_read_only_root_fs',
        :'container_user_info' => :'container_user_info',
        :'containers_impacted_count' => :'containers_impacted_count',
        :'detect_timestamp' => :'detect_timestamp',
        :'detection_description' => :'detection_description',
        :'detection_id' => :'detection_id',
        :'detection_name' => :'detection_name',
        :'executable_sha_256' => :'executable_sha_256',
        :'file_name' => :'file_name',
        :'file_path' => :'file_path',
        :'host_containers_count' => :'host_containers_count',
        :'host_detections_count' => :'host_detections_count',
        :'host_detections_ids' => :'host_detections_ids',
        :'host_id' => :'host_id',
        :'host_last_seen_timestamp' => :'host_last_seen_timestamp',
        :'host_type' => :'host_type',
        :'image_digest' => :'image_digest',
        :'image_first_seen_timestamp' => :'image_first_seen_timestamp',
        :'image_id' => :'image_id',
        :'image_label' => :'image_label',
        :'image_last_seen_timestamp' => :'image_last_seen_timestamp',
        :'image_maintainer' => :'image_maintainer',
        :'image_name' => :'image_name',
        :'images_container_count' => :'images_container_count',
        :'namespace' => :'namespace',
        :'network_ip_address' => :'network_ip_address',
        :'os_version' => :'os_version',
        :'pod_id' => :'pod_id',
        :'pod_name' => :'pod_name',
        :'pod_namespace' => :'pod_namespace',
        :'sensor_version' => :'sensor_version',
        :'severity' => :'severity',
        :'tactic_and_technique' => :'tactic_and_technique',
        :'type' => :'type',
        :'vulnerabilities_count' => :'vulnerabilities_count'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_taken' => :'String',
        :'agent_type' => :'String',
        :'aid' => :'String',
        :'assigned_to' => :'String',
        :'cid' => :'String',
        :'cloud' => :'String',
        :'cloud_account_id' => :'String',
        :'cloud_id' => :'String',
        :'cloud_instance_id' => :'String',
        :'cloud_name' => :'String',
        :'cluster_name' => :'String',
        :'command_line' => :'String',
        :'computer_name' => :'String',
        :'container_devices' => :'Array<String>',
        :'container_id' => :'String',
        :'container_interactive_mode' => :'String',
        :'container_name' => :'String',
        :'container_network_ip_address' => :'String',
        :'container_privileged' => :'String',
        :'container_read_only_root_fs' => :'String',
        :'container_user_info' => :'String',
        :'containers_impacted_count' => :'String',
        :'detect_timestamp' => :'String',
        :'detection_description' => :'String',
        :'detection_id' => :'String',
        :'detection_name' => :'Array<String>',
        :'executable_sha_256' => :'String',
        :'file_name' => :'String',
        :'file_path' => :'String',
        :'host_containers_count' => :'String',
        :'host_detections_count' => :'String',
        :'host_detections_ids' => :'Array<String>',
        :'host_id' => :'String',
        :'host_last_seen_timestamp' => :'String',
        :'host_type' => :'String',
        :'image_digest' => :'String',
        :'image_first_seen_timestamp' => :'String',
        :'image_id' => :'String',
        :'image_label' => :'String',
        :'image_last_seen_timestamp' => :'String',
        :'image_maintainer' => :'String',
        :'image_name' => :'String',
        :'images_container_count' => :'String',
        :'namespace' => :'String',
        :'network_ip_address' => :'String',
        :'os_version' => :'String',
        :'pod_id' => :'String',
        :'pod_name' => :'String',
        :'pod_namespace' => :'String',
        :'sensor_version' => :'String',
        :'severity' => :'String',
        :'tactic_and_technique' => :'String',
        :'type' => :'String',
        :'vulnerabilities_count' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ModelsAPIRuntimeDetection` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ModelsAPIRuntimeDetection`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action_taken')
        self.action_taken = attributes[:'action_taken']
      end

      if attributes.key?(:'agent_type')
        self.agent_type = attributes[:'agent_type']
      end

      if attributes.key?(:'aid')
        self.aid = attributes[:'aid']
      end

      if attributes.key?(:'assigned_to')
        self.assigned_to = attributes[:'assigned_to']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cloud')
        self.cloud = attributes[:'cloud']
      end

      if attributes.key?(:'cloud_account_id')
        self.cloud_account_id = attributes[:'cloud_account_id']
      end

      if attributes.key?(:'cloud_id')
        self.cloud_id = attributes[:'cloud_id']
      end

      if attributes.key?(:'cloud_instance_id')
        self.cloud_instance_id = attributes[:'cloud_instance_id']
      end

      if attributes.key?(:'cloud_name')
        self.cloud_name = attributes[:'cloud_name']
      end

      if attributes.key?(:'cluster_name')
        self.cluster_name = attributes[:'cluster_name']
      end

      if attributes.key?(:'command_line')
        self.command_line = attributes[:'command_line']
      end

      if attributes.key?(:'computer_name')
        self.computer_name = attributes[:'computer_name']
      end

      if attributes.key?(:'container_devices')
        if (value = attributes[:'container_devices']).is_a?(Array)
          self.container_devices = value
        end
      end

      if attributes.key?(:'container_id')
        self.container_id = attributes[:'container_id']
      end

      if attributes.key?(:'container_interactive_mode')
        self.container_interactive_mode = attributes[:'container_interactive_mode']
      end

      if attributes.key?(:'container_name')
        self.container_name = attributes[:'container_name']
      end

      if attributes.key?(:'container_network_ip_address')
        self.container_network_ip_address = attributes[:'container_network_ip_address']
      end

      if attributes.key?(:'container_privileged')
        self.container_privileged = attributes[:'container_privileged']
      end

      if attributes.key?(:'container_read_only_root_fs')
        self.container_read_only_root_fs = attributes[:'container_read_only_root_fs']
      end

      if attributes.key?(:'container_user_info')
        self.container_user_info = attributes[:'container_user_info']
      end

      if attributes.key?(:'containers_impacted_count')
        self.containers_impacted_count = attributes[:'containers_impacted_count']
      end

      if attributes.key?(:'detect_timestamp')
        self.detect_timestamp = attributes[:'detect_timestamp']
      end

      if attributes.key?(:'detection_description')
        self.detection_description = attributes[:'detection_description']
      end

      if attributes.key?(:'detection_id')
        self.detection_id = attributes[:'detection_id']
      end

      if attributes.key?(:'detection_name')
        if (value = attributes[:'detection_name']).is_a?(Array)
          self.detection_name = value
        end
      end

      if attributes.key?(:'executable_sha_256')
        self.executable_sha_256 = attributes[:'executable_sha_256']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'file_path')
        self.file_path = attributes[:'file_path']
      end

      if attributes.key?(:'host_containers_count')
        self.host_containers_count = attributes[:'host_containers_count']
      end

      if attributes.key?(:'host_detections_count')
        self.host_detections_count = attributes[:'host_detections_count']
      end

      if attributes.key?(:'host_detections_ids')
        if (value = attributes[:'host_detections_ids']).is_a?(Array)
          self.host_detections_ids = value
        end
      end

      if attributes.key?(:'host_id')
        self.host_id = attributes[:'host_id']
      end

      if attributes.key?(:'host_last_seen_timestamp')
        self.host_last_seen_timestamp = attributes[:'host_last_seen_timestamp']
      end

      if attributes.key?(:'host_type')
        self.host_type = attributes[:'host_type']
      end

      if attributes.key?(:'image_digest')
        self.image_digest = attributes[:'image_digest']
      end

      if attributes.key?(:'image_first_seen_timestamp')
        self.image_first_seen_timestamp = attributes[:'image_first_seen_timestamp']
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'image_label')
        self.image_label = attributes[:'image_label']
      end

      if attributes.key?(:'image_last_seen_timestamp')
        self.image_last_seen_timestamp = attributes[:'image_last_seen_timestamp']
      end

      if attributes.key?(:'image_maintainer')
        self.image_maintainer = attributes[:'image_maintainer']
      end

      if attributes.key?(:'image_name')
        self.image_name = attributes[:'image_name']
      end

      if attributes.key?(:'images_container_count')
        self.images_container_count = attributes[:'images_container_count']
      end

      if attributes.key?(:'namespace')
        self.namespace = attributes[:'namespace']
      end

      if attributes.key?(:'network_ip_address')
        self.network_ip_address = attributes[:'network_ip_address']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'pod_id')
        self.pod_id = attributes[:'pod_id']
      end

      if attributes.key?(:'pod_name')
        self.pod_name = attributes[:'pod_name']
      end

      if attributes.key?(:'pod_namespace')
        self.pod_namespace = attributes[:'pod_namespace']
      end

      if attributes.key?(:'sensor_version')
        self.sensor_version = attributes[:'sensor_version']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'tactic_and_technique')
        self.tactic_and_technique = attributes[:'tactic_and_technique']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'vulnerabilities_count')
        self.vulnerabilities_count = attributes[:'vulnerabilities_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action_taken.nil?
        invalid_properties.push('invalid value for "action_taken", action_taken cannot be nil.')
      end

      if @agent_type.nil?
        invalid_properties.push('invalid value for "agent_type", agent_type cannot be nil.')
      end

      if @aid.nil?
        invalid_properties.push('invalid value for "aid", aid cannot be nil.')
      end

      if @assigned_to.nil?
        invalid_properties.push('invalid value for "assigned_to", assigned_to cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @cloud.nil?
        invalid_properties.push('invalid value for "cloud", cloud cannot be nil.')
      end

      if @cloud_account_id.nil?
        invalid_properties.push('invalid value for "cloud_account_id", cloud_account_id cannot be nil.')
      end

      if @cloud_id.nil?
        invalid_properties.push('invalid value for "cloud_id", cloud_id cannot be nil.')
      end

      if @cloud_instance_id.nil?
        invalid_properties.push('invalid value for "cloud_instance_id", cloud_instance_id cannot be nil.')
      end

      if @cloud_name.nil?
        invalid_properties.push('invalid value for "cloud_name", cloud_name cannot be nil.')
      end

      if @cluster_name.nil?
        invalid_properties.push('invalid value for "cluster_name", cluster_name cannot be nil.')
      end

      if @command_line.nil?
        invalid_properties.push('invalid value for "command_line", command_line cannot be nil.')
      end

      if @computer_name.nil?
        invalid_properties.push('invalid value for "computer_name", computer_name cannot be nil.')
      end

      if @container_devices.nil?
        invalid_properties.push('invalid value for "container_devices", container_devices cannot be nil.')
      end

      if @container_id.nil?
        invalid_properties.push('invalid value for "container_id", container_id cannot be nil.')
      end

      if @container_interactive_mode.nil?
        invalid_properties.push('invalid value for "container_interactive_mode", container_interactive_mode cannot be nil.')
      end

      if @container_name.nil?
        invalid_properties.push('invalid value for "container_name", container_name cannot be nil.')
      end

      if @container_network_ip_address.nil?
        invalid_properties.push('invalid value for "container_network_ip_address", container_network_ip_address cannot be nil.')
      end

      if @container_privileged.nil?
        invalid_properties.push('invalid value for "container_privileged", container_privileged cannot be nil.')
      end

      if @container_read_only_root_fs.nil?
        invalid_properties.push('invalid value for "container_read_only_root_fs", container_read_only_root_fs cannot be nil.')
      end

      if @container_user_info.nil?
        invalid_properties.push('invalid value for "container_user_info", container_user_info cannot be nil.')
      end

      if @containers_impacted_count.nil?
        invalid_properties.push('invalid value for "containers_impacted_count", containers_impacted_count cannot be nil.')
      end

      if @detect_timestamp.nil?
        invalid_properties.push('invalid value for "detect_timestamp", detect_timestamp cannot be nil.')
      end

      if @detection_description.nil?
        invalid_properties.push('invalid value for "detection_description", detection_description cannot be nil.')
      end

      if @detection_id.nil?
        invalid_properties.push('invalid value for "detection_id", detection_id cannot be nil.')
      end

      if @detection_name.nil?
        invalid_properties.push('invalid value for "detection_name", detection_name cannot be nil.')
      end

      if @executable_sha_256.nil?
        invalid_properties.push('invalid value for "executable_sha_256", executable_sha_256 cannot be nil.')
      end

      if @file_name.nil?
        invalid_properties.push('invalid value for "file_name", file_name cannot be nil.')
      end

      if @file_path.nil?
        invalid_properties.push('invalid value for "file_path", file_path cannot be nil.')
      end

      if @host_containers_count.nil?
        invalid_properties.push('invalid value for "host_containers_count", host_containers_count cannot be nil.')
      end

      if @host_detections_count.nil?
        invalid_properties.push('invalid value for "host_detections_count", host_detections_count cannot be nil.')
      end

      if @host_detections_ids.nil?
        invalid_properties.push('invalid value for "host_detections_ids", host_detections_ids cannot be nil.')
      end

      if @host_id.nil?
        invalid_properties.push('invalid value for "host_id", host_id cannot be nil.')
      end

      if @host_last_seen_timestamp.nil?
        invalid_properties.push('invalid value for "host_last_seen_timestamp", host_last_seen_timestamp cannot be nil.')
      end

      if @host_type.nil?
        invalid_properties.push('invalid value for "host_type", host_type cannot be nil.')
      end

      if @image_digest.nil?
        invalid_properties.push('invalid value for "image_digest", image_digest cannot be nil.')
      end

      if @image_first_seen_timestamp.nil?
        invalid_properties.push('invalid value for "image_first_seen_timestamp", image_first_seen_timestamp cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @image_label.nil?
        invalid_properties.push('invalid value for "image_label", image_label cannot be nil.')
      end

      if @image_last_seen_timestamp.nil?
        invalid_properties.push('invalid value for "image_last_seen_timestamp", image_last_seen_timestamp cannot be nil.')
      end

      if @image_maintainer.nil?
        invalid_properties.push('invalid value for "image_maintainer", image_maintainer cannot be nil.')
      end

      if @image_name.nil?
        invalid_properties.push('invalid value for "image_name", image_name cannot be nil.')
      end

      if @images_container_count.nil?
        invalid_properties.push('invalid value for "images_container_count", images_container_count cannot be nil.')
      end

      if @namespace.nil?
        invalid_properties.push('invalid value for "namespace", namespace cannot be nil.')
      end

      if @network_ip_address.nil?
        invalid_properties.push('invalid value for "network_ip_address", network_ip_address cannot be nil.')
      end

      if @os_version.nil?
        invalid_properties.push('invalid value for "os_version", os_version cannot be nil.')
      end

      if @pod_id.nil?
        invalid_properties.push('invalid value for "pod_id", pod_id cannot be nil.')
      end

      if @pod_name.nil?
        invalid_properties.push('invalid value for "pod_name", pod_name cannot be nil.')
      end

      if @pod_namespace.nil?
        invalid_properties.push('invalid value for "pod_namespace", pod_namespace cannot be nil.')
      end

      if @sensor_version.nil?
        invalid_properties.push('invalid value for "sensor_version", sensor_version cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @tactic_and_technique.nil?
        invalid_properties.push('invalid value for "tactic_and_technique", tactic_and_technique cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @vulnerabilities_count.nil?
        invalid_properties.push('invalid value for "vulnerabilities_count", vulnerabilities_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action_taken.nil?
      return false if @agent_type.nil?
      return false if @aid.nil?
      return false if @assigned_to.nil?
      return false if @cid.nil?
      return false if @cloud.nil?
      return false if @cloud_account_id.nil?
      return false if @cloud_id.nil?
      return false if @cloud_instance_id.nil?
      return false if @cloud_name.nil?
      return false if @cluster_name.nil?
      return false if @command_line.nil?
      return false if @computer_name.nil?
      return false if @container_devices.nil?
      return false if @container_id.nil?
      return false if @container_interactive_mode.nil?
      return false if @container_name.nil?
      return false if @container_network_ip_address.nil?
      return false if @container_privileged.nil?
      return false if @container_read_only_root_fs.nil?
      return false if @container_user_info.nil?
      return false if @containers_impacted_count.nil?
      return false if @detect_timestamp.nil?
      return false if @detection_description.nil?
      return false if @detection_id.nil?
      return false if @detection_name.nil?
      return false if @executable_sha_256.nil?
      return false if @file_name.nil?
      return false if @file_path.nil?
      return false if @host_containers_count.nil?
      return false if @host_detections_count.nil?
      return false if @host_detections_ids.nil?
      return false if @host_id.nil?
      return false if @host_last_seen_timestamp.nil?
      return false if @host_type.nil?
      return false if @image_digest.nil?
      return false if @image_first_seen_timestamp.nil?
      return false if @image_id.nil?
      return false if @image_label.nil?
      return false if @image_last_seen_timestamp.nil?
      return false if @image_maintainer.nil?
      return false if @image_name.nil?
      return false if @images_container_count.nil?
      return false if @namespace.nil?
      return false if @network_ip_address.nil?
      return false if @os_version.nil?
      return false if @pod_id.nil?
      return false if @pod_name.nil?
      return false if @pod_namespace.nil?
      return false if @sensor_version.nil?
      return false if @severity.nil?
      return false if @tactic_and_technique.nil?
      return false if @type.nil?
      return false if @vulnerabilities_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_taken == o.action_taken &&
          agent_type == o.agent_type &&
          aid == o.aid &&
          assigned_to == o.assigned_to &&
          cid == o.cid &&
          cloud == o.cloud &&
          cloud_account_id == o.cloud_account_id &&
          cloud_id == o.cloud_id &&
          cloud_instance_id == o.cloud_instance_id &&
          cloud_name == o.cloud_name &&
          cluster_name == o.cluster_name &&
          command_line == o.command_line &&
          computer_name == o.computer_name &&
          container_devices == o.container_devices &&
          container_id == o.container_id &&
          container_interactive_mode == o.container_interactive_mode &&
          container_name == o.container_name &&
          container_network_ip_address == o.container_network_ip_address &&
          container_privileged == o.container_privileged &&
          container_read_only_root_fs == o.container_read_only_root_fs &&
          container_user_info == o.container_user_info &&
          containers_impacted_count == o.containers_impacted_count &&
          detect_timestamp == o.detect_timestamp &&
          detection_description == o.detection_description &&
          detection_id == o.detection_id &&
          detection_name == o.detection_name &&
          executable_sha_256 == o.executable_sha_256 &&
          file_name == o.file_name &&
          file_path == o.file_path &&
          host_containers_count == o.host_containers_count &&
          host_detections_count == o.host_detections_count &&
          host_detections_ids == o.host_detections_ids &&
          host_id == o.host_id &&
          host_last_seen_timestamp == o.host_last_seen_timestamp &&
          host_type == o.host_type &&
          image_digest == o.image_digest &&
          image_first_seen_timestamp == o.image_first_seen_timestamp &&
          image_id == o.image_id &&
          image_label == o.image_label &&
          image_last_seen_timestamp == o.image_last_seen_timestamp &&
          image_maintainer == o.image_maintainer &&
          image_name == o.image_name &&
          images_container_count == o.images_container_count &&
          namespace == o.namespace &&
          network_ip_address == o.network_ip_address &&
          os_version == o.os_version &&
          pod_id == o.pod_id &&
          pod_name == o.pod_name &&
          pod_namespace == o.pod_namespace &&
          sensor_version == o.sensor_version &&
          severity == o.severity &&
          tactic_and_technique == o.tactic_and_technique &&
          type == o.type &&
          vulnerabilities_count == o.vulnerabilities_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_taken, agent_type, aid, assigned_to, cid, cloud, cloud_account_id, cloud_id, cloud_instance_id, cloud_name, cluster_name, command_line, computer_name, container_devices, container_id, container_interactive_mode, container_name, container_network_ip_address, container_privileged, container_read_only_root_fs, container_user_info, containers_impacted_count, detect_timestamp, detection_description, detection_id, detection_name, executable_sha_256, file_name, file_path, host_containers_count, host_detections_count, host_detections_ids, host_id, host_last_seen_timestamp, host_type, image_digest, image_first_seen_timestamp, image_id, image_label, image_last_seen_timestamp, image_maintainer, image_name, images_container_count, namespace, network_ip_address, os_version, pod_id, pod_name, pod_namespace, sensor_version, severity, tactic_and_technique, type, vulnerabilities_count].hash
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
