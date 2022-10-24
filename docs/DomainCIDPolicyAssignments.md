# Falcon::DomainCIDPolicyAssignments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **cis_benchmark** | [**Array&lt;DomainCIDPolicyAssignmentsCisBenchmark&gt;**](DomainCIDPolicyAssignmentsCisBenchmark.md) |  | [optional] |
| **cloud_asset_type** | **String** |  | [optional] |
| **cloud_service** | **String** |  | [optional] |
| **cloud_service_subtype** | **String** |  | [optional] |
| **default_severity** | **String** |  | [optional] |
| **fql_policy** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **nist_benchmark** | [**Array&lt;DomainCIDPolicyAssignmentsNistBenchmark&gt;**](DomainCIDPolicyAssignmentsNistBenchmark.md) |  | [optional] |
| **pci_benchmark** | [**Array&lt;DomainCIDPolicyAssignmentsPciBenchmark&gt;**](DomainCIDPolicyAssignmentsPciBenchmark.md) |  | [optional] |
| **policy_id** | **Integer** |  | [optional] |
| **policy_settings** | [**Array&lt;DomainPolicySettingByAccountAndRegion&gt;**](DomainPolicySettingByAccountAndRegion.md) |  | [optional] |
| **policy_timestamp** | **Time** |  | [optional] |
| **policy_type** | **String** |  | [optional] |
| **soc2_benchmark** | [**Array&lt;DomainCIDPolicyAssignmentsSoc2Benchmark&gt;**](DomainCIDPolicyAssignmentsSoc2Benchmark.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainCIDPolicyAssignments.new(
  cid: null,
  cis_benchmark: null,
  cloud_asset_type: null,
  cloud_service: null,
  cloud_service_subtype: null,
  default_severity: null,
  fql_policy: null,
  name: null,
  nist_benchmark: null,
  pci_benchmark: null,
  policy_id: null,
  policy_settings: null,
  policy_timestamp: null,
  policy_type: null,
  soc2_benchmark: null
)
```

