# Falcon::DomainNotificationDetailsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **String** | The raw intelligence item author username | [optional] |
| **content** | **String** | Highlighted content based on the rule that generated the notifications. Highlights are surrounded with a &#x60;&lt;cs-highlight&gt;&#x60; tag |  |
| **created_date** | **Time** | The date when the raw intelligence item was created |  |
| **labels** | **Array&lt;String&gt;** | The raw intelligence item labels. These contain hints around what is actually included in the item (malware, IPs, emails, etc). | [optional] |
| **language** | **String** | The raw intelligence item language | [optional] |
| **site** | **String** | The site where the raw intelligence item was found | [optional] |
| **title** | **String** | The raw intelligence item title | [optional] |
| **type** | **String** | The type of the raw intelligence item |  |
| **updated_date** | **Time** | The date when the raw intelligence item was updated |  |
| **url** | **String** | The raw intelligence item URL | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainNotificationDetailsV1.new(
  author: null,
  content: null,
  created_date: null,
  labels: null,
  language: null,
  site: null,
  title: null,
  type: null,
  updated_date: null,
  url: null
)
```

