# Falcon::DomainDiscoverAPIBiosHashesData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **measurement_type** | **Integer** | The measurement type of the associated sha256 hash | [optional] |
| **sha256_hash** | **String** | The sha256 hash from the firmware image | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIBiosHashesData.new(
  measurement_type: null,
  sha256_hash: null
)
```

