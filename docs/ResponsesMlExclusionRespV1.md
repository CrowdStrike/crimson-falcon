# Falcon::ResponsesMlExclusionRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ResponsesMlExclusionV1&gt;**](ResponsesMlExclusionV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesMlExclusionRespV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

