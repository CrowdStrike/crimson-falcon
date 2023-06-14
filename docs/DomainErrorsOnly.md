# Falcon::DomainErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainErrorsOnly.new(
  errors: null,
  meta: null
)
```

