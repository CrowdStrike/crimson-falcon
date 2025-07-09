# Falcon::RegistrationAzureManagementGroupResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RegistrationAzureManagementGroupV1Ext&gt;**](RegistrationAzureManagementGroupV1Ext.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureManagementGroupResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

