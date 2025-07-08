# Falcon::V1ImageConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **args_escaped** | **Boolean** |  | [optional] |
| **cmd** | **Array&lt;String&gt;** |  | [optional] |
| **entrypoint** | **Array&lt;String&gt;** |  | [optional] |
| **env** | **Array&lt;String&gt;** |  | [optional] |
| **exposed_ports** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **labels** | **Hash&lt;String, String&gt;** |  | [optional] |
| **stop_signal** | **String** |  | [optional] |
| **user** | **String** |  | [optional] |
| **volumes** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **working_dir** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V1ImageConfig.new(
  args_escaped: null,
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

