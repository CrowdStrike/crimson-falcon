# Falcon::DomainReconAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  |  |
| **details** | [**Array&lt;DomainReconAPIErrorDetail&gt;**](DomainReconAPIErrorDetail.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **message** | **String** |  |  |
| **message_key** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReconAPIError.new(
  code: null,
  details: null,
  id: null,
  message: null,
  message_key: null
)
```

