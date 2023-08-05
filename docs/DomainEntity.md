# Falcon::DomainEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | numerical id ensuring data integrity |  |
| **name** | **String** | name of the entity | [optional] |
| **slug** | **String** | search and url friendly value, usually lowercase representation of value with spaces replaced with dashes, except for countries where 2 letters codes are used | [optional] |
| **value** | **String** | string value of the generic entity which is searchable and filterable | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainEntity.new(
  id: null,
  name: null,
  slug: null,
  value: null
)
```

