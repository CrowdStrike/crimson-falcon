# Falcon::ResponsesPreventionCategoryV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the category |  |
| **settings** | [**Array&lt;ResponsesPreventionSettingV1&gt;**](ResponsesPreventionSettingV1.md) | A collection of prevention policy settings |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesPreventionCategoryV1.new(
  name: null,
  settings: null
)
```

