# Falcon::ApidomainRepoViewListItemV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connections** | [**Array&lt;ApidomainViewConnectionV1&gt;**](ApidomainViewConnectionV1.md) |  | [optional] |
| **description** | **String** |  |  |
| **display_name** | **String** |  |  |
| **has_test_data** | **Boolean** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **name_contracted** | **String** |  |  |
| **size** | **Integer** |  | [optional] |
| **type_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApidomainRepoViewListItemV1.new(
  connections: null,
  description: null,
  display_name: null,
  has_test_data: null,
  id: null,
  name: null,
  name_contracted: null,
  size: null,
  type_name: null
)
```

