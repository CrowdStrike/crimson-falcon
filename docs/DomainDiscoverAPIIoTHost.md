# Falcon::DomainDiscoverAPIIoTHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_version** | **String** | The version of the Falcon sensor that&#39;s installed on the asset. | [optional] |
| **aid** | **String** | The agent ID of the Falcon sensor installed on the asset. | [optional] |
| **available_disk_space** | **Integer** | The Amount of available disk space on the asset in GB | [optional] |
| **average_memory_usage** | **Integer** | The average memory usage in the last 15 minutes on the asset | [optional] |
| **average_processor_usage** | **Integer** | The average processor usage in the last 15 minutes on the asset | [optional] |
| **bios_id** | **String** | The id of the bios on the asset | [optional] |
| **bios_manufacturer** | **String** | The name of the asset&#39;s BIOS manufacturer. | [optional] |
| **bios_version** | **String** | The asset&#39;s BIOS version. | [optional] |
| **business_criticality** | **String** | The business criticality of the IoT asset. | [optional] |
| **cid** | **String** | The asset&#39;s customer ID. |  |
| **city** | **String** | The name of the city where the asset is located. | [optional] |
| **claroty_id** | **String** | The external ID of the IoT Device in 3rd Party System(Claroty). | [optional] |
| **confidence** | **Integer** | The level of confidence that the asset is a corporate asset (25 &#x3D; low confidence, 50 &#x3D; medium confidence, 75 &#x3D; high confidence). | [optional] |
| **country** | **String** | The name of the country where the asset is located. | [optional] |
| **cpu_processor_name** | **String** | The Detailed processor name | [optional] |
| **credential_guard_status** | **Boolean** | The credential guard status of the asset | [optional] |
| **current_local_ip** | **String** | The last seen local IPv4 address of the asset. | [optional] |
| **data_providers** | **Array&lt;String&gt;** | The asset&#39;s data providers. | [optional] |
| **data_providers_count** | **Integer** | The number of data providers for the asset. | [optional] |
| **device_class** | **String** | The Device Class of IoT Asset | [optional] |
| **device_family** | **String** | The Device Family of IoT Asset | [optional] |
| **device_guard_status** | **Boolean** | The device guard status of the asset | [optional] |
| **device_slots** | [**Array&lt;DomainDiscoverAPIDeviceSlot&gt;**](DomainDiscoverAPIDeviceSlot.md) | The slots of IoT Asset | [optional] |
| **device_type** | **String** | The Device Type of IoT Asset | [optional] |
| **discoverer_count** | **Integer** | The number of sources that discovered the asset. | [optional] |
| **discoverer_product_type_descs** | **Array&lt;String&gt;** | The product type descriptions of the sources that discovered the asset. | [optional] |
| **disk_sizes** | [**Array&lt;DomainDiscoverAPIDiskSize&gt;**](DomainDiscoverAPIDiskSize.md) | The names and sizes of the disks on the asset | [optional] |
| **encrypted_drives** | **Array&lt;String&gt;** | The list of encrypted drives on the asset | [optional] |
| **encrypted_drives_count** | **Integer** | The count of encrypted drives on the asset | [optional] |
| **encryption_status** | **String** | The encryption status of the asset | [optional] |
| **entity_type** | **String** | The type of asset (managed, unmanaged, unsupported). | [optional] |
| **external_ip** | **String** | The external IPv4 address of the asset. | [optional] |
| **field_metadata** | [**Hash&lt;String, DomainDiscoverAPIFieldMetadata&gt;**](DomainDiscoverAPIFieldMetadata.md) | Lists the data providers for each property in the response (Cannot be used for filtering, sorting, or querying). | [optional] |
| **first_seen_timestamp** | **String** | The first time the asset was seen in your environment. | [optional] |
| **groups** | **Array&lt;String&gt;** | The host management groups the asset is part of. | [optional] |
| **hostname** | **String** | The asset&#39;s hostname . | [optional] |
| **ics_id** | **String** | The ID generated by ICS collector asset discovery mechanism | [optional] |
| **id** | **String** | The unique ID of the asset. |  |
| **internet_exposure** | **String** | Whether the asset is exposed to the internet (Yes or Unknown) | [optional] |
| **iommu_protection_status** | **String** | The iommu protection status of the host | [optional] |
| **kernel_dma_protection_status** | **Boolean** | The kernel dma protection status of the asset | [optional] |
| **kernel_version** | **String** | For Linux and Mac hosts: the major version, minor version, and patch version of the kernel for the asset. For Windows hosts: the build number of the asset. | [optional] |
| **last_discoverer_ics_collector_id** | **String** | The agent ID of the Falcon sensor installed on the source host that most recently discovered the asset via ICS Asset discovery mechanism | [optional] |
| **last_seen_timestamp** | **String** | The most recent time the asset was seen in your environment. | [optional] |
| **local_ip_addresses** | **Array&lt;String&gt;** | The IoT asset&#39;s IP address list | [optional] |
| **local_ips_count** | **Integer** | The number of historical local IPv4 addresses the asset has had. | [optional] |
| **logical_core_count** | **Integer** | The Number of Logical Cores on the asset | [optional] |
| **mac_addresses** | **Array&lt;String&gt;** | The IoT asset&#39;s MAC address list | [optional] |
| **machine_domain** | **String** | The domain name the asset is currently joined to (applies only to Windows hosts). | [optional] |
| **max_memory_usage** | **Integer** | The max memory usage in the last 15 minutes on the asset | [optional] |
| **max_processor_usage** | **Integer** | The max processor usage in the last 15 minutes on the asset | [optional] |
| **memory_total** | **Integer** | The Total memory. | [optional] |
| **mount_storage_info** | [**Array&lt;DomainDiscoverAPIMountStorageInfo&gt;**](DomainDiscoverAPIMountStorageInfo.md) | The path, used and available space on mounted disks | [optional] |
| **network_id** | **String** | The network ID to which device is connected. | [optional] |
| **network_interfaces** | [**Array&lt;DomainDiscoverAPINetworkInterface&gt;**](DomainDiscoverAPINetworkInterface.md) | The asset&#39;s network interfaces. | [optional] |
| **number_of_disk_drives** | **Integer** | The number of active physical drives available on the system | [optional] |
| **os_is_eol** | **String** | Whether the asset is at end of support (Yes, No, or Unknown) | [optional] |
| **os_version** | **String** | The OS version of the asset. | [optional] |
| **ou** | **String** | The organizational unit of the asset (applies only to Windows hosts). | [optional] |
| **physical_core_count** | **Integer** | The number of physical CPU cores available on the system | [optional] |
| **platform_name** | **String** | The platform name of the asset (Windows, Mac, Linux). | [optional] |
| **processor_package_count** | **Integer** | The number of physical processors available on the system | [optional] |
| **product_type** | **String** | The product type of the asset represented as a number (1 &#x3D; Workstation, 2 &#x3D; Domain Controller, 3 &#x3D; Server). | [optional] |
| **product_type_desc** | **String** | The product type of the asset (Workstation, Domain Controller, Server). | [optional] |
| **protocols** | **Array&lt;String&gt;** | The list of protocols supported by the device | [optional] |
| **purdue_level** | **String** | The purdue level of IoT Asset | [optional] |
| **reduced_functionality_mode** | **String** | Whether the asset is in reduced functionality mode (Yes or No) | [optional] |
| **secure_boot_enabled_status** | **Boolean** | The secure boot enabled status of the asset | [optional] |
| **secure_boot_requested_status** | **Boolean** | The secure boot requested status of the asset | [optional] |
| **secure_memory_overwrite_requested_status** | **String** | The secure memory overwrite requested status of the asset | [optional] |
| **site_name** | **String** | The site name of the domain the asset is joined to (applies only to Windows hosts). | [optional] |
| **subnet** | **String** | The subnet to which device is connected. | [optional] |
| **system_guard_status** | **String** | The system guard status of the asset | [optional] |
| **system_manufacturer** | **String** | The asset&#39;s system manufacturer. | [optional] |
| **system_product_name** | **String** | The asset&#39;s system product name. | [optional] |
| **system_serial_number** | **String** | The asset&#39;s system serial number. | [optional] |
| **tags** | **Array&lt;String&gt;** | The sensor and cloud tags of the asset. | [optional] |
| **total_bios_files** | **Integer** | The count of bios files measured by the firmware image | [optional] |
| **total_disk_space** | **Integer** | The Total amount of disk space available on the asset in GB | [optional] |
| **uefi_memory_protection_status** | **String** | The uefi memory protection status of the asset | [optional] |
| **unencrypted_drives** | **Array&lt;String&gt;** | The list of unencrypted drives on the asset | [optional] |
| **unencrypted_drives_count** | **Integer** | The count of unencrypted drives on the asset | [optional] |
| **used_disk_space** | **Integer** | The Current amount of used disk space on the asset in GB | [optional] |
| **virtual_zone** | **String** | The Virtual Zone name in which device is installed. | [optional] |
| **virtualization_based_security_status** | **Boolean** | The virtualization based security status of the asset | [optional] |
| **vlan** | **Array&lt;String&gt;** | The VLAN IDs to which device is connected. | [optional] |
| **xdome_id** | **String** | The external ID of the IoT Device in 3rd Party System(Claroty Xdome) | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIIoTHost.new(
  agent_version: null,
  aid: null,
  available_disk_space: null,
  average_memory_usage: null,
  average_processor_usage: null,
  bios_id: null,
  bios_manufacturer: null,
  bios_version: null,
  business_criticality: null,
  cid: null,
  city: null,
  claroty_id: null,
  confidence: null,
  country: null,
  cpu_processor_name: null,
  credential_guard_status: null,
  current_local_ip: null,
  data_providers: null,
  data_providers_count: null,
  device_class: null,
  device_family: null,
  device_guard_status: null,
  device_slots: null,
  device_type: null,
  discoverer_count: null,
  discoverer_product_type_descs: null,
  disk_sizes: null,
  encrypted_drives: null,
  encrypted_drives_count: null,
  encryption_status: null,
  entity_type: null,
  external_ip: null,
  field_metadata: null,
  first_seen_timestamp: null,
  groups: null,
  hostname: null,
  ics_id: null,
  id: null,
  internet_exposure: null,
  iommu_protection_status: null,
  kernel_dma_protection_status: null,
  kernel_version: null,
  last_discoverer_ics_collector_id: null,
  last_seen_timestamp: null,
  local_ip_addresses: null,
  local_ips_count: null,
  logical_core_count: null,
  mac_addresses: null,
  machine_domain: null,
  max_memory_usage: null,
  max_processor_usage: null,
  memory_total: null,
  mount_storage_info: null,
  network_id: null,
  network_interfaces: null,
  number_of_disk_drives: null,
  os_is_eol: null,
  os_version: null,
  ou: null,
  physical_core_count: null,
  platform_name: null,
  processor_package_count: null,
  product_type: null,
  product_type_desc: null,
  protocols: null,
  purdue_level: null,
  reduced_functionality_mode: null,
  secure_boot_enabled_status: null,
  secure_boot_requested_status: null,
  secure_memory_overwrite_requested_status: null,
  site_name: null,
  subnet: null,
  system_guard_status: null,
  system_manufacturer: null,
  system_product_name: null,
  system_serial_number: null,
  tags: null,
  total_bios_files: null,
  total_disk_space: null,
  uefi_memory_protection_status: null,
  unencrypted_drives: null,
  unencrypted_drives_count: null,
  used_disk_space: null,
  virtual_zone: null,
  virtualization_based_security_status: null,
  vlan: null,
  xdome_id: null
)
```
