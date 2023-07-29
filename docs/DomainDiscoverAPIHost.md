# Falcon::DomainDiscoverAPIHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_enabled** | **String** | Whether the asset is account-enabled in Active Directory (Yes or No). | [optional] |
| **active_discovery** | [**DomainDiscoverAPIActiveDiscoveryHost**](DomainDiscoverAPIActiveDiscoveryHost.md) |  | [optional] |
| **ad_user_account_control** | **Integer** | The user account control properties in Active Directory. | [optional] |
| **agent_version** | **String** | The version of the Falcon sensor that&#39;s installed on the asset. | [optional] |
| **aid** | **String** | The agent ID of the Falcon sensor installed on the asset. | [optional] |
| **asset_roles** | **Array&lt;String&gt;** | List of asset roles (computed or given by the user) | [optional] |
| **assigned_to** | **String** | The first and last name of the person who is assigned to this asset. | [optional] |
| **available_disk_space** | **Integer** | The available disk space in the last 15 minutes on the host | [optional] |
| **available_disk_space_pct** | **Integer** | The available disk space percent in the last 15 minutes on the host | [optional] |
| **average_memory_usage** | **Integer** | The average memory usage in the last 15 minutes on the host | [optional] |
| **average_memory_usage_pct** | **Integer** | The average memory usage percent in the last 15 minutes on the host | [optional] |
| **average_processor_usage** | **Integer** | The average processor usage in the last 15 minutes on the host | [optional] |
| **bios_hashes_data** | [**Array&lt;DomainDiscoverAPIBiosHashesData&gt;**](DomainDiscoverAPIBiosHashesData.md) | The list of found sha256 and their measurement types | [optional] |
| **bios_id** | **String** | The id of the bios on the host | [optional] |
| **bios_manufacturer** | **String** | The name of the asset&#39;s BIOS manufacturer. | [optional] |
| **bios_version** | **String** | The asset&#39;s BIOS version. | [optional] |
| **cid** | **String** | The asset&#39;s customer ID. |  |
| **city** | **String** | The name of the city where the asset is located. | [optional] |
| **classification** | **String** | How the server is classified, such as production, development, disaster recovery, or user acceptance testing. | [optional] |
| **cloud_account_id** | **String** | The cloud provider assigned identifier of the cloud account the instance is located in. | [optional] |
| **cloud_provider** | **String** | The cloud provider environment the instance is located in (AWS/Azure/GCP). | [optional] |
| **cloud_region** | **String** | The cloud provider assigned identifier of the cloud region the instance is located in (e.g. “us-west-1”, “westeurope”, “asia-northeast1) | [optional] |
| **cloud_registered** | **Boolean** | Whether or not the instance is located in a cloud account registered with cloud security posture. | [optional] |
| **cloud_resource_id** | **String** | The cloud provider assigned identifier of the instance. | [optional] |
| **computed_asset_roles** | **Array&lt;String&gt;** | List of computed asset roles | [optional] |
| **confidence** | **Integer** | The level of confidence that the asset is a corporate asset (25 &#x3D; low confidence, 50 &#x3D; medium confidence, 75 &#x3D; high confidence). | [optional] |
| **country** | **String** | The name of the country where the asset is located. | [optional] |
| **cpu_manufacturer** | **String** | The manufacturer of the asset&#39;s CPU. | [optional] |
| **cpu_processor_name** | **String** | The name of the processor on the system | [optional] |
| **creation_timestamp** | **String** | The time the asset was created in Active Directory, according to LDAP info. | [optional] |
| **criticality** | **String** | Asset criticality | [optional] |
| **criticality_rule_id** | **String** | The ID of the criticality rule that last matched on this host | [optional] |
| **current_local_ip** | **String** | The last seen local IPv4 address of the asset. | [optional] |
| **data_providers** | **Array&lt;String&gt;** | Where the data about the asset came from (such as CrowdStrike, ServiceNow, or Active Directory). | [optional] |
| **data_providers_count** | **Integer** | How many services provided data about the asset. | [optional] |
| **department** | **String** | The department where the asset is used. | [optional] |
| **descriptions** | **Array&lt;String&gt;** | The descriptions of the asset in Active Directory (Cannot be used for filtering, sorting, or querying). | [optional] |
| **discoverer_aids** | **Array&lt;String&gt;** | The agent IDs of the Falcon sensors installed on the sources that discovered the asset. | [optional] |
| **discoverer_count** | **Integer** | The number of sources that discovered the asset. | [optional] |
| **discoverer_platform_names** | **Array&lt;String&gt;** | The platform names of the sources that discovered the asset. | [optional] |
| **discoverer_product_type_descs** | **Array&lt;String&gt;** | The product type descriptions of the sources that discovered the asset. | [optional] |
| **discoverer_tags** | **Array&lt;String&gt;** | The tags of the sources that discovered the asset. | [optional] |
| **discovering_by** | **Array&lt;String&gt;** | Represents the status of a managed host (“Not Discovering“, “Passive“, “Active“ or both). | [optional] |
| **disk_sizes** | [**Array&lt;DomainDiscoverAPIDiskSize&gt;**](DomainDiscoverAPIDiskSize.md) | The names and sizes of the disks on the asset | [optional] |
| **email** | **String** | The email of the asset as listed in Active Directory. | [optional] |
| **encrypted_drives** | **Array&lt;String&gt;** | The list of encrypted drives on the host | [optional] |
| **encrypted_drives_count** | **Integer** | The count of encrypted drives on the host | [optional] |
| **encryption_status** | **String** | The encryption status of the host | [optional] |
| **entity_type** | **String** | The type of asset (managed, unmanaged, unsupported). | [optional] |
| **external_ip** | **String** | The external IPv4 address of the asset. | [optional] |
| **field_metadata** | [**Hash&lt;String, DomainDiscoverAPIFieldMetadata&gt;**](DomainDiscoverAPIFieldMetadata.md) | Lists the data providers for each property in the response (Cannot be used for filtering, sorting, or querying). | [optional] |
| **first_discoverer_aid** | **String** | The agent ID of the Falcon sensor on the source that first discovered the asset. | [optional] |
| **first_seen_timestamp** | **String** | The first time the asset was seen in your environment. | [optional] |
| **form_factor** | **String** | The form factor of the host | [optional] |
| **fqdn** | **String** | The fully qualified domain name of the asset. | [optional] |
| **groups** | **Array&lt;String&gt;** | The host management groups the asset is part of. | [optional] |
| **hostname** | **String** | The asset&#39;s hostname. | [optional] |
| **id** | **String** | The unique ID of the asset. |  |
| **internet_exposure** | **String** | Whether the asset is exposed to the internet (Yes or Unknown). | [optional] |
| **kernel_version** | **String** | For Linux and Mac hosts: the major version, minor version, and patch version of the kernel for the asset. For Windows hosts: the build number of the asset. | [optional] |
| **last_discoverer_aid** | **String** | The agent ID of the Falcon sensor installed on the source that most recently discovered the asset. | [optional] |
| **last_seen_timestamp** | **String** | The most recent time the asset was seen in your environment. | [optional] |
| **local_ip_addresses** | **Array&lt;String&gt;** | Historical local IPv4 addresses associated with the asset. | [optional] |
| **local_ips_count** | **Integer** | The number of historical local IPv4 addresses the asset has had. | [optional] |
| **location** | **String** | The location of the asset. | [optional] |
| **logical_core_count** | **Integer** | The number of logical cores available on the system | [optional] |
| **mac_addresses** | **Array&lt;String&gt;** | Historical MAC addresses associated with the asset. | [optional] |
| **machine_domain** | **String** | The domain name the asset is currently joined to. | [optional] |
| **managed_by** | **String** | The first and last name of the person who manages this asset. | [optional] |
| **max_memory_usage** | **Integer** | The max memory usage in the last 15 minutes on the host | [optional] |
| **max_memory_usage_pct** | **Integer** | The max memory usage percent in the last 15 minutes on the host | [optional] |
| **max_processor_usage** | **Integer** | The max processor usage in the last 15 minutes on the host | [optional] |
| **mount_storage_info** | [**Array&lt;DomainDiscoverAPIMountStorageInfo&gt;**](DomainDiscoverAPIMountStorageInfo.md) | The path, used and available space on mounted disks | [optional] |
| **network_interfaces** | [**Array&lt;DomainDiscoverAPINetworkInterface&gt;**](DomainDiscoverAPINetworkInterface.md) | The asset&#39;s network interfaces (Cannot be used for filtering, sorting, or querying). | [optional] |
| **number_of_disk_drives** | **Integer** | The number of active physical drives available on the system. | [optional] |
| **object_guid** | **String** | The globally unique identifier (GUID) of the asset in Active Directory. | [optional] |
| **object_sid** | **String** | The security identifier (SID) of the asset in Active Directory. | [optional] |
| **os_is_eol** | **String** | Whether the asset is at end of support (Yes, No, or Unknown). | [optional] |
| **os_security** | [**DomainDiscoverAPIOsSecurity**](DomainDiscoverAPIOsSecurity.md) |  | [optional] |
| **os_service_pack** | **String** | The OS service pack on the asset. | [optional] |
| **os_version** | **String** | The OS version of the asset. | [optional] |
| **ou** | **String** | The organizational unit of the asset. | [optional] |
| **override_asset_roles** | **Boolean** | True if the user has override asset roles computed automatically | [optional] |
| **override_criticality_rules** | **Boolean** | True if the host should not be evaluated against the criticality rules | [optional] |
| **owned_by** | **String** | The first and last name of the person who owns this asset. | [optional] |
| **physical_core_count** | **Integer** | The number of physical CPU cores available on the system. | [optional] |
| **platform_name** | **String** | The platform name of the asset (Windows, Mac, Linux). | [optional] |
| **processor_package_count** | **Integer** | The number of physical processors available on the system. | [optional] |
| **product_type** | **String** | The product type of the asset represented as a number (1 &#x3D; Workstation, 2 &#x3D; Domain Controller, 3 &#x3D; Server). | [optional] |
| **product_type_desc** | **String** | The product type of the asset (Workstation, Domain Controller, Server). | [optional] |
| **reduced_functionality_mode** | **String** | Whether the asset is in reduced functionality mode (Yes or No). | [optional] |
| **servicenow_id** | **String** | The unique identifier of the asset from ServiceNow, if any. | [optional] |
| **site_name** | **String** | The site name of the domain the asset is joined to (applies only to Windows hosts). | [optional] |
| **state** | **String** | The name of the U.S. state where the asset is located. | [optional] |
| **system_manufacturer** | **String** | The asset&#39;s system manufacturer. | [optional] |
| **system_product_name** | **String** | The asset&#39;s system product name. | [optional] |
| **system_serial_number** | **String** | The asset&#39;s system serial number. | [optional] |
| **tags** | **Array&lt;String&gt;** | The sensor and cloud tags of the asset. | [optional] |
| **tenableio_id** | **String** | Represents the unique identifier of an asset reported by Tenable | [optional] |
| **total_bios_files** | **Integer** | The count of bios files measured by the firmware image | [optional] |
| **total_disk_space** | **Integer** | Total amount of disk space available on the system | [optional] |
| **total_memory** | **Integer** | The total memory of the asset | [optional] |
| **triage** | [**DomainDiscoverAPIHostTriage**](DomainDiscoverAPIHostTriage.md) |  | [optional] |
| **unencrypted_drives** | **Array&lt;String&gt;** | The list of unencrypted drives on the host | [optional] |
| **unencrypted_drives_count** | **Integer** | The count of unencrypted drives on the host | [optional] |
| **used_disk_space** | **Integer** | The used disk space in the last 15 minutes on the host | [optional] |
| **used_disk_space_pct** | **Integer** | The used disk space percent in the last 15 minutes on the host | [optional] |
| **used_for** | **String** | What the asset is used for, such as production, staging, or QA. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIHost.new(
  account_enabled: null,
  active_discovery: null,
  ad_user_account_control: null,
  agent_version: null,
  aid: null,
  asset_roles: null,
  assigned_to: null,
  available_disk_space: null,
  available_disk_space_pct: null,
  average_memory_usage: null,
  average_memory_usage_pct: null,
  average_processor_usage: null,
  bios_hashes_data: null,
  bios_id: null,
  bios_manufacturer: null,
  bios_version: null,
  cid: null,
  city: null,
  classification: null,
  cloud_account_id: null,
  cloud_provider: null,
  cloud_region: null,
  cloud_registered: null,
  cloud_resource_id: null,
  computed_asset_roles: null,
  confidence: null,
  country: null,
  cpu_manufacturer: null,
  cpu_processor_name: null,
  creation_timestamp: null,
  criticality: null,
  criticality_rule_id: null,
  current_local_ip: null,
  data_providers: null,
  data_providers_count: null,
  department: null,
  descriptions: null,
  discoverer_aids: null,
  discoverer_count: null,
  discoverer_platform_names: null,
  discoverer_product_type_descs: null,
  discoverer_tags: null,
  discovering_by: null,
  disk_sizes: null,
  email: null,
  encrypted_drives: null,
  encrypted_drives_count: null,
  encryption_status: null,
  entity_type: null,
  external_ip: null,
  field_metadata: null,
  first_discoverer_aid: null,
  first_seen_timestamp: null,
  form_factor: null,
  fqdn: null,
  groups: null,
  hostname: null,
  id: null,
  internet_exposure: null,
  kernel_version: null,
  last_discoverer_aid: null,
  last_seen_timestamp: null,
  local_ip_addresses: null,
  local_ips_count: null,
  location: null,
  logical_core_count: null,
  mac_addresses: null,
  machine_domain: null,
  managed_by: null,
  max_memory_usage: null,
  max_memory_usage_pct: null,
  max_processor_usage: null,
  mount_storage_info: null,
  network_interfaces: null,
  number_of_disk_drives: null,
  object_guid: null,
  object_sid: null,
  os_is_eol: null,
  os_security: null,
  os_service_pack: null,
  os_version: null,
  ou: null,
  override_asset_roles: null,
  override_criticality_rules: null,
  owned_by: null,
  physical_core_count: null,
  platform_name: null,
  processor_package_count: null,
  product_type: null,
  product_type_desc: null,
  reduced_functionality_mode: null,
  servicenow_id: null,
  site_name: null,
  state: null,
  system_manufacturer: null,
  system_product_name: null,
  system_serial_number: null,
  tags: null,
  tenableio_id: null,
  total_bios_files: null,
  total_disk_space: null,
  total_memory: null,
  triage: null,
  unencrypted_drives: null,
  unencrypted_drives_count: null,
  used_disk_space: null,
  used_disk_space_pct: null,
  used_for: null
)
```

