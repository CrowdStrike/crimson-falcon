# Falcon::DomainHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_ioas** | [**DomainIOACounts**](DomainIOACounts.md) |  | [optional] |
| **cloud_ioms** | [**DomainIOMCounts**](DomainIOMCounts.md) |  | [optional] |
| **configuration_assessments** | [**DomainSCAMisconfigsCounts**](DomainSCAMisconfigsCounts.md) |  | [optional] |
| **entity_pk** | **String** |  | [optional] |
| **extra_info** | [**DomainXLR8Info**](DomainXLR8Info.md) |  | [optional] |
| **id** | **String** |  |  |
| **sensitive_data** | **Boolean** |  |  |
| **total_count** | **Float** |  |  |
| **vulnerabilities** | [**DomainVulnerabilitiesCount**](DomainVulnerabilitiesCount.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainHost.new(
  cloud_ioas: null,
  cloud_ioms: null,
  configuration_assessments: null,
  entity_pk: null,
  extra_info: null,
  id: null,
  sensitive_data: null,
  total_count: null,
  vulnerabilities: null
)
```

