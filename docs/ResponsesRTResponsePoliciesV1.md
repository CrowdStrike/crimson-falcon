# Falcon::ResponsesRTResponsePoliciesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ResponsesRTResponsePolicyV1&gt;**](ResponsesRTResponsePolicyV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesRTResponsePoliciesV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

