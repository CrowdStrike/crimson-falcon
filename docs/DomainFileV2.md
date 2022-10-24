# Falcon::DomainFileV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_request_id** | **String** |  |  |
| **complete** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **error_message** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **progress** | **Float** |  |  |
| **session_id** | **String** |  |  |
| **sha256** | **String** |  |  |
| **size** | **Integer** |  |  |
| **stage** | **String** |  |  |
| **status** | **String** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainFileV2.new(
  cloud_request_id: null,
  complete: null,
  created_at: null,
  deleted_at: null,
  error_message: null,
  id: null,
  name: null,
  progress: null,
  session_id: null,
  sha256: null,
  size: null,
  stage: null,
  status: null,
  updated_at: null
)
```

