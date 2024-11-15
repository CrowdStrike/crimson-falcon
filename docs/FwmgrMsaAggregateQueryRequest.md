# Falcon::FwmgrMsaAggregateQueryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_ranges** | [**Array&lt;FwmgrMsaDateRangeSpec&gt;**](FwmgrMsaDateRangeSpec.md) |  |  |
| **exclude** | **String** |  |  |
| **extended_bounds** | [**FwmgrMsaExtendedBoundsSpec**](FwmgrMsaExtendedBoundsSpec.md) |  | [optional] |
| **field** | **String** |  |  |
| **filter** | **String** |  |  |
| **from** | **Integer** |  |  |
| **include** | **String** |  |  |
| **interval** | **String** |  |  |
| **max_doc_count** | **Integer** |  | [optional] |
| **min_doc_count** | **Integer** |  | [optional] |
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
require 'crimson-falcon'

instance = Falcon::FwmgrMsaAggregateQueryRequest.new(
  date_ranges: null,
  exclude: null,
  extended_bounds: null,
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

