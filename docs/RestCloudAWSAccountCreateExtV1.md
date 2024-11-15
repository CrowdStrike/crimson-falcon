# Falcon::RestCloudAWSAccountCreateExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **account_type** | **String** |  | [optional] |
| **csp_events** | **Boolean** |  | [optional] |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  |  |
| **products** | [**Array&lt;RestAccountProductUpsertRequestExtV1&gt;**](RestAccountProductUpsertRequestExtV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestCloudAWSAccountCreateExtV1.new(
  account_id: null,
  account_type: null,
  csp_events: null,
  is_master: null,
  organization_id: null,
  products: null
)
```

