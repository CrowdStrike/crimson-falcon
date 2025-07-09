# Falcon::GetAlertsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error02abad40db9c4a4baf68f01bea6071c4&gt;**](Error02abad40db9c4a4baf68f01bea6071c4.md) |  | [optional] |
| **meta** | [**MetaFb2fed2c461a4af583e5b3b790c82df1**](MetaFb2fed2c461a4af583e5b3b790c82df1.md) |  | [optional] |
| **resources** | [**Array&lt;Alert85f2306d175b4314b4d51d0096103dcc&gt;**](Alert85f2306d175b4314b4d51d0096103dcc.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetAlertsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

