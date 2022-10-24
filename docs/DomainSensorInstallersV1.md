# Falcon::DomainSensorInstallersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainSensorInstallerV1&gt;**](DomainSensorInstallerV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainSensorInstallersV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

