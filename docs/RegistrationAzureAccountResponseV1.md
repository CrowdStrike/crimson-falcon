# Falcon::RegistrationAzureAccountResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAzureAccountV1Ext&gt;**](RegistrationAzureAccountV1Ext.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureAccountResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

