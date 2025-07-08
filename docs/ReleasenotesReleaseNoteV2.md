# Falcon::ReleasenotesReleaseNoteV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | **Array&lt;String&gt;** |  |  |
| **early_access** | **Time** |  | [optional] |
| **general_availability** | **Time** |  | [optional] |
| **notes** | [**Array&lt;ReleasenotesNoteDetail&gt;**](ReleasenotesNoteDetail.md) |  |  |
| **timestamp** | **Time** |  |  |
| **version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ReleasenotesReleaseNoteV2.new(
  categories: null,
  early_access: null,
  general_availability: null,
  notes: null,
  timestamp: null,
  version: null
)
```

