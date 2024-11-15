# Falcon::DomainInitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **device_id** | **String** |  | [optional] |
| **existing_aid_sessions** | **Integer** |  |  |
| **offline_queued** | **Boolean** |  |  |
| **platform** | **String** |  | [optional] |
| **previous_commands** | **Array&lt;String&gt;** |  | [optional] |
| **pwd** | **String** |  | [optional] |
| **scripts** | [**Array&lt;DomainScriptHelp&gt;**](DomainScriptHelp.md) |  |  |
| **session_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainInitResponse.new(
  created_at: null,
  device_id: null,
  existing_aid_sessions: null,
  offline_queued: null,
  platform: null,
  previous_commands: null,
  pwd: null,
  scripts: null,
  session_id: null
)
```

