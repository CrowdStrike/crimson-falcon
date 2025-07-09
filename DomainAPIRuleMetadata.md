# Falcon::DomainAPIRuleMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assessment_status** | **String** |  |  |
| **asset_type** | **String** |  |  |
| **audit_procedure** | **String** |  | [optional] |
| **default_value** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **framework_name** | **String** |  | [optional] |
| **framework_name_version** | **String** |  | [optional] |
| **framework_version** | **String** |  | [optional] |
| **impact** | **String** |  |  |
| **name** | **String** |  |  |
| **recommendation_no** | **String** |  |  |
| **references** | **String** |  | [optional] |
| **remediation** | **String** |  |  |
| **rule_id** | **String** |  |  |
| **severity** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIRuleMetadata.new(
  assessment_status: null,
  asset_type: null,
  audit_procedure: null,
  default_value: null,
  description: null,
  framework_name: null,
  framework_name_version: null,
  framework_version: null,
  impact: null,
  name: null,
  recommendation_no: null,
  references: null,
  remediation: null,
  rule_id: null,
  severity: null
)
```

