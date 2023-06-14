# Falcon::EmpowerapiMsaPFResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;EmpowerapiRemoteCommandPutFileV2&gt;**](EmpowerapiRemoteCommandPutFileV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EmpowerapiMsaPFResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```

