# Falcon::ApiObjectMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_name** | **String** |  |  |
| **collection_version** | **String** |  | [optional] |
| **last_modified_time** | **Time** |  | [optional] |
| **namespace** | **String** |  |  |
| **object_key** | **String** |  |  |
| **schema_version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiObjectMetadata.new(
  collection_name: null,
  collection_version: null,
  last_modified_time: null,
  namespace: null,
  object_key: null,
  schema_version: null
)
```

