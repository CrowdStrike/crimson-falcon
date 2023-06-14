# Falcon::DomainIncident

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_to** | **String** |  | [optional] |
| **assigned_to_name** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **created** | **Time** |  |  |
| **description** | **String** |  | [optional] |
| **email_state** | **String** |  | [optional] |
| **_end** | **Time** |  |  |
| **events_histogram** | [**Array&lt;DomainEventHistogram&gt;**](DomainEventHistogram.md) |  | [optional] |
| **fine_score** | **Integer** |  |  |
| **host_ids** | **Array&lt;String&gt;** |  |  |
| **hosts** | [**Array&lt;DetectsDeviceDetailIndexed&gt;**](DetectsDeviceDetailIndexed.md) |  | [optional] |
| **incident_id** | **String** |  |  |
| **incident_type** | **Integer** |  | [optional] |
| **lm_host_ids** | **Array&lt;String&gt;** |  | [optional] |
| **lm_hosts_capped** | **Boolean** |  | [optional] |
| **lm_types** | **Integer** |  | [optional] |
| **lmra_host_ids** | **Array&lt;String&gt;** |  | [optional] |
| **lmra_hosts_capped** | **Boolean** |  | [optional] |
| **modified_timestamp** | **Time** |  | [optional] |
| **name** | **String** |  | [optional] |
| **objectives** | **Array&lt;String&gt;** |  | [optional] |
| **start** | **Time** |  |  |
| **state** | **String** |  |  |
| **status** | **Integer** |  | [optional] |
| **tactics** | **Array&lt;String&gt;** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **techniques** | **Array&lt;String&gt;** |  | [optional] |
| **users** | **Array&lt;String&gt;** |  | [optional] |
| **visibility** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainIncident.new(
  assigned_to: null,
  assigned_to_name: null,
  cid: null,
  created: null,
  description: null,
  email_state: null,
  _end: null,
  events_histogram: null,
  fine_score: null,
  host_ids: null,
  hosts: null,
  incident_id: null,
  incident_type: null,
  lm_host_ids: null,
  lm_hosts_capped: null,
  lm_types: null,
  lmra_host_ids: null,
  lmra_hosts_capped: null,
  modified_timestamp: null,
  name: null,
  objectives: null,
  start: null,
  state: null,
  status: null,
  tactics: null,
  tags: null,
  techniques: null,
  users: null,
  visibility: null
)
```

