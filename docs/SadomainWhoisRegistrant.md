# Falcon::SadomainWhoisRegistrant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email of the entity who registered a given domain |  |
| **name** | **String** | The name of the entity who registered a given domain |  |
| **org** | **String** | The organization who registered a given domain |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::SadomainWhoisRegistrant.new(
  email: null,
  name: null,
  org: null
)
```

