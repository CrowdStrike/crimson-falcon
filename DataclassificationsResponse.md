# Falcon::DataclassificationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **findings** | [**Array&lt;DataclassificationsDataClassificationFinding&gt;**](DataclassificationsDataClassificationFinding.md) |  | [optional] |
| **found** | **Boolean** |  |  |
| **labels** | **Hash&lt;String, String&gt;** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **scanned** | **Boolean** |  |  |
| **tags** | [**Hash&lt;String, DataclassificationsTag&gt;**](DataclassificationsTag.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DataclassificationsResponse.new(
  findings: null,
  found: null,
  labels: null,
  last_updated: null,
  scanned: null,
  tags: null
)
```

