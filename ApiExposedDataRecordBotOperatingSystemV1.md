# Falcon::ApiExposedDataRecordBotOperatingSystemV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **antivirus** | **Array&lt;String&gt;** |  | [optional] |
| **computer_name** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **hardware_id** | **String** |  | [optional] |
| **installed_software** | **Array&lt;String&gt;** |  | [optional] |
| **language** | **String** |  | [optional] |
| **layouts** | **Array&lt;String&gt;** |  | [optional] |
| **os_architecture** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |
| **uac** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExposedDataRecordBotOperatingSystemV1.new(
  antivirus: null,
  computer_name: null,
  domain: null,
  hardware_id: null,
  installed_software: null,
  language: null,
  layouts: null,
  os_architecture: null,
  os_version: null,
  timezone: null,
  uac: null,
  username: null
)
```

