# Falcon::DomainDetectsEntitiesPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_to_uuid** | **String** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  | [optional] |
| **show_in_ui** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDetectsEntitiesPatchRequest.new(
  assigned_to_uuid: null,
  comment: null,
  ids: null,
  show_in_ui: null,
  status: null
)
```

