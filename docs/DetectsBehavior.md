# Falcon::DetectsBehavior

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alleged_filetype** | **String** |  |  |
| **behavior_id** | **String** |  |  |
| **cmdline** | **String** |  |  |
| **confidence** | **Integer** |  |  |
| **container_id** | **String** |  | [optional] |
| **control_graph_id** | **String** |  |  |
| **description** | **String** |  |  |
| **device_id** | **String** |  |  |
| **display_name** | **String** |  |  |
| **filename** | **String** |  |  |
| **filepath** | **String** |  |  |
| **ioc_description** | **String** |  |  |
| **ioc_source** | **String** |  |  |
| **ioc_type** | **String** |  |  |
| **ioc_value** | **String** |  |  |
| **md5** | **String** |  |  |
| **objective** | **String** |  |  |
| **parent_details** | [**DetectsParentDetails**](DetectsParentDetails.md) |  |  |
| **pattern_disposition** | **Integer** |  |  |
| **pattern_disposition_details** | [**PatterndispositionPatternDisposition**](PatterndispositionPatternDisposition.md) |  |  |
| **rule_instance_id** | **String** |  | [optional] |
| **rule_instance_version** | **Integer** |  | [optional] |
| **scenario** | **String** |  |  |
| **severity** | **Integer** |  |  |
| **sha256** | **String** |  |  |
| **tactic** | **String** |  |  |
| **tactic_id** | **String** |  |  |
| **technique** | **String** |  |  |
| **technique_id** | **String** |  |  |
| **template_instance_id** | **String** |  | [optional] |
| **timestamp** | **Time** |  |  |
| **triggering_process_graph_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **user_name** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DetectsBehavior.new(
  alleged_filetype: null,
  behavior_id: null,
  cmdline: null,
  confidence: null,
  container_id: null,
  control_graph_id: null,
  description: null,
  device_id: null,
  display_name: null,
  filename: null,
  filepath: null,
  ioc_description: null,
  ioc_source: null,
  ioc_type: null,
  ioc_value: null,
  md5: null,
  objective: null,
  parent_details: null,
  pattern_disposition: null,
  pattern_disposition_details: null,
  rule_instance_id: null,
  rule_instance_version: null,
  scenario: null,
  severity: null,
  sha256: null,
  tactic: null,
  tactic_id: null,
  technique: null,
  technique_id: null,
  template_instance_id: null,
  timestamp: null,
  triggering_process_graph_id: null,
  user_id: null,
  user_name: null
)
```

