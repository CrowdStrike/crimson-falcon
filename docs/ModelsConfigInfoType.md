# Falcon::ModelsConfigInfoType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cmd** | **Array&lt;String&gt;** |  |  |
| **entrypoint** | **Array&lt;String&gt;** |  |  |
| **env** | **Array&lt;String&gt;** |  |  |
| **exposed_ports** | **Hash&lt;String, Object&gt;** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  |  |
| **stop_signal** | **String** |  |  |
| **user** | **String** |  |  |
| **volumes** | **Hash&lt;String, Object&gt;** |  |  |
| **working_dir** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsConfigInfoType.new(
  cmd: null,
  entrypoint: null,
  env: null,
  exposed_ports: null,
  labels: null,
  stop_signal: null,
  user: null,
  volumes: null,
  working_dir: null
)
```

