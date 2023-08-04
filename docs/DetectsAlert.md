# Falcon::DetectsAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  | [optional] |
| **aggregate_id** | **String** |  | [optional] |
| **assigned_to_name** | **String** |  | [optional] |
| **assigned_to_uid** | **String** |  | [optional] |
| **assigned_to_uuid** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **composite_id** | **String** |  | [optional] |
| **confidence** | **Integer** |  | [optional] |
| **crawl_edge_ids** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **crawl_vertex_ids** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **crawled_timestamp** | **Time** |  | [optional] |
| **created_timestamp** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **email_sent** | **Boolean** |  | [optional] |
| **external** | **Boolean** |  | [optional] |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **objective** | **String** |  | [optional] |
| **pattern_id** | **Integer** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **product** | **String** |  | [optional] |
| **scenario** | **String** |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **show_in_ui** | **Boolean** |  | [optional] |
| **status** | **String** |  | [optional] |
| **tactic** | **String** |  | [optional] |
| **tactic_id** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **technique_id** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **type** | **String** |  |  |
| **updated_timestamp** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsAlert.new(
  agent_id: null,
  aggregate_id: null,
  assigned_to_name: null,
  assigned_to_uid: null,
  assigned_to_uuid: null,
  cid: null,
  composite_id: null,
  confidence: null,
  crawl_edge_ids: null,
  crawl_vertex_ids: null,
  crawled_timestamp: null,
  created_timestamp: null,
  description: null,
  display_name: null,
  email_sent: null,
  external: null,
  id: null,
  name: null,
  objective: null,
  pattern_id: null,
  platform: null,
  product: null,
  scenario: null,
  severity: null,
  show_in_ui: null,
  status: null,
  tactic: null,
  tactic_id: null,
  tags: null,
  technique: null,
  technique_id: null,
  timestamp: null,
  type: null,
  updated_timestamp: null
)
```

