# Falcon::DomainAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Object** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIError.new(
  errors: null,
  meta: null,
  resources: null
)
```

