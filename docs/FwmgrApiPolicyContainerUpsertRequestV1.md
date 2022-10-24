# Falcon::FwmgrApiPolicyContainerUpsertRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_inbound** | **String** |  |  |
| **default_outbound** | **String** |  |  |
| **enforce** | **Boolean** |  |  |
| **is_default_policy** | **Boolean** |  | [optional] |
| **platform_id** | **String** |  |  |
| **policy_id** | **String** |  |  |
| **rule_group_ids** | **Array&lt;String&gt;** |  |  |
| **test_mode** | **Boolean** |  |  |
| **tracking** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrApiPolicyContainerUpsertRequestV1.new(
  default_inbound: null,
  default_outbound: null,
  enforce: null,
  is_default_policy: null,
  platform_id: null,
  policy_id: null,
  rule_group_ids: null,
  test_mode: null,
  tracking: null
)
```

