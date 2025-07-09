# Falcon::ReleasecontentsReleaseContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_category** | **String** |  |  |
| **content_group_id** | **String** |  |  |
| **content_type** | **String** |  |  |
| **content_version** | [**ReleasecontentsReleaseContentVersion**](ReleasecontentsReleaseContentVersion.md) |  |  |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **jira_ticket** | **String** |  | [optional] |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ReleasecontentsReleaseContent.new(
  content_category: null,
  content_group_id: null,
  content_type: null,
  content_version: null,
  description: null,
  id: null,
  jira_ticket: null,
  status: null
)
```

