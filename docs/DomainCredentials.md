# Falcon::DomainCredentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sites_all** | **Array&lt;String&gt;** |  | [optional] |
| **sites_with_cookie_only** | **Array&lt;String&gt;** |  | [optional] |
| **sites_with_password** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCredentials.new(
  sites_all: null,
  sites_with_cookie_only: null,
  sites_with_password: null
)
```

