# Falcon::DomainExecuteCommandResultsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainExecuteCommandResultV1&gt;**](DomainExecuteCommandResultV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExecuteCommandResultsV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

