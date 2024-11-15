# Falcon::UninstallTokenRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;UninstallTokenUninstallTokenV1&gt;**](UninstallTokenUninstallTokenV1.md) | A collection of uninstall tokens |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::UninstallTokenRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

