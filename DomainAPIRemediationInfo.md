# Falcon::DomainAPIRemediationInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **minimum_id** | **String** | Contains the ID of the minimum remediation | [optional] |
| **patch_publication_date** | **String** | Contains the timestamp when earliest remediation was published | [optional] |
| **recommended_id** | **String** | Contains the ID of the recommended remediation | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIRemediationInfo.new(
  minimum_id: null,
  patch_publication_date: null,
  recommended_id: null
)
```

