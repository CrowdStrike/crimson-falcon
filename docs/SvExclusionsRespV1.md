# Falcon::SvExclusionsRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;SvExclusionsSVExclusionV1&gt;**](SvExclusionsSVExclusionV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SvExclusionsRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

