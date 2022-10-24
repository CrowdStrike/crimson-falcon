# Falcon::MalquerySampleMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MalqueryQueryError&gt;**](MalqueryQueryError.md) | Errors that occurred during the request |  |
| **meta** | [**MalquerySamplesMetadataMetaInfo**](MalquerySamplesMetadataMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MalquerySampleMetadata&gt;**](MalquerySampleMetadata.md) | List of sample metadata |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalquerySampleMetadataResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

