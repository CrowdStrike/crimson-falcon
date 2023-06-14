# Falcon::DomainDiscoverAPIDeviceSlot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slot_firmware** | **String** | The Firmware of the Rack Slot of IoT Asset | [optional] |
| **slot_ip_address** | **String** | The IoT asset&#39;s IP address | [optional] |
| **slot_mac_address** | **String** | The IoT asset&#39;s MAC address | [optional] |
| **slot_model** | **String** | The Model of the Rack Slot of IoT Asset | [optional] |
| **slot_name** | **String** | The Name of the Rack Slot of IoT Asset | [optional] |
| **slot_number** | **Integer** | The Slot Number of the Rack Slot of IoT Asset | [optional] |
| **slot_serial_number** | **String** | The Serial Number of the Rack Slot of IoT Asset | [optional] |
| **slot_type** | **String** | The IoT asset&#39;s slot type | [optional] |
| **slot_vendor** | **String** | The Vendor of the Rack Slot of IoT Asset | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIDeviceSlot.new(
  slot_firmware: null,
  slot_ip_address: null,
  slot_mac_address: null,
  slot_model: null,
  slot_name: null,
  slot_number: null,
  slot_serial_number: null,
  slot_type: null,
  slot_vendor: null
)
```

