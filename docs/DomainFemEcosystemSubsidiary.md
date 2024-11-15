# Falcon::DomainFemEcosystemSubsidiary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_count** | **Integer** | The number of assets associated with the subsidiary | [optional] |
| **children_count** | **Integer** | The number of subsidiary children |  |
| **cid** | **String** | The customer ID |  |
| **discovery** | [**DomainExternalAssetDiscoveryAttributes**](DomainExternalAssetDiscoveryAttributes.md) |  | [optional] |
| **id** | **String** | The ID of the subsidiary |  |
| **name** | **String** | The name of the subsidiary |  |
| **parent_id** | **String** | The ID of the parent subsidiary |  |
| **primary_domain** | **String** | The primary domain of the subsidiary (Originally was called apex_domain) |  |
| **risk_score** | **Float** | The risk score of the subsidiary | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFemEcosystemSubsidiary.new(
  asset_count: null,
  children_count: null,
  cid: null,
  discovery: null,
  id: null,
  name: null,
  parent_id: null,
  primary_domain: null,
  risk_score: null
)
```

