# Falcon::DomainMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msa_meta_info** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **quota** | [**DomainQuota**](DomainQuota.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainMetaInfo.new(
  msa_meta_info: null,
  quota: null
)
```

