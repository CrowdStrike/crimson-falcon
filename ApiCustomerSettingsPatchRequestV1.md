# Falcon::ApiCustomerSettingsPatchRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_active_tokens** | **Integer** | Set to a positive interger value to set limit of active tokens a customer may have at a time. | [optional] |
| **tokens_required** | **Boolean** | Set to true to enable installation tokens for the customer. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCustomerSettingsPatchRequestV1.new(
  max_active_tokens: null,
  tokens_required: null
)
```

