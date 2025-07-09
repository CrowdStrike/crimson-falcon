# Falcon::FalconxSubmissionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_detect_environment** | **Boolean** |  | [optional][default to false] |
| **cid** | **String** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **error_origin** | **String** |  | [optional] |
| **error_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **index_timestamp** | **String** |  | [optional] |
| **interactive_phase** | **String** |  | [optional] |
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
require 'crimson-falcon'

instance = Falcon::FalconxSubmissionV1.new(
  auto_detect_environment: null,
  cid: null,
  created_timestamp: null,
  error_message: null,
  error_origin: null,
  error_type: null,
  id: null,
  index_timestamp: null,
  interactive_phase: null,
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

