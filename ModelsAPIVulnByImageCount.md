# Falcon::ModelsAPIVulnByImageCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cve_id** | **String** |  |  |
| **images_impacted** | **Integer** |  |  |
| **product** | **Array&lt;String&gt;** |  |  |
| **severity** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIVulnByImageCount.new(
  cve_id: null,
  images_impacted: null,
  product: null,
  severity: null
)
```

