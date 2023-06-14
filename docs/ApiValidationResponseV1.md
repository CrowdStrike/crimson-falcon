# Falcon::ApiValidationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

