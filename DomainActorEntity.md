# Falcon::DomainActorEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the actor | [optional] |
| **name** | **String** | name of the actor | [optional] |
| **publish_flags** | **Array&lt;String&gt;** | set of publish flags | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActorEntity.new(
  id: null,
  name: null,
  publish_flags: null
)
```

