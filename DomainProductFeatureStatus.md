# Falcon::DomainProductFeatureStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions** | [**Array&lt;DomainProductFeatureStatusConditions&gt;**](DomainProductFeatureStatusConditions.md) |  |  |
| **deployment_method** | **String** | OCI Tenancy registration deployment method |  |
| **is_enabled** | **Boolean** | Feature enabled or not |  |
| **issues** | [**Array&lt;DomainOCIIssue&gt;**](DomainOCIIssue.md) | OCI Tenancy registration permission issues | [optional] |
| **permissions_status** | [**Array&lt;DomainOCIPermission&gt;**](DomainOCIPermission.md) | Permissions status returned via API. |  |
| **persona** | **String** | Person who register OCI Tenancy |  |
| **registration_detailed_status** | **String** | OCI Tenancy detailed status |  |
| **status** | **String** | Feature status |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainProductFeatureStatus.new(
  conditions: null,
  deployment_method: null,
  is_enabled: null,
  issues: null,
  permissions_status: null,
  persona: null,
  registration_detailed_status: null,
  status: null
)
```

