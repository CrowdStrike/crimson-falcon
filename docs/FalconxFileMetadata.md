# Falcon::FalconxFileMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_analysis** | **Array&lt;String&gt;** |  | [optional] |
| **file_compositions** | **Array&lt;String&gt;** |  | [optional] |
| **imported_objects** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxFileMetadata.new(
  file_analysis: null,
  file_compositions: null,
  imported_objects: null
)
```

