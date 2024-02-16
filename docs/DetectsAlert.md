# Falcon::DetectsAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** | Device or sensor ID for which the Alert was generated | [optional] |
| **aggregate_id** | **String** | Common linkage between multiple Alerts that belong so the same detection bouquet | [optional] |
| **assigned_to_name** | **String** | Name of the person this Alert is assigned to | [optional] |
| **assigned_to_uid** | **String** | UserID to which this Alert is assigned to | [optional] |
| **assigned_to_uuid** | **String** | UUID to which this Alert is assigned to | [optional] |
| **cid** | **String** | Unique ID of CrowdStrike customers | [optional] |
| **composite_id** | **String** | An opaque internal identifier that can uniquely identify an Alert | [optional] |
| **confidence** | **Integer** | Confidence is a 1-100 integer value denoting the confidence that, when this Alert fires, it is indicative of malicious activity | [optional] |
| **crawl_edge_ids** | **Hash&lt;String, Array&lt;String&gt;&gt;** | internal only | [optional] |
| **crawl_vertex_ids** | **Hash&lt;String, Array&lt;String&gt;&gt;** | internal only | [optional] |
| **crawled_timestamp** | **Time** | indicates when ThreatGraph was crawled to gather info for this alert creation/update | [optional] |
| **created_timestamp** | **Time** | indicates when the Alert was first written to backend store | [optional] |
| **data_domains** | **Array&lt;String&gt;** | Data Domains represents domains to which this alert belongs to | [optional] |
| **description** | **String** | Short, customer-visible summary of the detected activity | [optional] |
| **display_name** | **String** | Customer visible name for the Alert&#39;s pattern | [optional] |
| **email_sent** | **Boolean** | Boolean to know if we sent email regarding this Alert | [optional] |
| **es_doc_id** | **String** | internal only | [optional] |
| **es_doc_version** | **Integer** | internal only | [optional] |
| **es_routing_id** | **String** | internal only | [optional] |
| **external** | **Boolean** | Boolean indicating if this Alert is internal or external | [optional] |
| **id** | **String** | Vertex key which triggers the formation of the Alert | [optional] |
| **name** | **String** | Pattern Name coming either from Taxonomy or directly from the ingested Alert | [optional] |
| **objective** | **String** | End goal that an attack adversary intends to achieve according to MITRE | [optional] |
| **pattern_id** | **Integer** | Taxonomy patternID for this Alert | [optional] |
| **platform** | **String** | Platform that this Alert was triggered on e.g. Android, Windows, etc.. | [optional] |
| **poly_id** | **String** |  | [optional] |
| **product** | **String** | Product specifies the SKU that this Alert belongs to e.g. mobile, idp, epp | [optional] |
| **scenario** | **String** | Scenario was used pre-Handrails to display additional killchain context for UI alerts. With handrails, this field is mostly  obsolete in favor of tactic/technique. Still, it can be useful for determining specific pattern types that are not straightforward to distinguish from other fields alone | [optional] |
| **severity** | **Integer** | Severity is also a 1-100 integer value, but unlike confidence severity impacts how a Alert is displayed in the UI | [optional] |
| **show_in_ui** | **Boolean** | Boolean indicating if this Alert will be shown in the UI or if it&#39;s hidden&#39; | [optional] |
| **source_products** | **Array&lt;String&gt;** | Source Products are products that produced events which contributed to this alert | [optional] |
| **source_vendors** | **Array&lt;String&gt;** | Source Vendors are vendors that produced events which contributed to this alert | [optional] |
| **status** | **String** | Could be one of the following - New, closed, in_progress, reopened | [optional] |
| **tactic** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures | [optional] |
| **tactic_id** | **String** | Unique ID for the tactic seen in the Alert | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags are string values associated with the alert that can be added or removed through the API | [optional] |
| **technique** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures | [optional] |
| **technique_id** | **String** | Unique ID for the technique seen in the Alert | [optional] |
| **timestamp** | **Time** | stored value coming in directly from the ingested event or set by cloud in the absence of it | [optional] |
| **type** | **String** | Type of definition Detections Extensibility use. Keyed-off of Pattern of the incoming events/Alerts |  |
| **updated_timestamp** | **Time** | indicates when the Alert was last modified | [optional] |

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
  data_domains: null,
  description: null,
  display_name: null,
  email_sent: null,
  es_doc_id: null,
  es_doc_version: null,
  es_routing_id: null,
  external: null,
  id: null,
  name: null,
  objective: null,
  pattern_id: null,
  platform: null,
  poly_id: null,
  product: null,
  scenario: null,
  severity: null,
  show_in_ui: null,
  source_products: null,
  source_vendors: null,
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

