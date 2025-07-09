# Falcon::ApiQueryJobsResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancelled** | **Boolean** | Indicates whether the query has been cancelled |  |
| **done** | **Boolean** | True if the query has run to completion |  |
| **events** | **Array&lt;Object&gt;** | JSON of the events as an array |  |
| **files_used** | **Array&lt;String&gt;** | List of the files used to fulfill the query |  |
| **filter_matches** | **Array&lt;Object&gt;** | Entries that match the supplied filter |  |
| **meta_data** | [**ApiQueryMetadataJSON**](ApiQueryMetadataJSON.md) |  |  |
| **query_event_distribution** | [**ApiQueryEventDistribution**](ApiQueryEventDistribution.md) |  |  |
| **warnings** | [**Array&lt;ApiWarningJSON&gt;**](ApiWarningJSON.md) | List of warnings returned using the WarningJson |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryJobsResults.new(
  cancelled: null,
  done: null,
  events: null,
  files_used: null,
  filter_matches: null,
  meta_data: null,
  query_event_distribution: null,
  warnings: null
)
```

