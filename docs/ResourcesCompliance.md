# Falcon::ResourcesCompliance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **benchmark_names** | **Array&lt;String&gt;** |  | [optional] |
| **benchmark_versions** | **Array&lt;String&gt;** |  |  |
| **controls** | [**Array&lt;PolicyframeworkControl&gt;**](PolicyframeworkControl.md) |  | [optional] |
| **framework_versions** | **Array&lt;String&gt;** |  | [optional] |
| **frameworks** | **Array&lt;String&gt;** |  | [optional] |
| **legacy_policy_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **rules** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ResourcesCompliance.new(
  benchmark_names: null,
  benchmark_versions: null,
  controls: null,
  framework_versions: null,
  frameworks: null,
  legacy_policy_ids: null,
  rules: null
)
```

