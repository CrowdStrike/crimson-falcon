# Falcon::DomainDDOSAttackSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attack_type** | **String** | The type of attack. One of &#x60;Amplification&#x60;, &#x60;Botnet&#x60;, &#x60;Other&#x60; |  |
| **confidence** | **String** | The confidence level. One of &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; |  |
| **duration** | **Integer** | The duration of the attack in seconds |  |
| **key** | **String** | The hash over target and date |  |
| **network_protocol** | **String** | The network protocol used. One of &#x60;TCP&#x60;, &#x60;UDP&#x60;, &#x60;ICMP&#x60;, &#x60;Other&#x60; |  |
| **protocols** | **Array&lt;String&gt;** | The protocols used in the attack |  |
| **requests** | **Integer** | The number of requests against the target |  |
| **start_time** | **String** | The ISO-8601 date for the attack start time |  |
| **target** | **String** | The target&#39;s IPv4/6 address or hostname |  |
| **target_details** | [**DomainDDOSTargetDetails**](DomainDDOSTargetDetails.md) |  |  |
| **target_domain** | **String** | The target&#39;s domain |  |
| **target_ip** | **String** | The target&#39;s IPv4/6 address |  |
| **target_ports** | **Array&lt;Integer&gt;** | List of ports where the attack took place |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDDOSAttackSource.new(
  attack_type: null,
  confidence: null,
  duration: null,
  key: null,
  network_protocol: null,
  protocols: null,
  requests: null,
  start_time: null,
  target: null,
  target_details: null,
  target_domain: null,
  target_ip: null,
  target_ports: null
)
```

