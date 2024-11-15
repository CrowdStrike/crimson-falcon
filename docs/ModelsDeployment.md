# Falcon::ModelsDeployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | **Array&lt;Hash&gt;** |  |  |
| **annotations** | **Hash&lt;String, String&gt;** |  |  |
| **annotations_list** | **Array&lt;String&gt;** |  |  |
| **cid** | **String** |  |  |
| **cloud_account_id** | **String** |  |  |
| **cloud_name** | **String** |  |  |
| **cloud_region** | **String** |  |  |
| **cloud_service** | **String** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **container_count** | **Integer** |  |  |
| **created_at** | **String** |  |  |
| **deleted_at** | **String** |  | [optional] |
| **deployment_id** | **String** |  |  |
| **deployment_name** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **kac_agent_id** | **String** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **labels_list** | **Array&lt;String&gt;** |  |  |
| **last_seen** | **String** |  |  |
| **management_status** | **String** |  |  |
| **namespace** | **String** |  |  |
| **pod_count** | **Integer** |  |  |
| **resource_status** | **String** |  |  |
| **resource_version** | **Integer** |  |  |
| **revision** | **Integer** |  | [optional] |
| **selector** | **String** |  |  |
| **service_account_name** | **String** |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsDeployment.new(
  agents: null,
  annotations: null,
  annotations_list: null,
  cid: null,
  cloud_account_id: null,
  cloud_name: null,
  cloud_region: null,
  cloud_service: null,
  cluster_id: null,
  cluster_name: null,
  container_count: null,
  created_at: null,
  deleted_at: null,
  deployment_id: null,
  deployment_name: null,
  first_seen: null,
  kac_agent_id: null,
  labels: null,
  labels_list: null,
  last_seen: null,
  management_status: null,
  namespace: null,
  pod_count: null,
  resource_status: null,
  resource_version: null,
  revision: null,
  selector: null,
  service_account_name: null,
  status: null
)
```

