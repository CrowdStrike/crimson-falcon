# Falcon::MalqueryFuzzySearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MalqueryQueryError&gt;**](MalqueryQueryError.md) | Search errors | [optional] |
| **meta** | [**MalqueryFuzzySearchMetaInfo**](MalqueryFuzzySearchMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MalquerySampleMetadata&gt;**](MalquerySampleMetadata.md) | Search results |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalqueryFuzzySearchResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

