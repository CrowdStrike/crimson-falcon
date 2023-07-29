# Falcon::DomainNotificationV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assigned_to_uid** | **String** | The email of the user who is assigned to this notification | [optional] |
| **assigned_to_username** | **String** | The name of the user who is assigned to this notification | [optional] |
| **assigned_to_uuid** | **String** | The unique ID of the user who is assigned to this notification | [optional] |
| **breach_summary** | [**DomainMatchedBreachSummaryV1**](DomainMatchedBreachSummaryV1.md) |  | [optional] |
| **cid** | **String** |  |  |
| **created_date** | **Time** | The date when the notification was generated |  |
| **highlights** | **Array&lt;String&gt;** | Highlighted content based on the rule that generated the notifications. Highlights are surrounded with a &#x60;&lt;cs-highlight&gt;&#x60; tag | [optional] |
| **id** | **String** | The ID of the notification |  |
| **item_author** | **String** | The author who posted the intelligence item | [optional] |
| **item_author_id** | **String** | The ID of the author who posted the intelligence item | [optional] |
| **item_date** | **Time** | Timestamp when the item is considered to have been created |  |
| **item_id** | **String** | ID of the item which matched the rule |  |
| **item_site** | **String** | The site where the intelligence item was found | [optional] |
| **item_site_id** | **String** | The ID of the site where the intelligence item was found | [optional] |
| **item_type** | **String** | Type of the item which matched the rule: &#x60;post&#x60;, &#x60;reply&#x60;, &#x60;botnet_config&#x60;, &#x60;breach&#x60;, etc. |  |
| **raw_intel_id** | **String** | ID of the raw intel item that matched the rule |  |
| **rule_id** | **String** | The ID of the rule that generated this notification |  |
| **rule_name** | **String** | The name of the rule that generated this notification |  |
| **rule_priority** | **String** | The priority of the rule that generated this notification |  |
| **rule_topic** | **String** | The topic of the rule that generated this notification |  |
| **source_category** | **String** | Category of the source that generated the notification | [optional] |
| **status** | **String** | The notification status. This can be one of: &#x60;new&#x60;, &#x60;in-progress&#x60;, &#x60;closed-false-positive&#x60;, &#x60;closed-true-positive&#x60;. |  |
| **typosquatting** | [**SadomainTyposquattingComponent**](SadomainTyposquattingComponent.md) |  | [optional] |
| **updated_date** | **Time** | The date when the notification was updated |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainNotificationV1.new(
  assigned_to_uid: null,
  assigned_to_username: null,
  assigned_to_uuid: null,
  breach_summary: null,
  cid: null,
  created_date: null,
  highlights: null,
  id: null,
  item_author: null,
  item_author_id: null,
  item_date: null,
  item_id: null,
  item_site: null,
  item_site_id: null,
  item_type: null,
  raw_intel_id: null,
  rule_id: null,
  rule_name: null,
  rule_priority: null,
  rule_topic: null,
  source_category: null,
  status: null,
  typosquatting: null,
  updated_date: null
)
```

