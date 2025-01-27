# Falcon::FigapiCountry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Two letters representation of the country name, e.g. &#x60;RO&#x60;, &#x60;US&#x60;, &#x60;RU&#x60;, etc. | [optional] |
| **name** | **String** | Full country name, e.g. &#x60;Romania&#x60;, &#x60;United States&#x60;, &#x60;Russian Federation&#x60; etc. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiCountry.new(
  country_code: null,
  name: null
)
```

