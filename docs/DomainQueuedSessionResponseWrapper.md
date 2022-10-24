# Falcon::DomainQueuedSessionResponseWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainQueuedSessionJob&gt;**](DomainQueuedSessionJob.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainQueuedSessionResponseWrapper.new(
  errors: null,
  meta: null,
  resources: null
)
```

