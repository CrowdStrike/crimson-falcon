# Falcon::DomainBehavior

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **behavior_id** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **cmdline** | **String** |  | [optional] |
| **compound_tto** | **String** |  | [optional] |
| **detection_id** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **filepath** | **String** |  | [optional] |
| **incident_id** | **String** |  | [optional] |
| **incident_ids** | **Array&lt;String&gt;** |  | [optional] |
| **ioc_source** | **String** |  | [optional] |
| **ioc_type** | **String** |  | [optional] |
| **ioc_value** | **String** |  | [optional] |
| **objective** | **String** |  | [optional] |
| **pattern_disposition** | **Integer** |  | [optional] |
| **pattern_disposition_details** | [**CloudontologyPatternDisposition**](CloudontologyPatternDisposition.md) |  | [optional] |
| **pattern_id** | **Integer** |  |  |
| **sha256** | **String** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **template_instance_id** | **Integer** |  |  |
| **timestamp** | **Time** |  |  |
| **user_name** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBehavior.new(
  aid: null,
  behavior_id: null,
  cid: null,
  cmdline: null,
  compound_tto: null,
  detection_id: null,
  domain: null,
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
  technique: null,
  template_instance_id: null,
  timestamp: null,
  user_name: null
)
```

