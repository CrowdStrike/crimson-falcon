# Falcon::ApiAuditEventDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiAuditEventDetailsResourceV1&gt;**](ApiAuditEventDetailsResourceV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiAuditEventDetailsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

