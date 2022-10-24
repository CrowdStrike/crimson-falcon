# Falcon::FalconxErrorsOnly

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msa_meta_info** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **quota** | [**FalconxQuota**](FalconxQuota.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxErrorsOnly.new(
  msa_meta_info: null,
  errors: null,
  quota: null
)
```

