# Falcon::PolicyframeworkControl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicable_profiles** | **Array&lt;String&gt;** |  | [optional] |
| **benchmarks** | [**Array&lt;PolicyframeworkBenchmark&gt;**](PolicyframeworkBenchmark.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **framework** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |
| **version** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PolicyframeworkControl.new(
  applicable_profiles: null,
  benchmarks: null,
  description: null,
  framework: null,
  name: null,
  type: null,
  uuid: null,
  version: null
)
```

