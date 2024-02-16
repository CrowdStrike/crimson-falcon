# Falcon::DomainAPIHostInfoFacetV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_criticality** | [**DomainAssetCriticalityInfoV1**](DomainAssetCriticalityInfoV1.md) |  | [optional] |
| **build_number** | **String** |  | [optional] |
| **groups** | [**Array&lt;DomainAPIHostGroup&gt;**](DomainAPIHostGroup.md) |  |  |
| **host_hidden_status** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_seen_timestamp** | **String** |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **mac_address** | **String** |  | [optional] |
| **machine_domain** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **os_version** | **String** |  | [optional] |
| **ou** | **String** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **product_type_desc** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **site_name** | **String** |  | [optional] |
| **system_manufacturer** | **String** |  | [optional] |
| **system_product_name** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIHostInfoFacetV1.new(
  asset_criticality: null,
  build_number: null,
  groups: null,
  host_hidden_status: null,
  id: null,
  last_seen_timestamp: null,
  local_ip: null,
  mac_address: null,
  machine_domain: null,
  name: null,
  os_version: null,
  ou: null,
  platform_name: null,
  product_type_desc: null,
  serial_number: null,
  site_name: null,
  system_manufacturer: null,
  system_product_name: null,
  tags: null
)
```

