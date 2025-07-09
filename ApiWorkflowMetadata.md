# Falcon::ApiWorkflowMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_permissions** | **Array&lt;String&gt;** |  |  |
| **fusion_action** | **Boolean** |  |  |
| **is_active** | **Boolean** |  |  |
| **system_action** | **Boolean** |  |  |
| **tag_ids** | **Array&lt;String&gt;** | workflow activity tag, default to [&#39;Custom Storage&#39;] | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiWorkflowMetadata.new(
  action_permissions: null,
  fusion_action: null,
  is_active: null,
  system_action: null,
  tag_ids: null
)
```

