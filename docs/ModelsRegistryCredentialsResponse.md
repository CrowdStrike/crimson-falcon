# Falcon::ModelsRegistryCredentialsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsCredentials&gt;**](ModelsCredentials.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsRegistryCredentialsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

