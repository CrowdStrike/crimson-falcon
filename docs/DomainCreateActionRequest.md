# Falcon::DomainCreateActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_format** | **String** |  |  |
| **frequency** | **String** |  |  |
| **recipients** | **Array&lt;String&gt;** |  |  |
| **trigger_matchless** | **Boolean** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainCreateActionRequest.new(
  content_format: null,
  frequency: null,
  recipients: null,
  trigger_matchless: null,
  type: null
)
```

