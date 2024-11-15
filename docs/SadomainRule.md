# Falcon::SadomainRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **breach_monitor_only** | **Boolean** | Weather to monitor exclusively for breach data. breach_monitoring_enabled also needs to be sent as true for this to be enabled. |  |
| **breach_monitoring_enabled** | **Boolean** | Whether to monitor for breach data. Available only for &#x60;Company Domains&#x60; and &#x60;Email addresses&#x60; rule topics. When enabled, ownership of the monitored domains or emails is required |  |
| **cid** | **String** |  |  |
| **created_by** | **String** | The UUID of the user that created a given rule or Crowdstrike if the rule was system generated | [optional] |
| **created_timestamp** | **Time** | The creation time for a given rule |  |
| **filter** | **String** | The FQL filter contained in a rule and used for searching. Parentheses may be added automatically for clarity |  |
| **id** | **String** | The ID of a given rule |  |
| **match_on_tsq_result_types** | **Array&lt;String&gt;** | Which result types to monitor for. Can be set to only monitor domains or subdomains, as well as both. Only available for the &#x60;Typosquatting&#x60; rule topic. |  |
| **name** | **String** | The name of a given rule |  |
| **originating_template_id** | **String** | If the rule was generated based on a template, the id of the template | [optional] |
| **ownership_assets** | [**SadomainCustomerAssets**](SadomainCustomerAssets.md) |  | [optional] |
| **permissions** | **String** | The permissions of a given rule |  |
| **priority** | **String** | The priority of a given rule |  |
| **status** | **String** | The status of a given rule |  |
| **status_message** | **String** | The detailed status message of a given rule | [optional] |
| **substring_matching_enabled** | **Boolean** | Whether to monitor for substring matches. Only available for the &#x60;Typosquatting&#x60; rule topic |  |
| **template_priority** | **Integer** |  | [optional] |
| **topic** | **String** | The topic of a given rule |  |
| **updated_timestamp** | **Time** | The last updated time for a given rule |  |
| **user_id** | **String** | The user ID of the user that created a given rule | [optional] |
| **user_name** | **String** | The user name of the user that created a given rule | [optional] |
| **user_uuid** | **String** | The UUID of the user that created a given rule |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainRule.new(
  breach_monitor_only: null,
  breach_monitoring_enabled: null,
  cid: null,
  created_by: null,
  created_timestamp: null,
  filter: null,
  id: null,
  match_on_tsq_result_types: null,
  name: null,
  originating_template_id: null,
  ownership_assets: null,
  permissions: null,
  priority: null,
  status: null,
  status_message: null,
  substring_matching_enabled: null,
  template_priority: null,
  topic: null,
  updated_timestamp: null,
  user_id: null,
  user_name: null,
  user_uuid: null
)
```

