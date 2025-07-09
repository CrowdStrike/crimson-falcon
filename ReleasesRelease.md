# Falcon::ReleasesRelease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annotation** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_timestamp** | **Time** |  |  |
| **deployed_timestamp** | **Time** |  | [optional] |
| **deployment_start_timestamp** | **Time** |  | [optional] |
| **id** | **String** |  |  |
| **last_modified_by** | **String** |  | [optional] |
| **last_modified_timestamp** | **Time** |  | [optional] |
| **release_contents** | [**Array&lt;ReleasecontentsReleaseContent&gt;**](ReleasecontentsReleaseContent.md) |  |  |
| **release_notes_ticket** | **String** |  | [optional] |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ReleasesRelease.new(
  annotation: null,
  created_by: null,
  created_timestamp: null,
  deployed_timestamp: null,
  deployment_start_timestamp: null,
  id: null,
  last_modified_by: null,
  last_modified_timestamp: null,
  release_contents: null,
  release_notes_ticket: null,
  status: null
)
```

