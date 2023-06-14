# Falcon::ExclusionsRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ExclusionsExclusionV1&gt;**](ExclusionsExclusionV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExclusionsRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

