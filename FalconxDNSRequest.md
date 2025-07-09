# Falcon::FalconxDNSRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **compromised** | **Boolean** |  | [optional] |
| **country** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **registrar_creation_timestamp** | **String** |  | [optional] |
| **registrar_name** | **String** |  | [optional] |
| **registrar_name_servers** | **String** |  | [optional] |
| **registrar_organization** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxDNSRequest.new(
  address: null,
  compromised: null,
  country: null,
  domain: null,
  registrar_creation_timestamp: null,
  registrar_name: null,
  registrar_name_servers: null,
  registrar_organization: null
)
```

