# Falcon::BinservclientMsaPFResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;BinservclientRemoteCommandPutFile&gt;**](BinservclientRemoteCommandPutFile.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::BinservclientMsaPFResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

