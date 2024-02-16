# Falcon::PoliciesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;PoliciesPolicy&gt;**](PoliciesPolicy.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PoliciesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

