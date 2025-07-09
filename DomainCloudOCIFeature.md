# Falcon::DomainCloudOCIFeature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_method** | **String** | OCI Tenancy registration deployment method | [optional] |
| **feature** | **String** |  |  |
| **is_enabled** | **Boolean** |  | [optional] |
| **persona** | **String** | Person who register OCI Tenancy |  |
| **registration_detailed_status** | **String** | OCI Tenancy detailed status |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCloudOCIFeature.new(
  deployment_method: null,
  feature: null,
  is_enabled: null,
  persona: null,
  registration_detailed_status: null
)
```

