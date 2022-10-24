# Falcon::RegistrationPolicyExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **enabled** | **Boolean** |  |  |
| **policy_id** | **Integer** |  |  |
| **regions** | **Array&lt;String&gt;** |  |  |
| **severity** | **String** |  |  |
| **tag_excluded** | **Boolean** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationPolicyExtV1.new(
  account_id: null,
  enabled: null,
  policy_id: null,
  regions: null,
  severity: null,
  tag_excluded: null
)
```

