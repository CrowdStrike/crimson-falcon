# Falcon::DomainOCITenancyResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainOCITenancyV1&gt;**](DomainOCITenancyV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

