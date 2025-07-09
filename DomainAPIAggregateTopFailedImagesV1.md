# Falcon::DomainAPIAggregateTopFailedImagesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_uid** | **String** |  |  |
| **cid** | **String** |  |  |
| **failed_rules_count** | **Integer** |  |  |
| **failed_rules_count_by_severity** | [**DomainCountBySeverity**](DomainCountBySeverity.md) |  |  |
| **image_digest** | **String** |  |  |
| **image_registry** | **String** |  |  |
| **image_repository** | **String** |  |  |
| **image_tag** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateTopFailedImagesV1.new(
  asset_uid: null,
  cid: null,
  failed_rules_count: null,
  failed_rules_count_by_severity: null,
  image_digest: null,
  image_registry: null,
  image_repository: null,
  image_tag: null
)
```

