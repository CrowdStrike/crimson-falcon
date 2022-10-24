# Falcon::K8sregRegenAPIKeyResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAPIKey&gt;**](K8sregAPIKey.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::K8sregRegenAPIKeyResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

