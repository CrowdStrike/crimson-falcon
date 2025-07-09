# Falcon::DomainAWSD4CAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **cid** | **String** |  | [optional] |
| **iam_role_arn** | **String** |  | [optional] |
| **intermediate_role_arn** | **String** |  | [optional] |
| **organization** | [**DomainAWSD4COrganizationAccountV1**](DomainAWSD4COrganizationAccountV1.md) |  | [optional] |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAWSD4CAccountV1.new(
  account_id: null,
  cid: null,
  iam_role_arn: null,
  intermediate_role_arn: null,
  organization: null,
  status: null
)
```

