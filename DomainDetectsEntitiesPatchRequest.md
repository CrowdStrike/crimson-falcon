# Falcon::DomainDetectsEntitiesPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_to_uuid** | **String** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  | [optional] |
| **new_behaviors_processed** | **Array&lt;String&gt;** |  | [optional] |
| **show_in_ui** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDetectsEntitiesPatchRequest.new(
  assigned_to_uuid: null,
  comment: null,
  ids: null,
  new_behaviors_processed: null,
  show_in_ui: null,
  status: null
)
```

