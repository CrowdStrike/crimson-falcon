# Falcon::DomainAPIEvaluationLogicHostInfoV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entities_matched** | [**Array&lt;DomainAPIEntityMatchedV1&gt;**](DomainAPIEntityMatchedV1.md) | Refers to all the entities that were matched together during entity resolution process |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIEvaluationLogicHostInfoV1.new(
  entities_matched: null
)
```

