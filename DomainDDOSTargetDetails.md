# Falcon::DomainDDOSTargetDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asn** | **Integer** | The autonomous system number of the target |  |
| **asn_name** | **String** | The autonomous system name of the target |  |
| **cidr** | **String** | The CIDR of the IP address |  |
| **city** | **String** | The target&#39;s city |  |
| **company_name** | **String** | The name of the company who has registered the IP address |  |
| **connection_type** | **String** | The connection type of the target |  |
| **country** | **String** | The target&#39;s country |  |
| **country_code** | **String** |  |  |
| **pdns** | **Array&lt;String&gt;** | The passive DNS of the target |  |
| **rdns** | **String** | The reverse DNS hostname of the target&#39;s IP address |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDDOSTargetDetails.new(
  asn: null,
  asn_name: null,
  cidr: null,
  city: null,
  company_name: null,
  connection_type: null,
  country: null,
  country_code: null,
  pdns: null,
  rdns: null
)
```

