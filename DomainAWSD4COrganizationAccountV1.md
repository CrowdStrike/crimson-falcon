# Falcon::DomainAWSD4COrganizationAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **cid** | **String** |  | [optional] |
| **organization_id** | **String** | Up to 34 character AWS provided unique identifier for the organization. | [optional] |
| **root_account_id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAWSD4COrganizationAccountV1.new(
  account_id: null,
  cid: null,
  organization_id: null,
  root_account_id: null
)
```

