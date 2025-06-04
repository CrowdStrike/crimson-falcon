# Falcon::DomainOCITenancyCreateExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** |  | [optional] |
| **home_region** | **String** |  |  |
| **policy_name** | **String** |  | [optional] |
| **products** | [**Array&lt;DomainCloudOCIProductFeature&gt;**](DomainCloudOCIProductFeature.md) |  |  |
| **tenancy_ocid** | **String** |  |  |
| **user_email** | **String** |  |  |
| **user_name** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyCreateExtV1.new(
  group_name: null,
  home_region: null,
  policy_name: null,
  products: null,
  tenancy_ocid: null,
  user_email: null,
  user_name: null
)
```

