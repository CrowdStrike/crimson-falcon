# Falcon::DomainActorDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  |  |
| **actor_type** | **String** |  | [optional] |
| **capabilities** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **capability** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **created_date** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **ecrime_kill_chain** | [**DomainECrimeKillChain**](DomainECrimeKillChain.md) |  | [optional] |
| **entitlements** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  | [optional] |
| **first_activity_date** | **Integer** |  |  |
| **group** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **id** | **Integer** |  |  |
| **image** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **kill_chain** | [**DomainKillChain**](DomainKillChain.md) |  | [optional] |
| **known_as** | **String** |  |  |
| **last_activity_date** | **Integer** |  |  |
| **last_modified_date** | **Integer** |  |  |
| **motivations** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **name** | **String** |  |  |
| **notify_users** | **Boolean** |  |  |
| **objectives** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **origins** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **recent_alerting** | **Integer** |  | [optional] |
| **region** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **rich_text_description** | **String** |  | [optional] |
| **short_description** | **String** |  |  |
| **slug** | **String** |  |  |
| **status** | **String** |  |  |
| **target_countries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **target_industries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **target_regions** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **thumbnail** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActorDocument.new(
  active: null,
  actor_type: null,
  capabilities: null,
  capability: null,
  created_date: null,
  description: null,
  ecrime_kill_chain: null,
  entitlements: null,
  first_activity_date: null,
  group: null,
  id: null,
  image: null,
  kill_chain: null,
  known_as: null,
  last_activity_date: null,
  last_modified_date: null,
  motivations: null,
  name: null,
  notify_users: null,
  objectives: null,
  origins: null,
  recent_alerting: null,
  region: null,
  rich_text_description: null,
  short_description: null,
  slug: null,
  status: null,
  target_countries: null,
  target_industries: null,
  target_regions: null,
  thumbnail: null,
  url: null
)
```

