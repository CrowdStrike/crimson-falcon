# Falcon::FalconxSubmissionParametersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sandbox** | [**Array&lt;FalconxSandboxParametersV1&gt;**](FalconxSandboxParametersV1.md) |  | [optional] |
| **send_email_notification** | **Boolean** |  | [optional] |
| **user_tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxSubmissionParametersV1.new(
  sandbox: null,
  send_email_notification: null,
  user_tags: null
)
```

