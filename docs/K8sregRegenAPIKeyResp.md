# Falcon::K8sregRegenAPIKeyResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAPIKey&gt;**](K8sregAPIKey.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregRegenAPIKeyResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

