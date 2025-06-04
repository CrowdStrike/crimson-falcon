# Falcon::AspmData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_applications** | **Array&lt;String&gt;** |  | [optional] |
| **business_criticality** | **String** |  | [optional] |
| **service_names** | **Array&lt;String&gt;** |  | [optional] |
| **services_by_ba** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **services_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AspmData.new(
  business_applications: null,
  business_criticality: null,
  service_names: null,
  services_by_ba: null,
  services_count: null
)
```

