# Falcon::ApiIntelligenceQueryEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adversaries** | **Array&lt;String&gt;** |  | [optional] |
| **content** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **depends_on** | **Array&lt;String&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **elite_analyst_notes** | **String** | Field only available for Counter Adversary Elite Customers | [optional] |
| **elite_query_explainer** | **String** | Field only available for Counter Adversary Elite Customers | [optional] |
| **environment** | **Array&lt;String&gt;** |  | [optional] |
| **has_elite_analyst_notes** | **Boolean** |  |  |
| **has_elite_query_explainer** | **Boolean** |  |  |
| **id** | **String** |  |  |
| **kill_chain** | **Array&lt;String&gt;** |  | [optional] |
| **language** | **String** |  |  |
| **last_updated_at** | **Time** |  |  |
| **malware_families** | **Array&lt;String&gt;** |  | [optional] |
| **mitre_technique_ids** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  |  |
| **provider** | **String** |  |  |
| **relates_to_community_alias** | **Array&lt;String&gt;** |  | [optional] |
| **reports** | **Array&lt;String&gt;** |  | [optional] |
| **reports_count** | **Integer** |  |  |
| **subscriptions** | **Array&lt;String&gt;** |  | [optional] |
| **type** | **String** |  |  |
| **version** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIntelligenceQueryEntity.new(
  adversaries: null,
  content: null,
  created_at: null,
  depends_on: null,
  description: null,
  elite_analyst_notes: null,
  elite_query_explainer: null,
  environment: null,
  has_elite_analyst_notes: null,
  has_elite_query_explainer: null,
  id: null,
  kill_chain: null,
  language: null,
  last_updated_at: null,
  malware_families: null,
  mitre_technique_ids: null,
  name: null,
  provider: null,
  relates_to_community_alias: null,
  reports: null,
  reports_count: null,
  subscriptions: null,
  type: null,
  version: null
)
```

