# Falcon::FalconxIntelReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actors** | [**Array&lt;FalconxActor&gt;**](FalconxActor.md) |  | [optional] |
| **malware_families** | **Array&lt;String&gt;** |  | [optional] |
| **related_indicators** | [**Array&lt;FalconxRelatedIndicator&gt;**](FalconxRelatedIndicator.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxIntelReportV1.new(
  actors: null,
  malware_families: null,
  related_indicators: null
)
```

