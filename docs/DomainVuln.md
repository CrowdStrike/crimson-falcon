# Falcon::DomainVuln

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cve** | **String** | CVE ID number with four or more digits in the sequence number portion of the ID, examples: CVE-1999-0067, CVE-2014-12345, CVE-2016-7654321 |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainVuln.new(
  cve: null
)
```

