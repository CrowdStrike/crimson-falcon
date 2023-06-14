# Falcon::ReconmsaAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  |  |
| **details** | [**Array&lt;ReconmsaAPIErrorDetail&gt;**](ReconmsaAPIErrorDetail.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **message** | **String** |  |  |
| **message_key** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ReconmsaAPIError.new(
  code: null,
  details: null,
  id: null,
  message: null,
  message_key: null
)
```

