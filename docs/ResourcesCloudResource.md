# Falcon::ResourcesCloudResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **arn** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **cloud_context** | [**ResourcesCloudContext**](ResourcesCloudContext.md) |  | [optional] |
| **cloud_groups** | [**Array&lt;DomainCloudScope&gt;**](DomainCloudScope.md) |  | [optional] |
| **cloud_labels** | [**Array&lt;ClassificationLabel&gt;**](ClassificationLabel.md) |  | [optional] |
| **cloud_provider** | **String** |  | [optional] |
| **cluster_id** | **String** |  | [optional] |
| **cluster_name** | **String** |  | [optional] |
| **configuration** | **Object** |  | [optional] |
| **creation_time** | **Time** |  | [optional] |
| **first_seen** | **Time** |  | [optional] |
| **hash** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **location** | **String** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **parent** | **String** |  | [optional] |
| **project_id** | **String** |  | [optional] |
| **project_number** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **relationships** | [**Array&lt;ResourcesRelationship&gt;**](ResourcesRelationship.md) |  | [optional] |
| **resource_group** | **String** |  | [optional] |
| **resource_id** | **String** |  | [optional] |
| **resource_name** | **String** |  | [optional] |
| **resource_number** | **String** |  | [optional] |
| **resource_type** | **String** |  | [optional] |
| **resource_type_name** | **String** |  | [optional] |
| **resource_url** | **String** |  | [optional] |
| **revision** | **Integer** |  | [optional] |
| **service** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **subscription_id** | **String** |  | [optional] |
| **supplementary_configuration** | **Object** |  | [optional] |
| **tags** | **Hash&lt;String, String&gt;** |  | [optional] |
| **tenant_id** | **String** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **zone** | **String** |  | [optional] |
| **zones** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesCloudResource.new(
  account_id: null,
  account_name: null,
  active: null,
  arn: null,
  category: null,
  cid: null,
  cloud_context: null,
  cloud_groups: null,
  cloud_labels: null,
  cloud_provider: null,
  cluster_id: null,
  cluster_name: null,
  configuration: null,
  creation_time: null,
  first_seen: null,
  hash: null,
  id: null,
  location: null,
  organization_id: null,
  parent: null,
  project_id: null,
  project_number: null,
  region: null,
  relationships: null,
  resource_group: null,
  resource_id: null,
  resource_name: null,
  resource_number: null,
  resource_type: null,
  resource_type_name: null,
  resource_url: null,
  revision: null,
  service: null,
  status: null,
  subscription_id: null,
  supplementary_configuration: null,
  tags: null,
  tenant_id: null,
  updated_at: null,
  zone: null,
  zones: null
)
```

