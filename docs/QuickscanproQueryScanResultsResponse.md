# Falcon::QuickscanproQueryScanResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** | scan IDs |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproQueryScanResultsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

