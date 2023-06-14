# Falcon::RegistrationScanScheduleResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScanScheduleDataV1&gt;**](DomainScanScheduleDataV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationScanScheduleResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

