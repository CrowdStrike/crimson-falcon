# Falcon::AzureAzureRegistrationCreateInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  | [optional] |
| **additional_features** | [**Array&lt;AzureAdditionalFeature&gt;**](AzureAdditionalFeature.md) |  |  |
| **additional_properties** | **Object** |  | [optional] |
| **api_client_key_id** | **String** |  | [optional] |
| **api_client_key_type** | **String** |  | [optional] |
| **cs_infra_region** | **String** |  | [optional] |
| **cs_infra_subscription_id** | **String** |  | [optional] |
| **deployment_method** | **String** |  |  |
| **deployment_stack_host_id** | **String** |  | [optional] |
| **deployment_stack_name** | **String** |  | [optional] |
| **dspm_regions** | **Array&lt;String&gt;** |  | [optional] |
| **environment** | **String** |  | [optional] |
| **event_hub_settings** | [**Array&lt;AzureEventHubSettings&gt;**](AzureEventHubSettings.md) |  |  |
| **management_group_ids** | **Array&lt;String&gt;** |  |  |
| **microsoft_graph_permission_ids** | **Array&lt;String&gt;** |  |  |
| **microsoft_graph_permission_ids_readonly** | **Boolean** |  | [optional] |
| **products** | [**Array&lt;DomainProductFeatures&gt;**](DomainProductFeatures.md) |  | [optional] |
| **resource_name_prefix** | **String** |  | [optional] |
| **resource_name_suffix** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **subscription_ids** | **Array&lt;String&gt;** |  |  |
| **tags** | **Hash&lt;String, String&gt;** |  |  |
| **template_version** | **String** |  | [optional] |
| **tenant_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AzureAzureRegistrationCreateInput.new(
  account_type: null,
  additional_features: null,
  additional_properties: null,
  api_client_key_id: null,
  api_client_key_type: null,
  cs_infra_region: null,
  cs_infra_subscription_id: null,
  deployment_method: null,
  deployment_stack_host_id: null,
  deployment_stack_name: null,
  dspm_regions: null,
  environment: null,
  event_hub_settings: null,
  management_group_ids: null,
  microsoft_graph_permission_ids: null,
  microsoft_graph_permission_ids_readonly: null,
  products: null,
  resource_name_prefix: null,
  resource_name_suffix: null,
  status: null,
  subscription_ids: null,
  tags: null,
  template_version: null,
  tenant_id: null
)
```

