# Falcon::DomainCloudScope

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;DomainCloudAccounts&gt;**](DomainCloudAccounts.md) |  | [optional] |
| **business_impact** | **String** |  | [optional] |
| **business_unit** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **owners** | **Array&lt;String&gt;** |  | [optional] |
| **total_accounts** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCloudScope.new(
  accounts: null,
  business_impact: null,
  business_unit: null,
  cid: null,
  created_at: null,
  description: null,
  id: null,
  name: null,
  owners: null,
  total_accounts: null
)
```

