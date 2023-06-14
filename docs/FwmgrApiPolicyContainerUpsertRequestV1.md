# Falcon::FwmgrApiPolicyContainerUpsertRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_inbound** | **String** |  |  |
| **default_outbound** | **String** |  |  |
| **enforce** | **Boolean** |  |  |
| **is_default_policy** | **Boolean** |  | [optional] |
| **local_logging** | **Boolean** |  |  |
| **platform_id** | **String** |  |  |
| **policy_id** | **String** |  |  |
| **rule_group_ids** | **Array&lt;String&gt;** |  |  |
| **test_mode** | **Boolean** |  |  |
| **tracking** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiPolicyContainerUpsertRequestV1.new(
  default_inbound: null,
  default_outbound: null,
  enforce: null,
  is_default_policy: null,
  local_logging: null,
  platform_id: null,
  policy_id: null,
  rule_group_ids: null,
  test_mode: null,
  tracking: null
)
```

