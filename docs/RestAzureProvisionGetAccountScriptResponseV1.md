# Falcon::RestAzureProvisionGetAccountScriptResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RestAzureScript&gt;**](RestAzureScript.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestAzureProvisionGetAccountScriptResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

