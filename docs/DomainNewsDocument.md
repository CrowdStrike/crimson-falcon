# Falcon::DomainNewsDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **actors** | [**Array&lt;DomainSimpleActor&gt;**](DomainSimpleActor.md) |  |  |
| **attachments** | [**Array&lt;DomainFile&gt;**](DomainFile.md) |  | [optional] |
| **created_date** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **entitlements** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  | [optional] |
| **id** | **Integer** |  |  |
| **image** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **last_modified_date** | **Integer** |  |  |
| **motivations** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **name** | **String** |  |  |
| **notify_users** | **Boolean** |  | [optional] |
| **rich_text_description** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **slug** | **String** |  |  |
| **sub_type** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **tags** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **target_countries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **target_industries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  |  |
| **thumbnail** | [**DomainImage**](DomainImage.md) |  |  |
| **topic** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **type** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainNewsDocument.new(
  active: null,
  actors: null,
  attachments: null,
  created_date: null,
  description: null,
  entitlements: null,
  id: null,
  image: null,
  last_modified_date: null,
  motivations: null,
  name: null,
  notify_users: null,
  rich_text_description: null,
  short_description: null,
  slug: null,
  sub_type: null,
  tags: null,
  target_countries: null,
  target_industries: null,
  thumbnail: null,
  topic: null,
  type: null,
  url: null
)
```

