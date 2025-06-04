# Falcon::DomainOCITenancyValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainOCITenancyValidated&gt;**](DomainOCITenancyValidated.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyValidationResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

