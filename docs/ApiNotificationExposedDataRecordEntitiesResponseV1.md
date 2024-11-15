# Falcon::ApiNotificationExposedDataRecordEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiNotificationExposedDataRecordV1&gt;**](ApiNotificationExposedDataRecordV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiNotificationExposedDataRecordEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

