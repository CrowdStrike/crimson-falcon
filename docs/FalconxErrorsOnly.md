# Falcon::FalconxErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **meta_info** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
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

