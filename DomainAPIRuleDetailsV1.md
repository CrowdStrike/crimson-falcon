# Falcon::DomainAPIRuleDetailsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_information** | **String** |  |  |
| **applicable_profiles** | **Array&lt;String&gt;** |  |  |
| **assessment_status** | **String** |  |  |
| **audit_procedure** | **String** |  |  |
| **authority** | **String** |  |  |
| **benchmark_title** | **String** |  |  |
| **compliance_mappings** | [**Array&lt;DomainAPIComplianceMappingV1&gt;**](DomainAPIComplianceMappingV1.md) |  | [optional] |
| **description** | **String** |  |  |
| **id** | **String** |  |  |
| **impact_statement** | **String** |  |  |
| **platform** | **String** |  |  |
| **rationale_statement** | **String** |  |  |
| **recommendation_id** | **String** |  |  |
| **references** | **Array&lt;String&gt;** |  | [optional] |
| **remediation_procedure** | **String** |  |  |
| **title** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIRuleDetailsV1.new(
  additional_information: null,
  applicable_profiles: null,
  assessment_status: null,
  audit_procedure: null,
  authority: null,
  benchmark_title: null,
  compliance_mappings: null,
  description: null,
  id: null,
  impact_statement: null,
  platform: null,
  rationale_statement: null,
  recommendation_id: null,
  references: null,
  remediation_procedure: null,
  title: null
)
```

