# Falcon::DomainAPICombinedNodesFindings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  |  |
| **assessments** | [**Array&lt;DomainAssetFinding&gt;**](DomainAssetFinding.md) |  |  |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  | [optional] |
| **cloud_provider** | **String** |  | [optional] |
| **cloud_region** | **String** |  | [optional] |
| **cluster_name** | **String** |  | [optional] |
| **cluster_type** | **String** |  | [optional] |
| **node_id** | **String** |  | [optional] |
| **node_ipv4** | **String** |  | [optional] |
| **node_ipv6** | **String** |  | [optional] |
| **node_name** | **String** |  | [optional] |
| **node_type** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPICombinedNodesFindings.new(
  aid: null,
  assessments: null,
  cid: null,
  cloud_account_id: null,
  cloud_provider: null,
  cloud_region: null,
  cluster_name: null,
  cluster_type: null,
  node_id: null,
  node_ipv4: null,
  node_ipv6: null,
  node_name: null,
  node_type: null
)
```

