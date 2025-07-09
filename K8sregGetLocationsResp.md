# Falcon::K8sregGetLocationsResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregLocationResp&gt;**](K8sregLocationResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetLocationsResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

