# Falcon::DomainOCITenancyCreateResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainOCICreateResponse&gt;**](DomainOCICreateResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyCreateResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

