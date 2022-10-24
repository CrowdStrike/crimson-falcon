# Falcon::ApiBulkUpdateReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **applied_globally** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration** | **Time** |  | [optional] |
| **filter** | **String** |  | [optional] |
| **from_parent** | **Boolean** |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **metadata** | [**ApiMetadataReqV1**](ApiMetadataReqV1.md) |  | [optional] |
| **mobile_action** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiBulkUpdateReqV1.new(
  action: null,
  applied_globally: null,
  description: null,
  expiration: null,
  filter: null,
  from_parent: null,
  host_groups: null,
  metadata: null,
  mobile_action: null,
  platforms: null,
  severity: null,
  source: null,
  tags: null
)
```

