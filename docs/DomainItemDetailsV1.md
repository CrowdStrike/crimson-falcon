# Falcon::DomainItemDetailsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_slug** | **String** | Threat actor associated with the raw intelligence item, if available | [optional] |
| **attachments** | [**Array&lt;DomainAttachment&gt;**](DomainAttachment.md) | Pointers to attachments items linked to this item | [optional] |
| **author** | **String** | The raw intelligence item author username | [optional] |
| **author_id** | **String** | The raw intelligence item author identifier in our system | [optional] |
| **category** | **String** | Category of the source where the item was found |  |
| **collection_date** | **Time** | The date when the raw intelligence item was scraped from the original source | [optional] |
| **content** | **String** | Highlighted content based on the rule that generated the notifications. Highlights are surrounded with a &#x60;&lt;cs-highlight&gt;&#x60; tag |  |
| **created_date** | **Time** | The date when the raw intelligence item was created |  |
| **file_type** | **String** | Mime type of the file for file type items | [optional] |
| **fragment_info** | [**DomainFragmentInfo**](DomainFragmentInfo.md) |  | [optional] |
| **ioc_types** | **Array&lt;String&gt;** | IOC types available in the raw intelligence item. List of keys populated in the iocs field | [optional] |
| **iocs** | [**DomainIOC**](DomainIOC.md) |  | [optional] |
| **labels** | **Array&lt;String&gt;** | The raw intelligence item labels. These contain hints around what is actually included in the item (malware, IPs, emails, etc). | [optional] |
| **language** | **String** | The raw intelligence item language | [optional] |
| **marketplace_product** | [**DomainMarketplaceProduct**](DomainMarketplaceProduct.md) |  | [optional] |
| **mime_type** | **String** | Mime type of the file for file type items | [optional] |
| **sha256** | **String** | SHA256 of the file contents for file type items | [optional] |
| **site** | **String** | The site where the raw intelligence item was found | [optional] |
| **site_id** | **String** | The ID of the site where the raw intelligence item was found |  |
| **size** | **Integer** | Size of the item&#39;s content in bytes, if available | [optional] |
| **telegram_info** | [**DomainTelegramInfo**](DomainTelegramInfo.md) |  | [optional] |
| **thread_id** | **String** | Identifier that groups all raw intelligence items belonging to the same &#39;conversation stream&#39;, i.e. chatroom, forum thread, etc. | [optional] |
| **title** | **String** | The raw intelligence item title | [optional] |
| **type** | **String** | The type of the raw intelligence item |  |
| **updated_date** | **Time** | The date when the raw intelligence item was updated |  |
| **url** | **String** | The raw intelligence item URL | [optional] |
| **user_id** | **String** | The raw intelligence item author identifier in the original site | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainItemDetailsV1.new(
  actor_slug: null,
  attachments: null,
  author: null,
  author_id: null,
  category: null,
  collection_date: null,
  content: null,
  created_date: null,
  file_type: null,
  fragment_info: null,
  ioc_types: null,
  iocs: null,
  labels: null,
  language: null,
  marketplace_product: null,
  mime_type: null,
  sha256: null,
  site: null,
  site_id: null,
  size: null,
  telegram_info: null,
  thread_id: null,
  title: null,
  type: null,
  updated_date: null,
  url: null,
  user_id: null
)
```

