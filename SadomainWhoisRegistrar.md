# Falcon::SadomainWhoisRegistrar

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the registrar for a given domain |  |
| **status** | **Array&lt;String&gt;** | The list of Extensible Provisioning Protocol (EPP) status codes provided by the registrar for a given domain |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainWhoisRegistrar.new(
  name: null,
  status: null
)
```

