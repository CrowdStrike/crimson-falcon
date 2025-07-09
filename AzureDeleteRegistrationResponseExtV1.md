# Falcon::AzureDeleteRegistrationResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;AzureDeletedRegistration&gt;**](AzureDeletedRegistration.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AzureDeleteRegistrationResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

