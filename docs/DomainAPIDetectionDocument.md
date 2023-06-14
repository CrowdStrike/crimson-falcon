# Falcon::DomainAPIDetectionDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adversary_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **assigned_to_name** | **String** |  | [optional] |
| **assigned_to_uid** | **String** |  | [optional] |
| **behaviors** | [**Array&lt;DetectsBehavior&gt;**](DetectsBehavior.md) |  | [optional] |
| **behaviors_processed** | **Array&lt;String&gt;** |  |  |
| **cid** | **String** |  |  |
| **created_timestamp** | **Time** |  |  |
| **date_updated** | **String** |  | [optional] |
| **detection_id** | **String** |  |  |
| **device** | [**DetectsDeviceDetailIndexed**](DetectsDeviceDetailIndexed.md) |  |  |
| **email_sent** | **Boolean** |  |  |
| **first_behavior** | **Time** |  |  |
| **hostinfo** | [**DetectsHostInfo**](DetectsHostInfo.md) |  |  |
| **last_behavior** | **Time** |  |  |
| **max_confidence** | **Integer** |  |  |
| **max_severity** | **Integer** |  |  |
| **max_severity_displayname** | **String** |  |  |
| **overwatch_notes** | **String** |  | [optional] |
| **quarantined_files** | [**Array&lt;DetectsQuarantinedFile&gt;**](DetectsQuarantinedFile.md) |  | [optional] |
| **seconds_to_resolved** | **Integer** |  |  |
| **seconds_to_triaged** | **Integer** |  |  |
| **show_in_ui** | **Boolean** |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIDetectionDocument.new(
  adversary_ids: null,
  assigned_to_name: null,
  assigned_to_uid: null,
  behaviors: null,
  behaviors_processed: null,
  cid: null,
  created_timestamp: null,
  date_updated: null,
  detection_id: null,
  device: null,
  email_sent: null,
  first_behavior: null,
  hostinfo: null,
  last_behavior: null,
  max_confidence: null,
  max_severity: null,
  max_severity_displayname: null,
  overwatch_notes: null,
  quarantined_files: null,
  seconds_to_resolved: null,
  seconds_to_triaged: null,
  show_in_ui: null,
  status: null
)
```

