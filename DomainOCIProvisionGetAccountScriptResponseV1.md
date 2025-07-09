# Falcon::DomainOCIProvisionGetAccountScriptResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainOCITenancyScript&gt;**](DomainOCITenancyScript.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCIProvisionGetAccountScriptResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

