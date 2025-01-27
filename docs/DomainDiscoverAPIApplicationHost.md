# Falcon::DomainDiscoverAPIApplicationHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_version** | **String** | The version of the Falcon sensor that&#39;s installed on the asset. | [optional] |
| **aid** | **String** | The agent ID of the Falcon sensor installed on the asset. | [optional] |
| **country** | **String** | The name of the country where the asset is located. | [optional] |
| **current_mac_address** | **String** | The last seen MAC address of the asset. | [optional] |
| **current_network_prefix** | **String** | The last seen network prefix of the asset. | [optional] |
| **external_ip** | **String** | The external IPv4 address of the asset. | [optional] |
| **groups** | **Array&lt;String&gt;** | The host management groups the asset is part of. | [optional] |
| **hostname** | **String** | The asset&#39;s hostname. | [optional] |
| **id** | **String** | The unique ID of the asset. |  |
| **internet_exposure** | **String** | Whether the asset is exposed to the internet (Yes or Unknown). | [optional] |
| **kernel_version** | **String** | For Linux and Mac hosts: the major version, minor version, and patch version of the kernel for the asset. For Windows hosts: the build number of the asset. | [optional] |
| **machine_domain** | **String** | The domain name the asset is currently joined to. | [optional] |
| **os_version** | **String** | The OS version of the asset. | [optional] |
| **ou** | **String** | The organizational unit of the asset. | [optional] |
| **ous** | **Array&lt;String&gt;** | The organizational units of the asset. | [optional] |
| **platform_name** | **String** | The platform name of the asset (Windows, Mac, Linux). | [optional] |
| **product_type_desc** | **String** | The product type of the asset (Workstation, Domain Controller, Server). | [optional] |
| **site_name** | **String** | The site name of the domain the asset is joined to (applies only to Windows hosts). | [optional] |
| **system_manufacturer** | **String** | The asset&#39;s system manufacturer. | [optional] |
| **tags** | **Array&lt;String&gt;** | The sensor and cloud tags of the asset. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIApplicationHost.new(
  agent_version: null,
  aid: null,
  country: null,
  current_mac_address: null,
  current_network_prefix: null,
  external_ip: null,
  groups: null,
  hostname: null,
  id: null,
  internet_exposure: null,
  kernel_version: null,
  machine_domain: null,
  os_version: null,
  ou: null,
  ous: null,
  platform_name: null,
  product_type_desc: null,
  site_name: null,
  system_manufacturer: null,
  tags: null
)
```

