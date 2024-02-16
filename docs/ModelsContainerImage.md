# Falcon::ModelsContainerImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **container_count** | **Integer** |  |  |
| **containers_running_status** | **Hash&lt;String, Boolean&gt;** |  |  |
| **hosts** | **Array&lt;String&gt;** |  |  |
| **id** | **String** |  |  |
| **image_detection_count** | **Integer** |  |  |
| **image_digest** | **String** |  |  |
| **image_has_been_assessed** | **Boolean** |  |  |
| **image_id** | **String** |  |  |
| **image_name** | **String** |  |  |
| **image_registry** | **String** |  |  |
| **image_repository** | **String** |  |  |
| **image_tag** | **String** |  |  |
| **image_vulnerability_count** | **Integer** |  |  |
| **last_seen** | **String** |  |  |
| **running_container_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainerImage.new(
  cid: null,
  container_count: null,
  containers_running_status: null,
  hosts: null,
  id: null,
  image_detection_count: null,
  image_digest: null,
  image_has_been_assessed: null,
  image_id: null,
  image_name: null,
  image_registry: null,
  image_repository: null,
  image_tag: null,
  image_vulnerability_count: null,
  last_seen: null,
  running_container_count: null
)
```

