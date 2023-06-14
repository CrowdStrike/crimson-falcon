# Falcon::DomainInitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **existing_aid_sessions** | **Integer** |  |  |
| **offline_queued** | **Boolean** |  |  |
| **previous_commands** | **Array&lt;String&gt;** |  | [optional] |
| **pwd** | **String** |  | [optional] |
| **scripts** | [**Array&lt;DomainScriptHelp&gt;**](DomainScriptHelp.md) |  |  |
| **session_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainInitResponse.new(
  created_at: null,
  existing_aid_sessions: null,
  offline_queued: null,
  previous_commands: null,
  pwd: null,
  scripts: null,
  session_id: null
)
```

