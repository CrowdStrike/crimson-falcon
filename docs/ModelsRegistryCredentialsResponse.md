# Falcon::ModelsRegistryCredentialsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

