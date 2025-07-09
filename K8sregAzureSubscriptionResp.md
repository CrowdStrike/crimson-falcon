# Falcon::K8sregAzureSubscriptionResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **azure_permissions_status** | [**Array&lt;K8sregAccountPermissionsStatus&gt;**](K8sregAccountPermissionsStatus.md) |  |  |
| **created_at** | **Time** |  |  |
| **from_cspm** | **Boolean** |  |  |
| **status** | **String** |  |  |
| **subscription_id** | **String** |  |  |
| **tenant_id** | **String** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregAzureSubscriptionResp.new(
  azure_permissions_status: null,
  created_at: null,
  from_cspm: null,
  status: null,
  subscription_id: null,
  tenant_id: null,
  updated_at: null
)
```

