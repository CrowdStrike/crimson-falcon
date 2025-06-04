# Falcon::DetectsExternalAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** | Device or sensor ID for which the Alert was generated |  |
| **aggregate_id** | **String** | Common linkage between multiple Alerts that belong to the same detection bouquet |  |
| **assigned_to_name** | **String** | Name of the person this Alert is assigned to |  |
| **assigned_to_uid** | **String** | UserID to which this Alert is assigned to |  |
| **assigned_to_uuid** | **String** | UUID to which this Alert is assigned to |  |
| **cid** | **String** | Unique ID of CrowdStrike customers |  |
| **composite_id** | **String** | An opaque internal identifier that can uniquely identify an Alert |  |
| **confidence** | **Integer** | Confidence is a 1-100 integer value denoting the confidence that, when this Alert fires, it is indicative of malicious activity |  |
| **crawled_timestamp** | **Time** | indicates when ThreatGraph was crawled to gather info for this alert creation/update |  |
| **created_timestamp** | **Time** | indicates when the Alert was first written to backend store |  |
| **data_domains** | **Array&lt;String&gt;** | Data Domains represents domains to which this alert belongs to |  |
| **description** | **String** | Short, customer-visible summary of the detected activity |  |
| **display_name** | **String** | Customer visible name for the Alert&#39;s pattern |  |
| **email_sent** | **Boolean** | Boolean to know if we sent email regarding this Alert |  |
| **external** | **Boolean** | Boolean indicating if this Alert is internal or external |  |
| **id** | **String** | Vertex key which triggers the formation of the Alert |  |
| **mitre_attack** | [**Array&lt;DetectsMitreAttackMapping&gt;**](DetectsMitreAttackMapping.md) | References to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures |  |
| **name** | **String** | Pattern Name coming either from Taxonomy or directly from the ingested Alert |  |
| **objective** | **String** | End goal that an attack adversary intends to achieve according to MITRE |  |
| **pattern_id** | **Integer** | Taxonomy patternID for this Alert |  |
| **platform** | **String** | Platform that this Alert was triggered on e.g. Android, Windows, etc.. |  |
| **product** | **String** | Product specifies the SKU that this Alert belongs to e.g. mobile, idp, epp |  |
| **resolution** | **String** | Alert resolution. Could be one of the following values: true_positive, false_positive, ignored |  |
| **scenario** | **String** | Scenario was used pre-Handrails to display additional killchain context for UI alerts. With handrails, this field is mostly  obsolete in favor of tactic/technique. Still, it can be useful for determining specific pattern types that are not straightforward to distinguish from other fields alone |  |
| **seconds_to_resolved** | **Integer** | Seconds To Resolved represents the seconds elapsed since this alert has been resolved |  |
| **seconds_to_triaged** | **Integer** | Seconds To Triage represents the seconds elapsed since this alert has been triaged |  |
| **severity** | **Integer** | Severity is also a 1-100 integer value, but unlike confidence severity impacts how a Alert is displayed in the UI |  |
| **severity_name** | **String** | Severity name is a UI friendly bucketing of the severity integer |  |
| **show_in_ui** | **Boolean** | Boolean indicating if this Alert will be shown in the UI or if it&#39;s hidden&#39; |  |
| **source_products** | **Array&lt;String&gt;** | Source Products are products that produced events which contributed to this alert |  |
| **source_vendors** | **Array&lt;String&gt;** | Source Vendors are vendors that produced events which contributed to this alert |  |
| **status** | **String** | Could be one of the following - New, closed, in_progress, reopened |  |
| **tactic** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures |  |
| **tactic_id** | **String** | Unique ID for the tactic seen in the Alert |  |
| **tags** | **Array&lt;String&gt;** | Tags are string values associated with the alert that can be added or removed through the API |  |
| **technique** | **String** | Tactic and Technique are references to MITRE ATT&amp;CK, which is a public framework for tracking and modeling adversary tools techniques and procedures |  |
| **technique_id** | **String** | Unique ID for the technique seen in the Alert |  |
| **timestamp** | **Time** | stored value coming in directly from the ingested event or set by cloud in the absence of it |  |
| **type** | **String** | Type of definition Detections Extensibility use. Keyed-off of Pattern of the incoming events/Alerts |  |
| **updated_timestamp** | **Time** | indicates when the Alert was last modified |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsExternalAlert.new(
  agent_id: null,
  aggregate_id: null,
  assigned_to_name: null,
  assigned_to_uid: null,
  assigned_to_uuid: null,
  cid: null,
  composite_id: null,
  confidence: null,
  crawled_timestamp: null,
  created_timestamp: null,
  data_domains: null,
  description: null,
  display_name: null,
  email_sent: null,
  external: null,
  id: null,
  mitre_attack: null,
  name: null,
  objective: null,
  pattern_id: null,
  platform: null,
  product: null,
  resolution: null,
  scenario: null,
  seconds_to_resolved: null,
  seconds_to_triaged: null,
  severity: null,
  severity_name: null,
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

