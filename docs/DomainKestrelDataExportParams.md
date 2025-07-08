# Falcon::DomainKestrelDataExportParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **export_mapping** | [**Array&lt;DomainKestrelDataExportHeaderMapping&gt;**](DomainKestrelDataExportHeaderMapping.md) |  |  |
| **gqe_query** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **view_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainKestrelDataExportParams.new(
  export_mapping: null,
  gqe_query: null,
  limit: null,
  view_id: null
)
```

