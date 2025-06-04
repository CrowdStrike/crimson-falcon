# Falcon::RestCloudAWSAccountCreateExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **cloudformation_stack_arn** | **String** |  | [optional] |
| **cloudtrail_region** | **String** |  | [optional] |
| **csp_events** | **Boolean** |  | [optional] |
| **deployment_method** | **String** |  | [optional] |
| **dspm_role** | **String** |  | [optional] |
| **falcon_client_id** | **String** |  | [optional] |
| **iam_role_arn** | **String** |  | [optional] |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **products** | [**Array&lt;RestAccountProductUpsertRequestExtV1&gt;**](RestAccountProductUpsertRequestExtV1.md) |  | [optional] |
| **resource_name_prefix** | **String** |  | [optional] |
| **resource_name_suffix** | **String** |  | [optional] |
| **root_stack_id** | **String** |  | [optional] |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |
| **use_existing_cloudtrail** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestCloudAWSAccountCreateExtV1.new(
  account_id: null,
  account_type: null,
  cloudformation_stack_arn: null,
  cloudtrail_region: null,
  csp_events: null,
  deployment_method: null,
  dspm_role: null,
  falcon_client_id: null,
  iam_role_arn: null,
  is_master: null,
  organization_id: null,
  products: null,
  resource_name_prefix: null,
  resource_name_suffix: null,
  root_stack_id: null,
  target_ous: null,
  use_existing_cloudtrail: null
)
```

