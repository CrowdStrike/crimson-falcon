# Falcon::DeviceControlExceptionReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **combined_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration_time** | **Time** |  | [optional] |
| **id** | **String** | Unique identifier for an exception | [optional] |
| **product_id** | **String** |  | [optional] |
| **product_id_decimal** | **String** |  | [optional] |
| **product_name** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **use_wildcard** | **Boolean** | true indicates using blob syntax USB serial numbers | [optional] |
| **vendor_id** | **String** | Hexadecimal VendorID used to apply the exception | [optional] |
| **vendor_id_decimal** | **String** | Hexadecimal VendorID used to apply the exception | [optional] |
| **vendor_name** | **String** | Vendor Name, optional | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceControlExceptionReqV1.new(
  action: null,
  combined_id: null,
  description: null,
  expiration_time: null,
  id: null,
  product_id: null,
  product_id_decimal: null,
  product_name: null,
  serial_number: null,
  use_wildcard: null,
  vendor_id: null,
  vendor_id_decimal: null,
  vendor_name: null
)
```

