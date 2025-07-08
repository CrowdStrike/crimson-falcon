# Falcon::ResourcesComplianceControl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_name** | **String** |  |  |
| **assessment_id** | **String** |  |  |
| **cloud_groups** | [**Array&lt;DomainCloudScope&gt;**](DomainCloudScope.md) |  | [optional] |
| **cloud_groups_v2** | [**Array&lt;DomainCloudGroup&gt;**](DomainCloudGroup.md) |  | [optional] |
| **cloud_labels** | [**Array&lt;ClassificationLabel&gt;**](ClassificationLabel.md) |  | [optional] |
| **cloud_provider** | **String** |  |  |
| **control** | [**ResourcesControlInfo**](ResourcesControlInfo.md) |  |  |
| **gcrn** | **String** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **last_evaluated** | **Time** |  |  |
| **region** | **String** |  |  |
| **resource_counts** | [**ResourceCounts**](ResourceCounts.md) |  |  |
| **resource_provider** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **resource_type_name** | **String** |  |  |
| **rules** | [**Array&lt;ResourcesRule&gt;**](ResourcesRule.md) |  |  |
| **service** | **String** |  |  |
| **service_category** | **String** |  |  |
| **severities** | **Array&lt;String&gt;** |  |  |
| **tags** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesComplianceControl.new(
  account_id: null,
  account_name: null,
  assessment_id: null,
  cloud_groups: null,
  cloud_groups_v2: null,
  cloud_labels: null,
  cloud_provider: null,
  control: null,
  gcrn: null,
  groups: null,
  last_evaluated: null,
  region: null,
  resource_counts: null,
  resource_provider: null,
  resource_type: null,
  resource_type_name: null,
  rules: null,
  service: null,
  service_category: null,
  severities: null,
  tags: null
)
```

