# Falcon::MalqueryExternalQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MalqueryQueryError&gt;**](MalqueryQueryError.md) | Query errors | [optional] |
| **meta** | [**MalqueryQueryMetaInfo**](MalqueryQueryMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MalqueryExternalResource&gt;**](MalqueryExternalResource.md) | Query results |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryExternalQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

