# Falcon::DomainAPIFindingFacetV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  |  |
| **cid** | **String** |  |  |
| **created_timestamp** | **String** |  |  |
| **finding** | [**DomainAPIFindingWithRuleV1**](DomainAPIFindingWithRuleV1.md) |  |  |
| **host** | [**DomainAPIHostInfoFacetV1**](DomainAPIHostInfoFacetV1.md) |  | [optional] |
| **id** | **String** |  |  |
| **updated_timestamp** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIFindingFacetV1.new(
  aid: null,
  cid: null,
  created_timestamp: null,
  finding: null,
  host: null,
  id: null,
  updated_timestamp: null
)
```

