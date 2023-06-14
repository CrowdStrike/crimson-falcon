# Falcon::DomainDiscoverAPIOsSecurity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credential_guard_status** | **Boolean** | The credential guard status of the host | [optional] |
| **device_guard_status** | **Boolean** | The device guard status of the host | [optional] |
| **iommu_protection_status** | **String** | The iommu protection status of the host | [optional] |
| **kernel_dma_protection_status** | **Boolean** | The kernel dma protection status of the host | [optional] |
| **secure_boot_enabled_status** | **Boolean** | The secure boot enabled status of the host | [optional] |
| **secure_boot_requested_status** | **Boolean** | The secure boot requested status of the host | [optional] |
| **secure_memory_overwrite_requested_status** | **String** | The secure memory overwrite requested status of the host | [optional] |
| **system_guard_status** | **String** | The system guard status of the host | [optional] |
| **uefi_memory_protection_status** | **String** | The uefi memory protection status of the host | [optional] |
| **virtualization_based_security_status** | **Boolean** | The virtualization based security status of the host | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIOsSecurity.new(
  credential_guard_status: null,
  device_guard_status: null,
  iommu_protection_status: null,
  kernel_dma_protection_status: null,
  secure_boot_enabled_status: null,
  secure_boot_requested_status: null,
  secure_memory_overwrite_requested_status: null,
  system_guard_status: null,
  uefi_memory_protection_status: null,
  virtualization_based_security_status: null
)
```

