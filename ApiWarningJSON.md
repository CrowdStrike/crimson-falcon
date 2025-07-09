# Falcon::ApiWarningJSON

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Warnings are categorised to allow you to deal with a whole set of warnings the same way. Other values may be returned if cluster nodes are out of sync, using a newer or older version of LogScale. |  |
| **classification** | **String** |  |  |
| **code** | **String** | A stable message code that can be used to compare error types or look up error descriptions. |  |
| **message** | **String** | A Human readable text describing the warning. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiWarningJSON.new(
  category: null,
  classification: null,
  code: null,
  message: null
)
```

