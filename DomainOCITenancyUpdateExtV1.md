# Falcon::DomainOCITenancyUpdateExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** |  | [optional] |
| **home_region** | **String** |  | [optional] |
| **policy_name** | **String** |  | [optional] |
| **products** | [**Array&lt;DomainCloudOCIProductFeature&gt;**](DomainCloudOCIProductFeature.md) |  |  |
| **stack_ocid** | **String** | Stack OCID | [optional] |
| **tenancy_ocid** | **String** |  | [optional] |
| **user_email** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **user_ocid** | **String** | User OCID | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyUpdateExtV1.new(
  group_name: null,
  home_region: null,
  policy_name: null,
  products: null,
  stack_ocid: null,
  tenancy_ocid: null,
  user_email: null,
  user_name: null,
  user_ocid: null
)
```

