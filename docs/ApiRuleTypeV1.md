# Falcon::ApiRuleTypeV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **Integer** |  |  |
| **disposition_map** | [**Array&lt;DomainDisposition&gt;**](DomainDisposition.md) |  |  |
| **fields** | [**Array&lt;DomainField&gt;**](DomainField.md) |  |  |
| **id** | **String** |  |  |
| **long_desc** | **String** |  |  |
| **name** | **String** |  |  |
| **platform** | **String** |  |  |
| **released** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleTypeV1.new(
  channel: null,
  disposition_map: null,
  fields: null,
  id: null,
  long_desc: null,
  name: null,
  platform: null,
  released: null
)
```

