# Falcon::DomainExternalAssetsAPIPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | The asset&#39;s customer ID. | [optional] |
| **criticality** | **String** | The criticality level manually assigned to this asset. | [optional] |
| **criticality_description** | **String** | The criticality description manually assigned to this asset. | [optional] |
| **id** | **String** | The unique ID of the asset. |  |
| **triage** | [**DomainExternalAssetsAPITriagePatch**](DomainExternalAssetsAPITriagePatch.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetsAPIPatch.new(
  cid: null,
  criticality: null,
  criticality_description: null,
  id: null,
  triage: null
)
```

