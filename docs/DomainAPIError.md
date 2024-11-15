# Falcon::DomainAPIError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  |  |
| **message** | **String** |  |  |
| **submission** | [**DomainCreateSubmissionV1ErrorResponse**](DomainCreateSubmissionV1ErrorResponse.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIError.new(
  code: null,
  message: null,
  submission: null
)
```

