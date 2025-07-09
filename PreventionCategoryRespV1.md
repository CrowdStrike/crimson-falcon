# Falcon::PreventionCategoryRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the category |  |
| **settings** | [**Array&lt;PreventionSettingRespV1&gt;**](PreventionSettingRespV1.md) | A collection of prevention policy settings |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PreventionCategoryRespV1.new(
  name: null,
  settings: null
)
```

