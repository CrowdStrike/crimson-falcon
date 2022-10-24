# Falcon::DomainDeviceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DomainDeviceMeta**](DomainDeviceMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDeviceResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

