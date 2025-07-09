# Falcon::DomainActorNewsDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Integer** | Date of the news document creation, unix timestamp |  |
| **id** | **Integer** | Integer ID of the News document |  |
| **name** | **String** | News title |  |
| **slug** | **String** | News title in a url friendly way, which is title in lowercase and special characters including space replaced with dash |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActorNewsDocument.new(
  created_date: null,
  id: null,
  name: null,
  slug: null
)
```

