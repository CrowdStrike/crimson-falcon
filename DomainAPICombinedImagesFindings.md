# Falcon::DomainAPICombinedImagesFindings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assessments** | [**Array&lt;DomainAssetFinding&gt;**](DomainAssetFinding.md) |  |  |
| **cid** | **String** |  |  |
| **image_digest** | **String** |  |  |
| **image_id** | **String** |  |  |
| **image_registry** | **String** |  |  |
| **image_repository** | **String** |  |  |
| **image_tag** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPICombinedImagesFindings.new(
  assessments: null,
  cid: null,
  image_digest: null,
  image_id: null,
  image_registry: null,
  image_repository: null,
  image_tag: null
)
```

