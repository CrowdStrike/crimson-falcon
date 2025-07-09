# Falcon::ApiIndicatorsReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_parent** | **Boolean** |  | [optional] |
| **report_format** | **String** |  |  |
| **search** | [**ApiIndicatorsSortedSearch**](ApiIndicatorsSortedSearch.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIndicatorsReportRequest.new(
  from_parent: null,
  report_format: null,
  search: null
)
```

