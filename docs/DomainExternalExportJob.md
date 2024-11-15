# Falcon::DomainExternalExportJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **id** | **String** |  |  |
| **resource** | **String** | Resource to be exported |  |
| **retries** | **Integer** | Number of times the job was retried |  |
| **status** | **String** | Current status of the job. One of [READY, WAITING, IN_PROGRESS, DONE, FAILED, WAITING_FOR_RETRY, CANCELED, RESULT_DELETED] |  |
| **updated_at** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalExportJob.new(
  created_at: null,
  id: null,
  resource: null,
  retries: null,
  status: null,
  updated_at: null
)
```

