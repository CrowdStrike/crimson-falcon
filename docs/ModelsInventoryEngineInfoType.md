# Falcon::ModelsInventoryEngineInfoType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cwpp_scanner_version** | **String** |  |  |
| **collected_at** | **String** |  | [optional] |
| **engine_version** | **String** |  |  |
| **malware_metadata** | **Hash&lt;String, String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsInventoryEngineInfoType.new(
  cwpp_scanner_version: null,
  collected_at: null,
  engine_version: null,
  malware_metadata: null
)
```

