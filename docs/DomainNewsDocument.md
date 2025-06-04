# Falcon::DomainNewsDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | legacy field, not used | [optional] |
| **actors** | [**Array&lt;DomainSimpleActor&gt;**](DomainSimpleActor.md) | Actors mentioned, related or referenced in the news/report |  |
| **attachments** | [**Array&lt;DomainFile&gt;**](DomainFile.md) | News attachment, containing either pdf url or feeds zip and/or gzip archive | [optional] |
| **created_date** | **Integer** | Date of the news document creation, unix timestampt |  |
| **description** | **String** | Full report description, extracted from the document | [optional] |
| **entitlements** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | internal property used for permissions check of access, not returned or explicitly filterable | [optional] |
| **id** | **Integer** | Integer ID of the News document |  |
| **image** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **last_modified_date** | **Integer** | Date of the news document last modification, unix timestampt |  |
| **malware** | [**Array&lt;DomainReportMalware&gt;**](DomainReportMalware.md) | Malware mentioned, related or referenced in the news/report | [optional] |
| **motivations** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | News mentioned motivation or motivation of related actors and malware families |  |
| **name** | **String** | News title |  |
| **notify_users** | **Boolean** | internal field, not used | [optional] |
| **read_time_in_minutes** | **Integer** | Time it takes an average user to read the news content | [optional] |
| **rich_text_description** | **String** | Rich text description with markup | [optional] |
| **rich_text_short_description** | **String** | Rich text short description with markup | [optional] |
| **short_description** | **String** | Short description of the report content | [optional] |
| **slug** | **String** | News title in a url friendly way, which is title in lowercase and special characters including space replaced with dash |  |
| **sub_type** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **tags** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | News tags, which contains MITRE, Vulnerability community identifiers, capabilities, malware family name, customer target, activity cluster, notable event, geopolitical issue |  |
| **target_countries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | News mentioned target countries or related actor&#39;s target countries |  |
| **target_industries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | News mentioned target industries or related actor&#39;s target industries |  |
| **thumbnail** | [**DomainImage**](DomainImage.md) |  |  |
| **topic** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **type** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **url** | **String** | URL of the news document where it can be accessed in the Falcon Portal | [optional] |

## Example

```ruby
require 'crimson-falcon'

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
  malware: null,
  motivations: null,
  name: null,
  notify_users: null,
  read_time_in_minutes: null,
  rich_text_description: null,
  rich_text_short_description: null,
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

