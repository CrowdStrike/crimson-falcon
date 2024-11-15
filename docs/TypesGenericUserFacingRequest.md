# Falcon::TypesGenericUserFacingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**TypesResultsFilter**](TypesResultsFilter.md) |  | [optional] |
| **optional_time** | **Integer** |  | [optional] |
| **revision_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGenericUserFacingRequest.new(
  filter: null,
  optional_time: null,
  revision_id: null
)
```

