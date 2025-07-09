# Falcon::ExportsLaunchExportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | Format of the export file. One of: csv, json |  |
| **fql** | **String** | Falcon Query Language string to filter documents | [optional] |
| **resource** | **String** | Resource to export. Refer to API docs for the possible values |  |
| **sort** | **String** | Sort value to apply to documents. Note: not all resources support sorting |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExportsLaunchExportRequest.new(
  format: null,
  fql: null,
  resource: null,
  sort: null
)
```

