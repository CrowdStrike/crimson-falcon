# Falcon::DomainBehavior

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **behavior_id** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **cmdline** | **String** |  | [optional] |
| **compound_tto** | **String** |  | [optional] |
| **detection_ids** | **Array&lt;String&gt;** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **exclusion_type** | **String** |  | [optional] |
| **filepath** | **String** |  | [optional] |
| **incident_id** | **String** |  | [optional] |
| **incident_ids** | **Array&lt;String&gt;** |  | [optional] |
| **ioc_source** | **String** |  | [optional] |
| **ioc_type** | **String** |  | [optional] |
| **ioc_value** | **String** |  | [optional] |
| **objective** | **String** |  | [optional] |
| **pattern_disposition** | **Integer** |  | [optional] |
| **pattern_disposition_details** | [**PatterndispositionPatternDisposition**](PatterndispositionPatternDisposition.md) |  | [optional] |
| **pattern_id** | **Integer** |  |  |
| **sha256** | **String** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **tactic_id** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **technique_id** | **String** |  | [optional] |
| **template_instance_id** | **Integer** |  |  |
| **timestamp** | **Time** |  |  |
| **user_name** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainBehavior.new(
  aid: null,
  behavior_id: null,
  cid: null,
  cmdline: null,
  compound_tto: null,
  detection_ids: null,
  display_name: null,
  domain: null,
  exclusion_type: null,
  filepath: null,
  incident_id: null,
  incident_ids: null,
  ioc_source: null,
  ioc_type: null,
  ioc_value: null,
  objective: null,
  pattern_disposition: null,
  pattern_disposition_details: null,
  pattern_id: null,
  sha256: null,
  tactic: null,
  tactic_id: null,
  technique: null,
  technique_id: null,
  template_instance_id: null,
  timestamp: null,
  user_name: null
)
```

