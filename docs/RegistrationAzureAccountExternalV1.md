# Falcon::RegistrationAzureAccountExternalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **default_subscription** | **Boolean** |  | [optional] |
| **subscription_id** | **String** | Azure Subscription ID. | [optional] |
| **tenant_id** | **String** | Azure Tenant ID to use. | [optional] |
| **years_valid** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureAccountExternalV1.new(
  account_type: null,
  client_id: null,
  default_subscription: null,
  subscription_id: null,
  tenant_id: null,
  years_valid: null
)
```

