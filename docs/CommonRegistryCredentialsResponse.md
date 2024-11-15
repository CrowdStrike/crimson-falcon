# Falcon::CommonRegistryCredentialsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**CommonCredentials**](CommonCredentials.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::CommonRegistryCredentialsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

