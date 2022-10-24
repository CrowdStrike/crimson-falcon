# Falcon::DomainAzureAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **cid** | **String** |  |  |
| **status** | **String** | Account registration status. | [optional] |
| **subscription_id** | **String** | Azure Subscription ID. | [optional] |
| **tenant_id** | **String** | Azure Tenant ID to use. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAzureAccountV1.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  cid: null,
  status: null,
  subscription_id: null,
  tenant_id: null
)
```

