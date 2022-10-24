# Falcon::FalconxMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msa_meta_info** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **quota** | [**FalconxQuota**](FalconxQuota.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxMetaInfo.new(
  msa_meta_info: null,
  quota: null
)
```

