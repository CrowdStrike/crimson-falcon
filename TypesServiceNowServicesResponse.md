# Falcon::TypesServiceNowServicesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **services** | [**Array&lt;TypesServiceNowServiceData&gt;**](TypesServiceNowServiceData.md) |  |  |
| **total_services** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesServiceNowServicesResponse.new(
  error: null,
  services: null,
  total_services: null
)
```

