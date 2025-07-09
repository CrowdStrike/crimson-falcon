# Falcon::ApiQueryJobInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_event_skipping** | **Boolean** | Enables some LogScale functions, such as head() and tail(), to stop processing all data in the selected timeframe and exit the query early | [optional] |
| **arguments** | **Object** | JSON blob with parameters defined in query | [optional] |
| **around** | [**ApiQueryJobAroundInput**](ApiQueryJobAroundInput.md) |  | [optional] |
| **autobucket_count** | **Integer** | The number of buckets the system should create during live query searches, when no other explicit bucketing aggregate is specified | [optional] |
| **_end** | **String** | The date and time to use as the ending point of the search results | [optional] |
| **ingest_end** | **String** | The end date and time applied for @ingesttimestamp | [optional] |
| **ingest_start** | **String** | The end date and time applied for @ingesttimestamp | [optional] |
| **is_live** | **Boolean** | Sets whether this query is live. Defaults to false . Live queries are continuously updated. | [optional] |
| **query_string** | **String** | The CQL query to use for the search |  |
| **start** | **String** | The date and time to use as the starting point of the search results | [optional] |
| **time_zone** | **String** | The time zone to use if start and end times are not specified in milliseconds. Eg: UTC | [optional] |
| **time_zone_offset_minutes** | **Integer** | A positive or negative number representing how many minutes a given time zone is ahead or behind Coordinated Universal Time (UTC) | [optional] |
| **use_ingest_time** | **Boolean** | When set to true, the event’s ingestStart and ingestEnd times are used as the basis for the query timespan rather than the start and end timestamps | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryJobInput.new(
  allow_event_skipping: null,
  arguments: null,
  around: null,
  autobucket_count: null,
  _end: null,
  ingest_end: null,
  ingest_start: null,
  is_live: null,
  query_string: null,
  start: null,
  time_zone: null,
  time_zone_offset_minutes: null,
  use_ingest_time: null
)
```

