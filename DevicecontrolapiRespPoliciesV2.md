# Falcon::DevicecontrolapiRespPoliciesV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DevicecontrolapiRespMSAErrorV1&gt;**](DevicecontrolapiRespMSAErrorV1.md) | Array of errors |  |
| **meta** | [**DevicecontrolapiRespMSAMetaV1**](DevicecontrolapiRespMSAMetaV1.md) |  | [optional] |
| **resources** | [**Array&lt;DevicecontrolapiRespPolicyV2&gt;**](DevicecontrolapiRespPolicyV2.md) | Array of policies |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiRespPoliciesV2.new(
  errors: null,
  meta: null,
  resources: null
)
```

