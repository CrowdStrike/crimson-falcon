# Falcon::EmpowerapiMsaPFResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;EmpowerapiRemoteCommandPutFileV1&gt;**](EmpowerapiRemoteCommandPutFileV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EmpowerapiMsaPFResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

