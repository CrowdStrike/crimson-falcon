# Falcon::DomainCIDPolicyAssignments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_scope** | **String** |  | [optional] |
| **attack_types** | **Array&lt;String&gt;** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **cis_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **cisa_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **cloud_asset_type** | **String** |  | [optional] |
| **cloud_asset_type_id** | **Integer** |  | [optional] |
| **cloud_provider** | **String** |  | [optional] |
| **cloud_service** | **String** |  | [optional] |
| **cloud_service_friendly** | **String** |  | [optional] |
| **cloud_service_id** | **Integer** |  | [optional] |
| **cloud_service_subtype** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **default_severity** | **String** |  | [optional] |
| **fql_policy** | **String** |  | [optional] |
| **hipaa_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **hitrust_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **is_global** | **Boolean** |  |  |
| **is_remediable** | **Boolean** |  |  |
| **iso_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **nist_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **pci_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **policy_id** | **Integer** |  | [optional] |
| **policy_settings** | [**Array&lt;DomainPolicySettingByAccountAndRegion&gt;**](DomainPolicySettingByAccountAndRegion.md) |  | [optional] |
| **policy_timestamp** | **Time** |  | [optional] |
| **policy_type** | **String** |  | [optional] |
| **remediation_summary** | **String** |  | [optional] |
| **soc2_benchmark** | [**Array&lt;DomainBenchmark&gt;**](DomainBenchmark.md) |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCIDPolicyAssignments.new(
  account_scope: null,
  attack_types: null,
  cid: null,
  cis_benchmark: null,
  cisa_benchmark: null,
  cloud_asset_type: null,
  cloud_asset_type_id: null,
  cloud_provider: null,
  cloud_service: null,
  cloud_service_friendly: null,
  cloud_service_id: null,
  cloud_service_subtype: null,
  created_at: null,
  default_severity: null,
  fql_policy: null,
  hipaa_benchmark: null,
  hitrust_benchmark: null,
  is_global: null,
  is_remediable: null,
  iso_benchmark: null,
  name: null,
  nist_benchmark: null,
  pci_benchmark: null,
  policy_id: null,
  policy_settings: null,
  policy_timestamp: null,
  policy_type: null,
  remediation_summary: null,
  soc2_benchmark: null,
  updated_at: null
)
```

