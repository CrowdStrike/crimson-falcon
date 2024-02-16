# Falcon::ApidomainSavedSearchExecuteRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **mode** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parameters** | **Object** |  | [optional] |
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
  _end: null,
  id: null,
  mode: null,
  name: null,
  parameters: null,
  start: null,
  version: null,
  with_in: null,
  with_limit: null,
  with_renames: null,
  with_sort: null
)
```

