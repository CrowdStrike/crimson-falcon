# Falcon::DomainCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bin_code** | **String** |  | [optional] |
| **cardholder_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration** | **String** |  | [optional] |
| **issuing_bank** | **String** |  | [optional] |
| **last_transaction_at** | **Time** |  | [optional] |
| **servicecode** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCard.new(
  bin_code: null,
  cardholder_name: null,
  description: null,
  expiration: null,
  issuing_bank: null,
  last_transaction_at: null,
  servicecode: null
)
```

