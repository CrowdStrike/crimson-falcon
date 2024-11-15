# Falcon::DomainXDRParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assign_to** | **String** |  |  |
| **assign_to_uuid** | **String** |  |  |
| **author** | **String** |  |  |
| **comment** | **String** |  |  |
| **execution_offset** | **String** |  |  |
| **origin** | **String** |  |  |
| **severity** | **Integer** |  |  |
| **status** | **String** |  |  |
| **tactic** | **String** |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **technique** | **String** |  |  |
| **template_id** | **String** |  |  |
| **trigger_mode** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainXDRParams.new(
  assign_to: null,
  assign_to_uuid: null,
  author: null,
  comment: null,
  execution_offset: null,
  origin: null,
  severity: null,
  status: null,
  tactic: null,
  tags: null,
  technique: null,
  template_id: null,
  trigger_mode: null,
  type: null
)
```

