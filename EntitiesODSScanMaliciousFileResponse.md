# Falcon::EntitiesODSScanMaliciousFileResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

