# Falcon::DomainKestrelDataExportHeaderMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **computation_functions** | [**Array&lt;DomainKestrelDataExportHeaderComputationFunction&gt;**](DomainKestrelDataExportHeaderComputationFunction.md) |  |  |
| **header_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainKestrelDataExportHeaderMapping.new(
  computation_functions: null,
  header_name: null
)
```

