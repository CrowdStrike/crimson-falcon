# Falcon::SadomainCreateRuleRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **breach_monitor_only** | **Boolean** | Monitor only for breach data. Must be accompanied by breach_monitoring_enabled:true. |  |
| **breach_monitoring_enabled** | **Boolean** | Whether to monitor for breach data. Available only for &#x60;Company Domains&#x60; and &#x60;Email addresses&#x60; rule topics. When enabled, ownership of the monitored domains or emails is required |  |
| **filter** | **String** | The FQL filter to be used for searching |  |
| **match_on_tsq_result_types** | **Array&lt;String&gt;** | Which result types to monitor for. Can be set to only monitor domains or subdomains, as well as both. Only available for the &#x60;Typosquatting&#x60; rule topic. Possible values: [&#x60;basedomains&#x60;, &#x60;subdomains&#x60;] |  |
| **name** | **String** | The name of a given rule |  |
| **originating_template_id** | **String** | If the rule was generated based on a template, the id of the template |  |
| **permissions** | **String** | The permissions for a given rule which specifies the rule&#39;s access by other users. Possible values: [&#x60;public&#x60;, &#x60;private&#x60;] |  |
| **priority** | **String** | The priority for a given rule. Possible values: [&#x60;low&#x60;, &#x60;medium&#x60;, &#x60;high&#x60;] |  |
| **substring_matching_enabled** | **Boolean** | Whether to monitor for substring matches. Only available for the &#x60;Typosquatting&#x60; rule topic. |  |
| **topic** | **String** | The topic of a given rule. Possible values: [&#x60;SA_BRAND_PRODUCT&#x60;, &#x60;SA_VIP&#x60;, &#x60;SA_THIRD_PARTY&#x60;, &#x60;SA_IP&#x60;, &#x60;SA_CVE&#x60;, &#x60;SA_BIN&#x60;, &#x60;SA_DOMAIN&#x60;, &#x60;SA_EMAIL&#x60;, &#x60;SA_ALIAS&#x60;, &#x60;SA_AUTHOR&#x60;, &#x60;SA_CUSTOM&#x60;, &#x60;SA_TYPOSQUATTING&#x60;] |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainCreateRuleRequestV1.new(
  breach_monitor_only: null,
  breach_monitoring_enabled: null,
  filter: null,
  match_on_tsq_result_types: null,
  name: null,
  originating_template_id: null,
  permissions: null,
  priority: null,
  substring_matching_enabled: null,
  topic: null
)
```

