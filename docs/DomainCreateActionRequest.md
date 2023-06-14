# Falcon::DomainCreateActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_format** | **String** | The level of detail in which the content will be delivered. It can be either &#39;standard&#39; or &#39;enhanced&#39; |  |
| **frequency** | **String** | The time interval between the action&#39;s triggers. It can be one of the values: &#39;asap&#39;, &#39;daily&#39; or &#39;weekly&#39; |  |
| **recipients** | **Array&lt;String&gt;** | The address list who will be notified by this action. |  |
| **trigger_matchless** | **Boolean** | Whether to periodically trigger the action based on the frequency, even when there are no new matches for the associated monitoring rule |  |
| **type** | **String** | The action type. The only type currently supported is &#39;email&#39; |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCreateActionRequest.new(
  content_format: null,
  frequency: null,
  recipients: null,
  trigger_matchless: null,
  type: null
)
```

