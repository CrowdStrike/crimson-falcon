# Falcon::ModelsBaseImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_digest** | **String** |  | [optional] |
| **image_id** | **String** |  | [optional] |
| **registry** | **String** |  | [optional] |
| **repository** | **String** |  | [optional] |
| **tag** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsBaseImageRequest.new(
  image_digest: null,
  image_id: null,
  registry: null,
  repository: null,
  tag: null
)
```

