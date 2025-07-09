# Falcon::RegistrationIOMEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_name** | **String** |  |  |
| **azure_tenant_id** | **String** |  |  |
| **cid** | **String** |  |  |
| **cloud_provider** | **String** |  |  |
| **custom_policy_id** | **String** |  | [optional] |
| **finding** | **String** |  |  |
| **policy_id** | **String** |  | [optional] |
| **policy_statement** | **String** |  |  |
| **policy_type** | **String** |  | [optional] |
| **region** | **String** |  |  |
| **report_date_time** | **String** |  |  |
| **resource_attributes** | **String** |  |  |
| **resource_create_time** | **String** |  |  |
| **resource_id** | **String** |  |  |
| **resource_id_type** | **String** |  |  |
| **resource_url** | **String** |  |  |
| **service** | **String** |  |  |
| **severity** | **String** |  |  |
| **status** | **String** |  |  |
| **tags** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationIOMEvent.new(
  account_id: null,
  account_name: null,
  azure_tenant_id: null,
  cid: null,
  cloud_provider: null,
  custom_policy_id: null,
  finding: null,
  policy_id: null,
  policy_statement: null,
  policy_type: null,
  region: null,
  report_date_time: null,
  resource_attributes: null,
  resource_create_time: null,
  resource_id: null,
  resource_id_type: null,
  resource_url: null,
  service: null,
  severity: null,
  status: null,
  tags: null
)
```

