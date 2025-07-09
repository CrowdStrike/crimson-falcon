# Falcon::V2ClusterV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | **String** |  | [optional] |
| **agent_coverage** | [**V2AgentCoverage**](V2AgentCoverage.md) |  | [optional] |
| **cid** | **String** |  |  |
| **cloud_provider_info** | [**V2CloudProviderInfo**](V2CloudProviderInfo.md) |  | [optional] |
| **cloud_resource_id** | **String** |  | [optional] |
| **cluster_id** | **String** |  | [optional] |
| **cluster_name** | **String** |  | [optional] |
| **cluster_status** | **String** |  | [optional] |
| **kubernetes_version** | **String** |  | [optional] |
| **labels** | **Hash&lt;String, String&gt;** |  | [optional] |
| **management_status** | **String** |  | [optional] |
| **resource_counts** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **security_group** | **String** |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** |  | [optional] |
| **timestamps** | [**V2TimestampFields**](V2TimestampFields.md) |  |  |
| **virtual_network** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2ClusterV2.new(
  access: null,
  agent_coverage: null,
  cid: null,
  cloud_provider_info: null,
  cloud_resource_id: null,
  cluster_id: null,
  cluster_name: null,
  cluster_status: null,
  kubernetes_version: null,
  labels: null,
  management_status: null,
  resource_counts: null,
  security_group: null,
  tags: null,
  timestamps: null,
  virtual_network: null
)
```

