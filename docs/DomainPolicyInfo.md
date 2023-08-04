# Falcon::DomainPolicyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **account_scope** | **String** |  |  |
| **alert_logic** | **String** |  | [optional] |
| **api_command** | **String** |  | [optional] |
| **asset_type_id** | **Integer** |  | [optional] |
| **attack_tool** | **String** |  | [optional] |
| **attack_tool_command** | **String** |  | [optional] |
| **attack_types** | **Array&lt;String&gt;** |  | [optional] |
| **cis_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **cisa_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **cli_command** | **String** |  | [optional] |
| **cloud_asset_type** | **String** |  | [optional] |
| **cloud_document** | **String** |  | [optional] |
| **cloud_platform** | **Integer** |  | [optional] |
| **cloud_platform_type** | **String** |  | [optional] |
| **cloud_service** | **Integer** |  | [optional] |
| **cloud_service_friendly** | **String** |  | [optional] |
| **cloud_service_subtype** | **String** |  | [optional] |
| **cloud_service_type** | **String** |  | [optional] |
| **confidence** | **String** |  | [optional] |
| **default_severity** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **event_type** | **String** |  | [optional] |
| **fql_policy** | **String** |  | [optional] |
| **internal_only** | **Boolean** |  | [optional] |
| **is_enabled** | **Boolean** |  |  |
| **is_remediable** | **Boolean** |  |  |
| **iso_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **mitre_attack_cloud_matrix** | **String** |  | [optional] |
| **mitre_attack_cloud_subtype** | **String** |  | [optional] |
| **nist_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **pci_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **policy_confidence_score** | **Integer** |  | [optional] |
| **policy_fail_query** | **String** |  | [optional] |
| **policy_pass_query** | **String** |  | [optional] |
| **policy_remediation** | **String** |  | [optional] |
| **policy_severity** | **Integer** |  | [optional] |
| **policy_severity_score** | **Integer** |  | [optional] |
| **policy_statement** | **String** |  | [optional] |
| **policy_type** | **String** |  | [optional] |
| **remediation_summary** | **String** |  | [optional] |
| **soc2_benchmark_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **tactic_id** | **String** |  | [optional] |
| **tactic_url** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **technique_id** | **String** |  | [optional] |
| **technique_url** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainPolicyInfo.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  account_scope: null,
  alert_logic: null,
  api_command: null,
  asset_type_id: null,
  attack_tool: null,
  attack_tool_command: null,
  attack_types: null,
  cis_benchmark_ids: null,
  cisa_benchmark_ids: null,
  cli_command: null,
  cloud_asset_type: null,
  cloud_document: null,
  cloud_platform: null,
  cloud_platform_type: null,
  cloud_service: null,
  cloud_service_friendly: null,
  cloud_service_subtype: null,
  cloud_service_type: null,
  confidence: null,
  default_severity: null,
  description: null,
  event_type: null,
  fql_policy: null,
  internal_only: null,
  is_enabled: null,
  is_remediable: null,
  iso_benchmark_ids: null,
  mitre_attack_cloud_matrix: null,
  mitre_attack_cloud_subtype: null,
  nist_benchmark_ids: null,
  pci_benchmark_ids: null,
  policy_confidence_score: null,
  policy_fail_query: null,
  policy_pass_query: null,
  policy_remediation: null,
  policy_severity: null,
  policy_severity_score: null,
  policy_statement: null,
  policy_type: null,
  remediation_summary: null,
  soc2_benchmark_ids: null,
  tactic: null,
  tactic_id: null,
  tactic_url: null,
  technique: null,
  technique_id: null,
  technique_url: null
)
```

