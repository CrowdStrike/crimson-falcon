# Falcon::AzureAzureRegistrationResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;AzureTenantRegistration&gt;**](AzureTenantRegistration.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AzureAzureRegistrationResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

