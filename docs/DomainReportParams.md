# Falcon::DomainReportParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dashboard_id** | **String** |  |  |
| **dashboard_visibility** | **String** |  |  |
| **filter** | **String** |  |  |
| **filter_display** | **String** |  |  |
| **filter_ui** | **String** |  |  |
| **format** | **String** |  |  |
| **report_type_options** | **Hash&lt;String, String&gt;** |  | [optional] |
| **sort** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainReportParams.new(
  dashboard_id: null,
  dashboard_visibility: null,
  filter: null,
  filter_display: null,
  filter_ui: null,
  format: null,
  report_type_options: null,
  sort: null
)
```

