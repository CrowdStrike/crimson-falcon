# Falcon::MainAvailableStreamV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_feed_url** | **String** |  |  |
| **refresh_active_session_interval** | **Integer** |  |  |
| **refresh_active_session_url** | **String** |  |  |
| **session_token** | [**MainSessionToken**](MainSessionToken.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MainAvailableStreamV2.new(
  data_feed_url: null,
  refresh_active_session_interval: null,
  refresh_active_session_url: null,
  session_token: null
)
```

