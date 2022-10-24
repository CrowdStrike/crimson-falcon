# Falcon::DetectsapiPostEntitiesInvestigatablesV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DetectsInvestigatable&gt;**](DetectsInvestigatable.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectsapiPostEntitiesInvestigatablesV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

