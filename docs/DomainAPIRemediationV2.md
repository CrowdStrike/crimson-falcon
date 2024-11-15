# Falcon::DomainAPIRemediationV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Expanded description of the remediation |  |
| **id** | **String** | Refers to an unique identifier for a given remediation |  |
| **link** | **String** | Link to the remediation page for the vendor |  |
| **patch_publication_date** | **String** | The timestamp that this remediation was published | [optional] |
| **recommendation_type** | **String** | The type of recommendation for this remediation, usually either &#39;recommended&#39; or &#39;minimum&#39; | [optional] |
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
  patch_publication_date: null,
  recommendation_type: null,
  reference: null,
  title: null,
  vendor_url: null
)
```

