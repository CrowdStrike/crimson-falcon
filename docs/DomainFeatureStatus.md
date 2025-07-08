# Falcon::DomainFeatureStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  |  |
| **failed_permissions** | **Array&lt;String&gt;** |  | [optional] |
| **passed_permissions** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFeatureStatus.new(
  enabled: null,
  failed_permissions: null,
  passed_permissions: null,
  status: null
)
```

