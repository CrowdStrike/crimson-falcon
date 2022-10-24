# Falcon::ResponsesSensorUpdateKernelsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ResponsesSensorUpdateKernelV1&gt;**](ResponsesSensorUpdateKernelV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesSensorUpdateKernelsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

