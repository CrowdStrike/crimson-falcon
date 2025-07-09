# Falcon::DevicecontrolapiRespUSBExceptionV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **_class** | **String** | USB Device Class |  |
| **combined_id** | **String** |  | [optional] |
| **created_timestamp** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration_time** | **Time** |  | [optional] |
| **id** | **String** | ID of the exception |  |
| **match_method** | **String** |  |  |
| **modified_timestamp** | **Time** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **product_name** | **String** | Product name | [optional] |
| **serial_number** | **String** |  | [optional] |
| **trigger_id** | **String** |  | [optional] |
| **use_wildcard** | **Boolean** |  | [optional] |
| **vendor_id** | **String** | Decimal value of the vendor ID |  |
| **vendor_name** | **String** | Name of the vendor |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiRespUSBExceptionV2.new(
  action: null,
  _class: null,
  combined_id: null,
  created_timestamp: null,
  description: null,
  expiration_time: null,
  id: null,
  match_method: null,
  modified_timestamp: null,
  product_id: null,
  product_name: null,
  serial_number: null,
  trigger_id: null,
  use_wildcard: null,
  vendor_id: null,
  vendor_name: null
)
```

