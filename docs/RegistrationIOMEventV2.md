# Falcon::RegistrationIOMEventV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_name** | **String** |  |  |
| **agent_id** | **String** |  | [optional] |
| **azure_tenant_id** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **cloud_labels** | [**Array&lt;ClassificationLabel&gt;**](ClassificationLabel.md) |  | [optional] |
| **cloud_provider** | **String** |  |  |
| **cloud_scopes** | [**Array&lt;DomainCloudScope&gt;**](DomainCloudScope.md) |  | [optional] |
| **custom_policy_id** | **Integer** |  | [optional] |
| **finding** | **Object** |  |  |
| **id** | **String** |  |  |
| **is_managed** | **Boolean** |  | [optional] |
| **policy_id** | **Integer** |  | [optional] |
| **policy_statement** | **String** |  |  |
| **policy_type** | **String** |  | [optional] |
| **region** | **String** |  |  |
| **report_date_time** | **Time** |  |  |
| **resource_attributes** | **Object** |  |  |
| **resource_create_time** | **Time** |  |  |
| **resource_id** | **String** |  |  |
| **resource_id_type** | **String** |  |  |
| **resource_url** | **String** |  |  |
| **resource_uuid** | **String** |  |  |
| **scan_id** | **String** |  | [optional] |
| **scan_time** | **Time** |  |  |
| **service** | **String** |  |  |
| **severity** | **String** |  |  |
| **status** | **String** |  |  |
| **tags** | **Hash&lt;String, String&gt;** |  |  |
| **vm_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationIOMEventV2.new(
  account_id: null,
  account_name: null,
  agent_id: null,
  azure_tenant_id: null,
  cid: null,
  cloud_labels: null,
  cloud_provider: null,
  cloud_scopes: null,
  custom_policy_id: null,
  finding: null,
  id: null,
  is_managed: null,
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
  resource_uuid: null,
  scan_id: null,
  scan_time: null,
  service: null,
  severity: null,
  status: null,
  tags: null,
  vm_id: null
)
```

