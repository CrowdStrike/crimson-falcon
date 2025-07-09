# Falcon::ModelsLightWeightConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** |  |  |
| **cmd** | **Array&lt;String&gt;** |  |  |
| **entry_point** | **Array&lt;String&gt;** |  |  |
| **env** | **Array&lt;String&gt;** |  |  |
| **exposed_ports** | **Hash&lt;String, Object&gt;** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **user** | **String** |  |  |
| **working_dir** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsLightWeightConfig.new(
  architecture: null,
  cmd: null,
  entry_point: null,
  env: null,
  exposed_ports: null,
  labels: null,
  user: null,
  working_dir: null
)
```

