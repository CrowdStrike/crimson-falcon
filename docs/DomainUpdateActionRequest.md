# Falcon::DomainUpdateActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_format** | **String** |  |  |
| **frequency** | **String** |  |  |
| **id** | **String** |  |  |
| **recipients** | **Array&lt;String&gt;** |  |  |
| **status** | **String** |  |  |
| **trigger_matchless** | **Boolean** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainUpdateActionRequest.new(
  content_format: null,
  frequency: null,
  id: null,
  recipients: null,
  status: null,
  trigger_matchless: null
)
```

