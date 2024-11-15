# Falcon::MainDiscoveryResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MainAvailableStreamV2&gt;**](MainAvailableStreamV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MainDiscoveryResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```

