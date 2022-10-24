# Falcon::DomainDiscoverAPIHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_enabled** | **String** | Whether the asset is account-enabled in Active Directory (Yes or No). | [optional] |
| **ad_user_account_control** | **Integer** | The user account control properties in Active Directory. | [optional] |
| **agent_version** | **String** | The version of the Falcon sensor that&#39;s installed on the asset. | [optional] |
| **aid** | **String** | The agent ID of the Falcon sensor installed on the asset. | [optional] |
| **assigned_to** | **String** | The first and last name of the person who is assigned to this asset. | [optional] |
| **bios_manufacturer** | **String** | The name of the asset&#39;s BIOS manufacturer. | [optional] |
| **bios_version** | **String** | The asset&#39;s BIOS version. | [optional] |
| **cid** | **String** | The asset&#39;s customer ID. |  |
| **city** | **String** | The name of the city where the asset is located. | [optional] |
| **classification** | **String** | How the server is classified, such as production, development, disaster recovery, or user acceptance testing. | [optional] |
| **confidence** | **Integer** | The level of confidence that the asset is a corporate asset (25 &#x3D; low confidence, 50 &#x3D; medium confidence, 75 &#x3D; high confidence). | [optional] |
| **country** | **String** | The name of the country where the asset is located. | [optional] |
| **cpu_manufacturer** | **String** | The manufacturer of the asset&#39;s CPU. | [optional] |
| **creation_timestamp** | **String** | The time the asset was created in Active Directory, according to LDAP info. | [optional] |
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
| **email** | **String** | The email of the asset as listed in Active Directory. | [optional] |
| **entity_type** | **String** | The type of asset (managed, unmanaged, unsupported). | [optional] |
| **external_ip** | **String** | The external IPv4 address of the asset. | [optional] |
| **field_metadata** | [**Hash&lt;String, DomainDiscoverAPIFieldMetadata&gt;**](DomainDiscoverAPIFieldMetadata.md) | Lists the data providers for each property in the response (Cannot be used for filtering, sorting, or querying). | [optional] |
| **first_discoverer_aid** | **String** | The agent ID of the Falcon sensor on the source that first discovered the asset. | [optional] |
| **first_seen_timestamp** | **String** | The first time the asset was seen in your environment. | [optional] |
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
| **mac_addresses** | **Array&lt;String&gt;** | Historical MAC addresses associated with the asset. | [optional] |
| **machine_domain** | **String** | The domain name the asset is currently joined to. | [optional] |
| **managed_by** | **String** | The first and last name of the person who manages this asset. | [optional] |
| **network_interfaces** | [**Array&lt;DomainDiscoverAPINetworkInterface&gt;**](DomainDiscoverAPINetworkInterface.md) | The asset&#39;s network interfaces (Cannot be used for filtering, sorting, or querying). | [optional] |
| **number_of_disk_drives** | **Integer** | The number of active physical drives available on the system. | [optional] |
| **object_guid** | **String** | The globally unique identifier (GUID) of the asset in Active Directory. | [optional] |
| **object_sid** | **String** | The security identifier (SID) of the asset in Active Directory. | [optional] |
| **os_is_eol** | **String** | Whether the asset is at end of support (Yes, No, or Unknown). | [optional] |
| **os_service_pack** | **String** | The OS service pack on the asset. | [optional] |
| **os_version** | **String** | The OS version of the asset. | [optional] |
| **ou** | **String** | The organizational unit of the asset. | [optional] |
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
| **used_for** | **String** | What the asset is used for, such as production, staging, or QA. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDiscoverAPIHost.new(
  account_enabled: null,
  ad_user_account_control: null,
  agent_version: null,
  aid: null,
  assigned_to: null,
  bios_manufacturer: null,
  bios_version: null,
  cid: null,
  city: null,
  classification: null,
  confidence: null,
  country: null,
  cpu_manufacturer: null,
  creation_timestamp: null,
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
  email: null,
  entity_type: null,
  external_ip: null,
  field_metadata: null,
  first_discoverer_aid: null,
  first_seen_timestamp: null,
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
  mac_addresses: null,
  machine_domain: null,
  managed_by: null,
  network_interfaces: null,
  number_of_disk_drives: null,
  object_guid: null,
  object_sid: null,
  os_is_eol: null,
  os_service_pack: null,
  os_version: null,
  ou: null,
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
  used_for: null
)
```

