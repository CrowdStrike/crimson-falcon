# Falcon::DomainExternalAssetGeographicalLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **area_code** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **country_name** | **String** |  | [optional] |
| **geo_point** | [**DomainGeoPoint**](DomainGeoPoint.md) |  | [optional] |
| **postal_code** | **String** |  | [optional] |
| **region_code** | **String** |  | [optional] |
| **region_name** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetGeographicalLocation.new(
  area_code: null,
  city: null,
  country_code: null,
  country_name: null,
  geo_point: null,
  postal_code: null,
  region_code: null,
  region_name: null,
  timezone: null
)
```

