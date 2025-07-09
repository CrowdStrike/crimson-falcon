# Falcon::ApiValidationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainFieldValidation&gt;**](DomainFieldValidation.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiValidationResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

