# Falcon::ApiRuleVersionReportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_latest** | **Boolean** |  | [optional] |
| **report_format** | **String** |  |  |
| **search** | [**ApiRuleVersionSortedSearch**](ApiRuleVersionSortedSearch.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleVersionReportRequest.new(
  get_latest: null,
  report_format: null,
  search: null
)
```

