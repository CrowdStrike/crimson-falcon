# Falcon::ApiCollectionMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | [**ApiUserMetadata**](ApiUserMetadata.md) |  | [optional] |
| **created_timestamp** | **Time** |  |  |
| **description** | **String** |  |  |
| **draft_schema_version** | **String** |  | [optional] |
| **is_global** | **Boolean** |  |  |
| **last_modified_by** | [**ApiUserMetadata**](ApiUserMetadata.md) |  | [optional] |
| **last_modified_timestamp** | **Time** |  |  |
| **name** | **String** |  |  |
| **namespace** | **String** |  |  |
| **permissions** | **Array&lt;String&gt;** |  | [optional] |
| **published_version** | **String** |  | [optional] |
| **schema_version** | **String** |  |  |
| **status** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **workflow_meta** | [**ApiWorkflowMetadata**](ApiWorkflowMetadata.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCollectionMetadata.new(
  created_by: null,
  created_timestamp: null,
  description: null,
  draft_schema_version: null,
  is_global: null,
  last_modified_by: null,
  last_modified_timestamp: null,
  name: null,
  namespace: null,
  permissions: null,
  published_version: null,
  schema_version: null,
  status: null,
  version: null,
  workflow_meta: null
)
```

