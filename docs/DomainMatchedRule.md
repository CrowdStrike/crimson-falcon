# Falcon::DomainMatchedRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The customer ID | [optional] |
| **hit_id** | **String** | The matched rule hit ID | [optional] |
| **rule_id** | **String** | The matched rule ID | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMatchedRule.new(
  customer_id: null,
  hit_id: null,
  rule_id: null
)
```

