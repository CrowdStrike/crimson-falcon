# Falcon::DomainLookupFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **contents_hash** | **String** |  |  |
| **created_by** | [**DomainUser**](DomainUser.md) |  |  |
| **created_timestamp** | **Time** |  |  |
| **description** | **String** |  |  |
| **filename** | **String** |  |  |
| **format** | **String** |  |  |
| **id** | **String** |  |  |
| **last_modified_by** | [**DomainUser**](DomainUser.md) |  |  |
| **last_modified_timestamp** | **Time** |  |  |
| **name** | **String** |  |  |
| **repo** | **String** |  |  |
| **size** | **Integer** |  |  |
| **status** | **String** |  |  |
| **version** | **String** |  |  |
| **version_numeric** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainLookupFile.new(
  app_id: null,
  cid: null,
  contents_hash: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  filename: null,
  format: null,
  id: null,
  last_modified_by: null,
  last_modified_timestamp: null,
  name: null,
  repo: null,
  size: null,
  status: null,
  version: null,
  version_numeric: null
)
```

