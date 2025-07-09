# Falcon::ApiSchemaMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_name** | **String** |  |  |
| **collection_version** | **String** |  | [optional] |
| **create_timestamp** | **Time** |  |  |
| **created_by** | [**ApiUserMetadata**](ApiUserMetadata.md) |  | [optional] |
| **indexed_fields** | [**Array&lt;ApiIndexedFields&gt;**](ApiIndexedFields.md) |  |  |
| **last_modified_by** | [**ApiUserMetadata**](ApiUserMetadata.md) |  | [optional] |
| **last_modified_timestamp** | **Time** |  |  |
| **namespace** | **String** |  |  |
| **status** | **String** |  |  |
| **type** | **String** |  |  |
| **version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiSchemaMetadata.new(
  collection_name: null,
  collection_version: null,
  create_timestamp: null,
  created_by: null,
  indexed_fields: null,
  last_modified_by: null,
  last_modified_timestamp: null,
  namespace: null,
  status: null,
  type: null,
  version: null
)
```

