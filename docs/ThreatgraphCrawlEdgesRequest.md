# Falcon::ThreatgraphCrawlEdgesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edge_direction** | **String** |  |  |
| **edge_type** | **String** |  |  |
| **limit** | **Integer** |  |  |
| **next_requests** | [**Array&lt;ThreatgraphCrawlEdgesRequest&gt;**](ThreatgraphCrawlEdgesRequest.md) |  | [optional] |
| **scope** | **String** |  |  |
| **sort_descending** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ThreatgraphCrawlEdgesRequest.new(
  edge_direction: null,
  edge_type: null,
  limit: null,
  next_requests: null,
  scope: null,
  sort_descending: null
)
```

