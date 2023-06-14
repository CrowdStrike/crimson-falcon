# Falcon::DomainUpdateRuleRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **breach_monitoring_enabled** | **Boolean** | Whether to monitor for breach data. Available only for &#x60;Company Domains&#x60; and &#x60;Email addresses&#x60; rule topics. When enabled, ownership of the monitored domains or emails is required |  |
| **filter** | **String** | The FQL filter to be used for searching |  |
| **id** | **String** | The rule ID to be updated |  |
| **name** | **String** | The name of a given rule |  |
| **permissions** | **String** | The permissions for a given rule which specifies the rule&#39;s access by other users. Possible values: [&#x60;public&#x60;, &#x60;private&#x60;] |  |
| **priority** | **String** | The priority for a given rule. Possible values: [&#x60;low&#x60;, &#x60;medium&#x60;, &#x60;high&#x60;] |  |
| **substring_matching_enabled** | **Boolean** | Whether to monitor for substring matches. Only available for the &#x60;Typosquatting&#x60; topic. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUpdateRuleRequestV1.new(
  breach_monitoring_enabled: null,
  filter: null,
  id: null,
  name: null,
  permissions: null,
  priority: null,
  substring_matching_enabled: null
)
```

