# Falcon::DomainSimpleActor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **animal_classifier** | **String** |  | [optional] |
| **entitlements** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) |  | [optional] |
| **id** | **Integer** |  |  |
| **name** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **thumbnail** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSimpleActor.new(
  animal_classifier: null,
  entitlements: null,
  id: null,
  name: null,
  slug: null,
  thumbnail: null,
  url: null
)
```

