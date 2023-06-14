# Falcon::FalconxErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_info** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **quota** | [**FalconxQuota**](FalconxQuota.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxErrorsOnly.new(
  meta_info: null,
  errors: null,
  quota: null
)
```

