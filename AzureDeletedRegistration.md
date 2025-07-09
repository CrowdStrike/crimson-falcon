# Falcon::AzureDeletedRegistration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cs_infra_subscription_id** | **String** |  |  |
| **deployment_method** | **String** |  |  |
| **deployment_stack_location** | **String** |  |  |
| **deployment_stack_name** | **String** |  |  |
| **deployment_stack_scope** | **String** |  |  |
| **enterprise_app_url** | **String** |  |  |
| **products** | [**Array&lt;DomainProductFeatures&gt;**](DomainProductFeatures.md) |  |  |
| **status** | **String** |  |  |
| **subscriptions** | [**Array&lt;AzureDeletedSubscriptionInfo&gt;**](AzureDeletedSubscriptionInfo.md) |  |  |
| **tenant_id** | **String** |  |  |
| **tenant_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AzureDeletedRegistration.new(
  cs_infra_subscription_id: null,
  deployment_method: null,
  deployment_stack_location: null,
  deployment_stack_name: null,
  deployment_stack_scope: null,
  enterprise_app_url: null,
  products: null,
  status: null,
  subscriptions: null,
  tenant_id: null,
  tenant_name: null
)
```

