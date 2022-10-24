# Falcon::DomainPublicIndicatorV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_marker** | **String** |  |  |
| **actors** | **Array&lt;String&gt;** |  |  |
| **deleted** | **Boolean** |  |  |
| **domain_types** | **Array&lt;String&gt;** |  |  |
| **id** | **String** |  |  |
| **indicator** | **String** |  |  |
| **ip_address_types** | **Array&lt;String&gt;** |  |  |
| **kill_chains** | **Array&lt;String&gt;** |  |  |
| **labels** | [**Array&lt;DomainCSIXLabel&gt;**](DomainCSIXLabel.md) |  |  |
| **last_updated** | **Integer** |  |  |
| **malicious_confidence** | **String** |  |  |
| **malware_families** | **Array&lt;String&gt;** |  |  |
| **published_date** | **Integer** |  |  |
| **relations** | [**Array&lt;DomainCSIXRelation&gt;**](DomainCSIXRelation.md) |  |  |
| **reports** | **Array&lt;String&gt;** |  |  |
| **targets** | **Array&lt;String&gt;** |  |  |
| **threat_types** | **Array&lt;String&gt;** |  |  |
| **type** | **String** |  |  |
| **vulnerabilities** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainPublicIndicatorV3.new(
  _marker: null,
  actors: null,
  deleted: null,
  domain_types: null,
  id: null,
  indicator: null,
  ip_address_types: null,
  kill_chains: null,
  labels: null,
  last_updated: null,
  malicious_confidence: null,
  malware_families: null,
  published_date: null,
  relations: null,
  reports: null,
  targets: null,
  threat_types: null,
  type: null,
  vulnerabilities: null
)
```

