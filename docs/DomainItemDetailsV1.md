# Falcon::DomainItemDetailsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_slug** | **String** | The threat actor associated with a raw intelligence item, if available. | [optional] |
| **attachments** | [**Array&lt;DomainAttachment&gt;**](DomainAttachment.md) | Attachments items linked to the raw intelligence item | [optional] |
| **author** | **String** | The author’s username of a raw intelligence item | [optional] |
| **author_id** | **String** | The raw intelligence item author identifier in our system | [optional] |
| **category** | **String** | The type of source where the raw intelligence item was found |  |
| **collection_date** | **Time** | The date and time the raw intelligence item was scraped from the original source | [optional] |
| **content** | **String** | Highlighted content based on the monitoring rule that generated the notification. Highlights are surrounded with a &#x60;&lt;cs-highlight&gt;&#x60; tag |  |
| **created_date** | **Time** | The date and time when the raw intelligence item was created |  |
| **file_type** | **String** | The file type of the raw intelligence item, if available | [optional] |
| **fragment_info** | [**DomainFragmentInfo**](DomainFragmentInfo.md) |  | [optional] |
| **full_content_url** | **String** | The URL to download the full raw text content of the raw intelligence item. It has a limited time to live | [optional] |
| **ioc_types** | **Array&lt;String&gt;** | The types of IOCs found in the raw intelligence item. List of keys populated in the iocs field | [optional] |
| **iocs** | [**DomainIOC**](DomainIOC.md) |  | [optional] |
| **labels** | **Array&lt;String&gt;** | Labels for the type of information included in a raw intelligence item | [optional] |
| **language** | **String** | The language of the raw intelligence item | [optional] |
| **marketplace_product** | [**DomainMarketplaceProduct**](DomainMarketplaceProduct.md) |  | [optional] |
| **mime_type** | **String** | The mime type of the file | [optional] |
| **sha256** | **String** | The SHA256 hash for the file | [optional] |
| **site** | **String** | The site where the raw intelligence item was found | [optional] |
| **site_id** | **String** | The ID of the site where the raw intelligence item was found |  |
| **size** | **Integer** | The size of the item&#39;s content in bytes, if available | [optional] |
| **telegram_info** | [**DomainTelegramInfo**](DomainTelegramInfo.md) |  | [optional] |
| **thread_id** | **String** | Identifier that groups all raw intelligence items belonging to the same conversation thread | [optional] |
| **title** | **String** | The title of the raw intelligence item | [optional] |
| **type** | **String** | The type of the raw intelligence item |  |
| **updated_date** | **Time** | The date and time when the raw intelligence item was updated |  |
| **url** | **String** | The URL of the raw intelligence item | [optional] |
| **user_id** | **String** | The raw intelligence item author identifier in the original source | [optional] |

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
  full_content_url: null,
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

