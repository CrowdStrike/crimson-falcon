# Falcon::ApiIndicatorUpdateReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **applied_globally** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **expiration** | **Time** |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **metadata** | [**ApiMetadataReqV1**](ApiMetadataReqV1.md) |  | [optional] |
| **mobile_action** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiIndicatorUpdateReqV1.new(
  action: null,
  applied_globally: null,
  description: null,
  expiration: null,
  host_groups: null,
  id: null,
  metadata: null,
  mobile_action: null,
  platforms: null,
  severity: null,
  source: null,
  tags: null
)
```

