# Falcon::RequestsMlExclusionCreateReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** |  | [optional] |
| **excluded_from** | **Array&lt;Object&gt;** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsMlExclusionCreateReqV1.new(
  comment: null,
  excluded_from: null,
  groups: null,
  value: null
)
```

