# Falcon::DomainActionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | The ID of the customer who created the action |  |
| **content_format** | **String** | The level of detail in which the content will be delivered |  |
| **created_timestamp** | **Time** | The date when the action was created |  |
| **frequency** | **String** | The time interval between the action&#39;s triggers |  |
| **id** | **String** | The ID of the action |  |
| **recipients** | **Array&lt;String&gt;** | The address list who will be notified by this action. |  |
| **rule_id** | **String** | The ID of the rule on which this action is attached |  |
| **status** | **String** | The action status. It can be either &#39;enabled&#39; or &#39;muted&#39;. |  |
| **trigger_matchless** | **Boolean** | Whether to periodically trigger the action based on the frequency, even when there are no new matches for the associated monitoring rule |  |
| **type** | **String** | The action type. The only type currently supported is &#39;email&#39; |  |
| **updated_timestamp** | **Time** | The date when the action was updated |  |
| **user_uuid** | **String** | The UUID of the user who created the action |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainActionV1.new(
  cid: null,
  content_format: null,
  created_timestamp: null,
  frequency: null,
  id: null,
  recipients: null,
  rule_id: null,
  status: null,
  trigger_matchless: null,
  type: null,
  updated_timestamp: null,
  user_uuid: null
)
```

