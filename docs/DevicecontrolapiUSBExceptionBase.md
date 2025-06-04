# Falcon::DevicecontrolapiUSBExceptionBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action to be taken when the exception is matched | [optional] |
| **_class** | **String** | USB Device class | [optional] |
| **combined_id** | **String** | Composite ID of the vendor ID, product ID, and serial number. Format: &lt;vendor ID&gt;_&lt;product ID&gt;_&lt;serial number&gt; | [optional] |
| **description** | **String** | Description for the exception | [optional] |
| **expiration_time** | **Time** | yyyy-mm-ddThh:mm:ssZ (UTC) format of the time to remove the exception if temporary. Only provide this value for temporary exceptions | [optional] |
| **id** | **String** | ID of the exception. Leave empty to create a new exception |  |
| **product_id** | **String** | Decimal value of the product ID. Required if a serial number is provided | [optional] |
| **product_name** | **String** | Device product name | [optional] |
| **serial_number** | **String** | Device serial number | [optional] |
| **use_wildcard** | **Boolean** | Boolean value to indicate if wildcard matching should be used on the serial number | [optional] |
| **vendor_id** | **String** | Decimal value of the vendor ID | [optional] |
| **vendor_name** | **String** | Device vendor name | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontrolapiUSBExceptionBase.new(
  action: null,
  _class: null,
  combined_id: null,
  description: null,
  expiration_time: null,
  id: null,
  product_id: null,
  product_name: null,
  serial_number: null,
  use_wildcard: null,
  vendor_id: null,
  vendor_name: null
)
```

