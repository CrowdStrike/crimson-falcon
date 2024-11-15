# Falcon::ApidomainSavedSearchExecuteRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extra_rename** | **String** |  |  |
| **extra_search** | **String** |  |  |
| **extra_sort** | **String** |  |  |
| **extra_where** | **String** |  |  |
| **parameters** | **Hash&lt;String, String&gt;** |  |  |
| **_end** | **String** |  | [optional] |
| **fql_statements** | [**Hash&lt;String, ClientFQLStatement&gt;**](ClientFQLStatement.md) |  |  |
| **id** | **String** |  | [optional] |
| **mode** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **start** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |
| **with_in** | [**ClientExtraIn**](ClientExtraIn.md) |  | [optional] |
| **with_limit** | [**ClientExtraLimit**](ClientExtraLimit.md) |  | [optional] |
| **with_renames** | [**Array&lt;ClientExtraRename&gt;**](ClientExtraRename.md) |  | [optional] |
| **with_sort** | [**ClientExtraSort**](ClientExtraSort.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApidomainSavedSearchExecuteRequestV1.new(
  extra_rename: null,
  extra_search: null,
  extra_sort: null,
  extra_where: null,
  parameters: null,
  _end: null,
  fql_statements: null,
  id: null,
  mode: null,
  name: null,
  start: null,
  version: null,
  with_in: null,
  with_limit: null,
  with_renames: null,
  with_sort: null
)
```

