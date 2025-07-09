# Falcon::MalqueryRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MalqueryQueryError&gt;**](MalqueryQueryError.md) | Request errors | [optional] |
| **meta** | [**MalqueryRequestMetaInfo**](MalqueryRequestMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MalqueryExternalResource&gt;**](MalqueryExternalResource.md) | Request results |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryRequestResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

