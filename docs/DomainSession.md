# Falcon::DomainSession

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **cloud_request_ids** | **Array&lt;String&gt;** |  |  |
| **commands** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **commands_queued** | **Boolean** |  |  |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **device_details** | [**DomainDevice**](DomainDevice.md) |  | [optional] |
| **device_id** | **String** |  |  |
| **duration** | **Float** |  |  |
| **hostname** | **String** |  |  |
| **id** | **String** |  |  |
| **logs** | [**Array&lt;ModelSessionLog&gt;**](ModelSessionLog.md) |  |  |
| **offline_queued** | **Boolean** |  |  |
| **origin** | **String** |  |  |
| **platform_id** | **Integer** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **pwd** | **String** |  | [optional] |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSession.new(
  cid: null,
  cloud_request_ids: null,
  commands: null,
  commands_queued: null,
  created_at: null,
  deleted_at: null,
  device_details: null,
  device_id: null,
  duration: null,
  hostname: null,
  id: null,
  logs: null,
  offline_queued: null,
  origin: null,
  platform_id: null,
  platform_name: null,
  pwd: null,
  updated_at: null,
  user_id: null,
  user_uuid: null
)
```

