# Falcon::RegistrationAzureKeyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  |  |
| **end_date** | **String** |  | [optional] |
| **public_certificate** | **String** |  | [optional] |
| **tenant_id** | **String** |  |  |
| **valid** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationAzureKeyV1.new(
  client_id: null,
  end_date: null,
  public_certificate: null,
  tenant_id: null,
  valid: null
)
```

