# Falcon::DomainAPIRemediationV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Expanded description of the remediation |  |
| **id** | **String** | Refers to an unique identifier for a given remediation |  |
| **link** | **String** | Link to the remediation page for the vendor |  |
| **reference** | **String** | Relevant reference for the remediation that can be used to get additional details for the remediation. For example, a KB number that needs to be installed for a KB_SECURITY_UPDATE |  |
| **title** | **String** | Short description of the remediation |  |
| **vendor_url** | **String** | Link to the vendor advisory - Note: This field is populated if there are extra steps that are required to complete the remediation |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIRemediationV2.new(
  action: null,
  id: null,
  link: null,
  reference: null,
  title: null,
  vendor_url: null
)
```

