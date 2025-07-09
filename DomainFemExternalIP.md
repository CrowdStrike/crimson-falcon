# Falcon::DomainFemExternalIP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** | AID if available | [optional] |
| **asn** | **Integer** | ASN | [optional] |
| **cloud_provider** | **String** | Cloud Provider | [optional] |
| **cloud_vm** | [**DomainExternalAssetCloudVM**](DomainExternalAssetCloudVM.md) |  | [optional] |
| **fqdns** | **Array&lt;String&gt;** | The FQDN List of the related domains | [optional] |
| **ip_address** | **String** | The IP address | [optional] |
| **isp** | **String** | The ISP | [optional] |
| **location** | [**DomainExternalAssetGeographicalLocation**](DomainExternalAssetGeographicalLocation.md) |  | [optional] |
| **ptr** | **String** | The PTR record | [optional] |
| **services** | [**Array&lt;DomainExternalAssetService&gt;**](DomainExternalAssetService.md) | A list of exposed services on the IP | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFemExternalIP.new(
  aid: null,
  asn: null,
  cloud_provider: null,
  cloud_vm: null,
  fqdns: null,
  ip_address: null,
  isp: null,
  location: null,
  ptr: null,
  services: null
)
```

