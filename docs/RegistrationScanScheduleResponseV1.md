# Falcon::RegistrationScanScheduleResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainScanScheduleDataV1&gt;**](DomainScanScheduleDataV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationScanScheduleResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

