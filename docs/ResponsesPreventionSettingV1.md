# Falcon::ResponsesPreventionSettingV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The human readable description of the setting | [optional] |
| **id** | **String** | The id of the setting |  |
| **name** | **String** | The name of the setting |  |
| **type** | **String** | The type of the setting which can be used as a hint when displaying in the UI |  |
| **value** | **Object** | The value for the setting. For a toggle this value will take the form {&#39;enabled&#39;:true|false}. For an mlslider this will take the form {&#39;detection&#39;:&#39;DISABLED|CAUTIOUS|MODERATE|AGGRESSIVE|EXTRA_AGGRESSIVE&#39;,&#39;prevention&#39;:&#39;DISABLED|CAUTIOUS|MODERATE|AGGRESSIVE|EXTRA_AGGRESSIVE&#39;} |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesPreventionSettingV1.new(
  description: null,
  id: null,
  name: null,
  type: null,
  value: null
)
```

