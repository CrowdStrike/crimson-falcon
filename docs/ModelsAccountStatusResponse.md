# Falcon::ModelsAccountStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsSnapshotAccountStatus&gt;**](ModelsSnapshotAccountStatus.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAccountStatusResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

