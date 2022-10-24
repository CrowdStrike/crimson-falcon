# Falcon::RegistrationAzureAccountExternalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Azure Subscription ID. | [optional] |
| **tenant_id** | **String** | Azure Tenant ID to use. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationAzureAccountExternalV1.new(
  subscription_id: null,
  tenant_id: null
)
```

