# Falcon::EntitiesODSScanMaliciousFileResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainMaliciousFile&gt;**](DomainMaliciousFile.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesODSScanMaliciousFileResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

