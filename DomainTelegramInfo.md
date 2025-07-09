# Falcon::DomainTelegramInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_info** | [**DomainTelegramChannelInfo**](DomainTelegramChannelInfo.md) |  | [optional] |
| **recipient_info** | [**DomainTelegramRecipientInfo**](DomainTelegramRecipientInfo.md) |  | [optional] |
| **sender_info** | [**DomainTelegramSenderInfo**](DomainTelegramSenderInfo.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainTelegramInfo.new(
  channel_info: null,
  recipient_info: null,
  sender_info: null
)
```

