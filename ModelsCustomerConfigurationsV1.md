# Falcon::ModelsCustomerConfigurationsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAWSConfiguration&gt;**](DomainAWSConfiguration.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsCustomerConfigurationsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

