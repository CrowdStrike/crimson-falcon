# Falcon::GetMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error4bee1dd3515c454f83249366486164d0&gt;**](Error4bee1dd3515c454f83249366486164d0.md) |  | [optional] |
| **meta** | [**Meta37a0d574ca884a2f8641e122e47a3ce9**](Meta37a0d574ca884a2f8641e122e47a3ce9.md) |  | [optional] |
| **resources** | [**Array&lt;SecurityCheckMetrics4dc2138e50b94346aca29c17db424031&gt;**](SecurityCheckMetrics4dc2138e50b94346aca29c17db424031.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetMetrics.new(
  errors: null,
  meta: null,
  resources: null
)
```

