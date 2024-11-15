# Falcon::DomainConfigsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainConfigV1&gt;**](DomainConfigV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainConfigsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

