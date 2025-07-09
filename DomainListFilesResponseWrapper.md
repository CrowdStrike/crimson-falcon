# Falcon::DomainListFilesResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelFile&gt;**](ModelFile.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainListFilesResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```

