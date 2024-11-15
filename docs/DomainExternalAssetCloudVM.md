# Falcon::DomainExternalAssetCloudVM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The VM description | [optional] |
| **instance_id** | **String** | The ID of the cloud VM | [optional] |
| **lifecycle** | **String** | The lifecycle phase | [optional] |
| **mac_address** | **String** | MAC address of the VM | [optional] |
| **owner_id** | **String** | VM owner ID | [optional] |
| **platform** | **String** | VM platform information | [optional] |
| **private_ip** | **String** | VM private IP address | [optional] |
| **public_ip** | **String** | VM public IP address | [optional] |
| **region** | **String** | The cloud region | [optional] |
| **security_groups** | **Array&lt;String&gt;** | Security groups | [optional] |
| **source** | **String** | The VM source image | [optional] |
| **status** | **String** | Connectivity status of the cloud VM | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetCloudVM.new(
  description: null,
  instance_id: null,
  lifecycle: null,
  mac_address: null,
  owner_id: null,
  platform: null,
  private_ip: null,
  public_ip: null,
  region: null,
  security_groups: null,
  source: null,
  status: null
)
```

