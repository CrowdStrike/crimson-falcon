# Falcon::DomainMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msa_meta_info** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **quota** | [**DomainQuota**](DomainQuota.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMetaInfo.new(
  msa_meta_info: null,
  quota: null
)
```

