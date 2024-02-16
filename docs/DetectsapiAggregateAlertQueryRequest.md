# Falcon::DetectsapiAggregateAlertQueryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_ranges** | [**Array&lt;MsaDateRangeSpec&gt;**](MsaDateRangeSpec.md) | DateRanges applies to date_range aggregations. |  |
| **exclude** | **String** | Exclude Post-filtering on queried fields |  |
| **field** | **String** | Field applies for example to date_histogram and range aggregations. |  |
| **filter** | **String** | FQL query specifying the filter parameters. |  |
| **from** | **Integer** | used in bucket sort aggregations as an offset |  |
| **include** | **String** | Include Post-filtering on queried fields |  |
| **interval** | **String** | Interval applies for example to date_histogram aggregations (uses calendar_interval). Possible values: year, month, week, day, hour, minute. |  |
| **max_doc_count** | **Integer** | only return terms that match less than a configured number of hits. | [optional] |
| **min_doc_count** | **Integer** | only return terms that match more than a configured number of hits. | [optional] |
| **missing** | **String** | Missing is a value for missing term field. The behavior that query should return if the document does not have the field in the query |  |
| **name** | **String** | Name of the aggregate query |  |
| **q** | **String** | represents full text query |  |
| **ranges** | [**Array&lt;MsaRangeSpec&gt;**](MsaRangeSpec.md) | Ranges applies to range aggregations. |  |
| **size** | **Integer** | how many term buckets should be returned. |  |
| **sort** | **String** | Sort spec, ex: &#39;pattern_id|desc&#39;. |  |
| **sub_aggregates** | [**Array&lt;DetectsapiAggregateAlertQueryRequest&gt;**](DetectsapiAggregateAlertQueryRequest.md) | sub aggregate alert query. |  |
| **time_zone** | **String** | TimeZone timezone to specify when bucketing results. |  |
| **type** | **String** | Datastore supported value types: term, terms, date_histogram, facet, range, cardinality. Exact allowed values specific to endpoint. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiAggregateAlertQueryRequest.new(
  date_ranges: null,
  exclude: null,
  field: null,
  filter: null,
  from: null,
  include: null,
  interval: null,
  max_doc_count: null,
  min_doc_count: null,
  missing: null,
  name: null,
  q: null,
  ranges: null,
  size: null,
  sort: null,
  sub_aggregates: null,
  time_zone: null,
  type: null
)
```

