# Falcon::FwmgrMsaAggregateQueryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_ranges** | [**Array&lt;FwmgrMsaDateRangeSpec&gt;**](FwmgrMsaDateRangeSpec.md) |  |  |
| **field** | **String** |  |  |
| **filter** | **String** |  |  |
| **interval** | **String** |  |  |
| **min_doc_count** | **Integer** |  |  |
| **missing** | **String** |  |  |
| **name** | **String** |  |  |
| **q** | **String** |  |  |
| **ranges** | [**Array&lt;FwmgrMsaRangeSpec&gt;**](FwmgrMsaRangeSpec.md) |  |  |
| **size** | **Integer** |  |  |
| **sort** | **String** |  |  |
| **sub_aggregates** | [**Array&lt;FwmgrMsaAggregateQueryRequest&gt;**](FwmgrMsaAggregateQueryRequest.md) |  |  |
| **time_zone** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrMsaAggregateQueryRequest.new(
  date_ranges: null,
  field: null,
  filter: null,
  interval: null,
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

