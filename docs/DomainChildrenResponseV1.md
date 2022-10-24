# Falcon::DomainChildrenResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **msa_reply_meta_only** | [**MsaReplyMetaOnly**](MsaReplyMetaOnly.md) |  |  |
| **resources** | [**Array&lt;DomainChildLink&gt;**](DomainChildLink.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainChildrenResponseV1.new(
  msa_reply_meta_only: null,
  resources: null
)
```

