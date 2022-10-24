# Falcon::MalqueryRateLimitsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MalqueryRateLimitsMeta**](MalqueryRateLimitsMeta.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalqueryRateLimitsResponse.new(
  errors: null,
  meta: null
)
```

