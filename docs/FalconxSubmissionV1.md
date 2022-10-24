# Falcon::FalconxSubmissionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **sandbox** | [**Array&lt;FalconxSandboxParametersV1&gt;**](FalconxSandboxParametersV1.md) |  | [optional] |
| **send_email_notification** | **Boolean** |  | [optional] |
| **state** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |
| **user_tags** | **Array&lt;String&gt;** |  | [optional] |
| **user_uuid** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSubmissionV1.new(
  cid: null,
  created_timestamp: null,
  id: null,
  origin: null,
  sandbox: null,
  send_email_notification: null,
  state: null,
  user_id: null,
  user_name: null,
  user_tags: null,
  user_uuid: null
)
```

