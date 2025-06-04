# Falcon::ApiJobLinkResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainJobWithLink&gt;**](DomainJobWithLink.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiJobLinkResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

