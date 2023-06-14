# Falcon::PreventionSettingReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the setting to update |  |
| **value** | **Object** | The new value for the setting. For a toggle this value will take the form {&#39;enabled&#39;:true|false}. For an mlslider this will take the form {&#39;detection&#39;:&#39;DISABLED|CAUTIOUS|MODERATE|AGGRESSIVE|EXTRA_AGGRESSIVE&#39;,&#39;prevention&#39;:&#39;DISABLED|CAUTIOUS|MODERATE|AGGRESSIVE|EXTRA_AGGRESSIVE&#39;} |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PreventionSettingReqV1.new(
  id: null,
  value: null
)
```

