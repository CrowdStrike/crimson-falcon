# Falcon::DomainFemExternalAsset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_actions** | **Array&lt;String&gt;** | Lists the user actions can be taken on this asset (triage, delete, etc) |  |
| **asset_type** | **String** | The type of external asset (ip, dns_domain) |  |
| **cid** | **String** | The customer ID |  |
| **confidence** | **Integer** | Confidence level for the asset association to the organization |  |
| **criticality** | **String** | The criticality level of the asset (Critical, High, Noncritical, or Unassigned) | [optional] |
| **criticality_description** | **String** | The description the user entered when manually assigning a criticality level | [optional] |
| **criticality_timestamp** | **String** | The date and time the criticality level was manually assigned | [optional] |
| **criticality_username** | **String** | The username of the account that manually assigned the criticality level | [optional] |
| **data_providers** | **Array&lt;String&gt;** | A list of the source providers for the asset information |  |
| **discovered_by** | **String** | The identifier of the asset | [optional] |
| **discovery** | [**DomainExternalAssetDiscoveryAttributes**](DomainExternalAssetDiscoveryAttributes.md) |  | [optional] |
| **dns_domain** | [**DomainFemDNSDomain**](DomainFemDNSDomain.md) |  | [optional] |
| **entity_type** | **String** | this is similar with the entity_type field from DiscoverAPIHost; it will be always &#39;external&#39; and it aligns this structure with other assets structures, making UI handling of assets more generic |  |
| **first_seen** | **String** | The first time this asset has been observed as externally exposed | [optional] |
| **id** | **String** | The unique external asset identifier |  |
| **internet_exposure** | **String** | The internet exposure status of the asset | [optional] |
| **ip** | [**DomainFemExternalIP**](DomainFemExternalIP.md) |  | [optional] |
| **last_seen** | **String** | The last time this asset has been observed as externally exposed | [optional] |
| **manual** | **Boolean** | Flag indicating if the asset has been manually added | [optional] |
| **perimeter** | **String** | Perimeter of this asset (Official/Unofficial) | [optional] |
| **status** | **String** | The availability status for the asset |  |
| **subsidiaries** | [**Array&lt;DomainExternalAssetSubsidiary&gt;**](DomainExternalAssetSubsidiary.md) | List of subsidiaries that the asset belongs to | [optional] |
| **triage** | [**DomainExternalAssetsAPITriage**](DomainExternalAssetsAPITriage.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFemExternalAsset.new(
  applicable_actions: null,
  asset_type: null,
  cid: null,
  confidence: null,
  criticality: null,
  criticality_description: null,
  criticality_timestamp: null,
  criticality_username: null,
  data_providers: null,
  discovered_by: null,
  discovery: null,
  dns_domain: null,
  entity_type: null,
  first_seen: null,
  id: null,
  internet_exposure: null,
  ip: null,
  last_seen: null,
  manual: null,
  perimeter: null,
  status: null,
  subsidiaries: null,
  triage: null
)
```

