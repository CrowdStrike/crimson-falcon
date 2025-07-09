# Falcon::DeviceControlExceptionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **_class** | **String** | USB Class ID to apply the exception. If empty it applies to all classes |  |
| **combined_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration_time** | **Time** |  | [optional] |
| **id** | **String** | Unique identifier for an exception |  |
| **match_method** | **String** |  | [optional] |
| **product_id** | **String** |  | [optional] |
| **product_id_decimal** | **String** |  | [optional] |
| **product_name** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **vendor_id** | **String** | Hexadecimal VendorID used to apply the exception | [optional] |
| **vendor_id_decimal** | **String** | Hexadecimal VendorID used to apply the exception | [optional] |
| **vendor_name** | **String** | Vendor Name | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlExceptionRespV1.new(
  action: null,
  _class: null,
  combined_id: null,
  description: null,
  expiration_time: null,
  id: null,
  match_method: null,
  product_id: null,
  product_id_decimal: null,
  product_name: null,
  serial_number: null,
  vendor_id: null,
  vendor_id_decimal: null,
  vendor_name: null
)
```

