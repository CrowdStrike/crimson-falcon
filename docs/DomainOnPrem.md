# Falcon::DomainOnPrem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_group_id** | **String** |  |  |
| **insecure_skip_verify** | **Boolean** | Allows internal calls to not strictly validate certificates | [optional] |
| **proxy_url** | **String** | Internal proxy to route requests | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOnPrem.new(
  host_group_id: null,
  insecure_skip_verify: null,
  proxy_url: null
)
```

