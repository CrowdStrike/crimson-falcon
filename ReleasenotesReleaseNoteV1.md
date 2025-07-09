# Falcon::ReleasenotesReleaseNoteV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | **Array&lt;String&gt;** |  |  |
| **early_access** | **String** |  | [optional] |
| **general_availability** | **String** |  | [optional] |
| **notes** | [**Array&lt;ReleasenotesNoteDetail&gt;**](ReleasenotesNoteDetail.md) |  |  |
| **timestamp** | **Time** |  |  |
| **version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ReleasenotesReleaseNoteV1.new(
  categories: null,
  early_access: null,
  general_availability: null,
  notes: null,
  timestamp: null,
  version: null
)
```

