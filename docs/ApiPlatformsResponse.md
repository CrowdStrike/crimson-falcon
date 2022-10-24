# Falcon::ApiPlatformsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainPlatform&gt;**](DomainPlatform.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiPlatformsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

