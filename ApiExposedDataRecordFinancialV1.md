# Falcon::ApiExposedDataRecordFinancialV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account** | **String** | Bank Account information | [optional] |
| **credit_card** | **String** | Credit Card information | [optional] |
| **crypto_currency_addresses** | **Array&lt;String&gt;** | A list of Crypto Currency addresses | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExposedDataRecordFinancialV1.new(
  bank_account: null,
  credit_card: null,
  crypto_currency_addresses: null
)
```

