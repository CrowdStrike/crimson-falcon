# Falcon::FielddataFieldSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_sensitive** | **Boolean** | Indicates whether the field is case sensitive for searching against fulcrum. Some downstream APIs are and others are not, so this is needed so that UI can handle this cohesively. | [optional] |
| **key** | **String** |  | [optional] |
| **options** | [**Array&lt;FielddataFieldSourceOption&gt;**](FielddataFieldSourceOption.md) |  | [optional] |
| **sort** | **String** |  | [optional] |
| **strict** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FielddataFieldSource.new(
  case_sensitive: null,
  key: null,
  options: null,
  sort: null,
  strict: null
)
```

