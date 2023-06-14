# Falcon::ApiIndicatorV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **applied_globally** | **Boolean** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration** | **Time** |  | [optional] |
| **expired** | **Boolean** |  | [optional] |
| **from_parent** | **Boolean** |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **metadata** | [**ApiMetadataV1**](ApiMetadataV1.md) |  | [optional] |
| **mobile_action** | **String** |  | [optional] |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **Time** |  | [optional] |
| **parent_cid_name** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **type** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIndicatorV1.new(
  action: null,
  applied_globally: null,
  created_by: null,
  created_on: null,
  deleted: null,
  description: null,
  expiration: null,
  expired: null,
  from_parent: null,
  host_groups: null,
  id: null,
  metadata: null,
  mobile_action: null,
  modified_by: null,
  modified_on: null,
  parent_cid_name: null,
  platforms: null,
  severity: null,
  source: null,
  tags: null,
  type: null,
  value: null
)
```

