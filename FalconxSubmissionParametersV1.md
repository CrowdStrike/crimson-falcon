# Falcon::FalconxSubmissionParametersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_detect_environment** | **Boolean** |  | [optional][default to false] |
| **sandbox** | [**Array&lt;FalconxSandboxParametersV1&gt;**](FalconxSandboxParametersV1.md) |  | [optional] |
| **send_email_notification** | **Boolean** |  | [optional] |
| **user_tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxSubmissionParametersV1.new(
  auto_detect_environment: null,
  sandbox: null,
  send_email_notification: null,
  user_tags: null
)
```

