# Falcon::DomainAPIAggregationGroupByRulesResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_type** | **String** |  |  |
| **failed_assessment_count** | **Integer** |  |  |
| **framework_name** | **String** |  |  |
| **framework_name_version** | **String** |  |  |
| **framework_version** | **String** |  |  |
| **id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **passed_assessment_count** | **Integer** |  |  |
| **percentage_of_passed_assessments** | **Float** |  |  |
| **recommendation_id** | **String** |  |  |
| **severity** | **Integer** |  |  |
| **total_assessment_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregationGroupByRulesResultV1.new(
  asset_type: null,
  failed_assessment_count: null,
  framework_name: null,
  framework_name_version: null,
  framework_version: null,
  id: null,
  name: null,
  passed_assessment_count: null,
  percentage_of_passed_assessments: null,
  recommendation_id: null,
  severity: null,
  total_assessment_count: null
)
```

