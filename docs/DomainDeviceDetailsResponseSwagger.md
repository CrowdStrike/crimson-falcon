# Falcon::DomainDeviceDetailsResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDeviceSwagger&gt;**](DomainDeviceSwagger.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDeviceDetailsResponseSwagger.new(
  errors: null,
  meta: null,
  resources: null
)
```

