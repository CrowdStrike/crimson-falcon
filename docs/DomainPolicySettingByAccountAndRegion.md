# Falcon::DomainPolicySettingByAccountAndRegion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **enabled** | **Boolean** |  |  |
| **regions** | **Array&lt;String&gt;** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **tag_excluded** | **Boolean** |  |  |
| **tenant_id** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainPolicySettingByAccountAndRegion.new(
  account_id: null,
  enabled: null,
  regions: null,
  severity: null,
  tag_excluded: null,
  tenant_id: null
)
```

