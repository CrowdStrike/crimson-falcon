# Falcon::DomainPastebinTextSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_name** | **String** | The name of the author |  |
| **legacy_source** | **Object** |  | [optional] |
| **pastebin_id** | **String** | Unique ID of the Pastebin content |  |
| **source_link** | **String** | The Pastebin URL |  |
| **title** | **String** | The title of the Pastebin content |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainPastebinTextSource.new(
  author_name: null,
  legacy_source: null,
  pastebin_id: null,
  source_link: null,
  title: null
)
```

