# Falcon::DomainPolicyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **alert_logic** | **String** |  | [optional] |
| **api_command** | **String** |  | [optional] |
| **cli_command** | **String** |  | [optional] |
| **cloud_document** | **String** |  | [optional] |
| **cloud_platform** | **Integer** |  | [optional] |
| **cloud_platform_type** | **String** |  | [optional] |
| **cloud_service** | **Integer** |  | [optional] |
| **cloud_service_friendly** | **String** |  | [optional] |
| **cloud_service_subtype** | **String** |  | [optional] |
| **cloud_service_type** | **String** |  | [optional] |
| **default_severity** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **event_type** | **String** |  | [optional] |
| **mitre_attack_cloud_matrix** | **String** |  | [optional] |
| **mitre_attack_cloud_subtype** | **String** |  | [optional] |
| **policy_fail_query** | **String** |  | [optional] |
| **policy_pass_query** | **String** |  | [optional] |
| **policy_remediation** | **String** |  | [optional] |
| **policy_severity** | **Integer** |  | [optional] |
| **policy_statement** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainPolicyInfo.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  alert_logic: null,
  api_command: null,
  cli_command: null,
  cloud_document: null,
  cloud_platform: null,
  cloud_platform_type: null,
  cloud_service: null,
  cloud_service_friendly: null,
  cloud_service_subtype: null,
  cloud_service_type: null,
  default_severity: null,
  description: null,
  event_type: null,
  mitre_attack_cloud_matrix: null,
  mitre_attack_cloud_subtype: null,
  policy_fail_query: null,
  policy_pass_query: null,
  policy_remediation: null,
  policy_severity: null,
  policy_statement: null
)
```

