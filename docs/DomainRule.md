# Falcon::DomainRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | **Array&lt;String&gt;** | The categories associated with the rule |  |
| **created_date** | **String** | UTC timestamp when rule was created |  |
| **customer_id** | **String** | The ID of the customer |  |
| **id** | **String** | The ID of the rule |  |
| **name** | **String** | The name of the rule |  |
| **rule_type** | **String** | The type of the rule |  |
| **updated_date** | **String** | UTC timestamp when rule was last updated |  |
| **value** | **String** | The value of the rule |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainRule.new(
  categories: null,
  created_date: null,
  customer_id: null,
  id: null,
  name: null,
  rule_type: null,
  updated_date: null,
  value: null
)
```

