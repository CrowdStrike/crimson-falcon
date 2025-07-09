# Falcon::DomainOCITenancyRotateKeyResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainOCITenancyRotatedKey&gt;**](DomainOCITenancyRotatedKey.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyRotateKeyResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

