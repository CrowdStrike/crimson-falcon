# Falcon::ModelsImageInfoType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** |  |  |
| **created_at** | **String** |  | [optional] |
| **digest** | **String** |  |  |
| **id** | **String** |  |  |
| **registry** | **String** |  | [optional] |
| **repository** | **String** |  | [optional] |
| **size** | **Integer** |  |  |
| **tag** | **String** |  | [optional] |
| **config_s3_key** | **String** |  | [optional] |
| **manifest_s3_key** | **String** |  | [optional] |
| **scan_request_s3_key** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsImageInfoType.new(
  architecture: null,
  created_at: null,
  digest: null,
  id: null,
  registry: null,
  repository: null,
  size: null,
  tag: null,
  config_s3_key: null,
  manifest_s3_key: null,
  scan_request_s3_key: null,
  source: null
)
```

