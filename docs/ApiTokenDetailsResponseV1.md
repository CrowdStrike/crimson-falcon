# Falcon::ApiTokenDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiTokenDetailsResourceV1&gt;**](ApiTokenDetailsResourceV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiTokenDetailsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

