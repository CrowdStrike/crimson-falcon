# Falcon::DomainReportParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **columns** | **Array&lt;String&gt;** |  |  |
| **dashboard_id** | **String** |  |  |
| **dashboard_visibility** | **String** |  |  |
| **filter** | **String** |  |  |
| **filter_display** | **String** |  |  |
| **filter_ui** | **String** |  |  |
| **format** | **String** |  |  |
| **report_type_options** | **Object** |  | [optional] |
| **sort** | **String** |  |  |
| **spotlight_params** | [**DomainSpotlightParams**](DomainSpotlightParams.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReportParams.new(
  columns: null,
  dashboard_id: null,
  dashboard_visibility: null,
  filter: null,
  filter_display: null,
  filter_ui: null,
  format: null,
  report_type_options: null,
  sort: null,
  spotlight_params: null
)
```

