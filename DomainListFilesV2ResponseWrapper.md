# Falcon::DomainListFilesV2ResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainFileV2&gt;**](DomainFileV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainListFilesV2ResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```

