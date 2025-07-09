# Falcon::ModelsAPIImageAssessment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assessed** | **Integer** |  |  |
| **error_image_pull** | **Integer** |  |  |
| **error_image_push** | **Integer** |  |  |
| **error_missing_config** | **Integer** |  |  |
| **error_unsupported_schema_version** | **Integer** |  |  |
| **time_stamp** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIImageAssessment.new(
  assessed: null,
  error_image_pull: null,
  error_image_push: null,
  error_missing_config: null,
  error_unsupported_schema_version: null,
  time_stamp: null
)
```

