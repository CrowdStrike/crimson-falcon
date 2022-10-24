# Falcon::DomainMatchedBreachSummaryV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **community_name** | **String** | Community/colloquial exposed data event name. | [optional] |
| **confidence_level** | **String** | The level of confidence regarding data veridicality. Options for likely authentic, confirmed authentic (default: unverified). | [optional] |
| **description** | **String** | The description of the breach |  |
| **event_date** | **String** | The date the exposed data event occurred. | [optional] |
| **event_id** | **String** | CrowdStrike-generated unique exposed data event identifier. | [optional] |
| **exposure_date** | **Time** | The date when the data was leaked online | [optional] |
| **fields** | **Array&lt;String&gt;** | The set of fields which were breached: &#39;email&#39;, &#39;password&#39;, &#39;login_id&#39;, &#39;phone&#39;, etc. |  |
| **files** | [**Array&lt;DomainFileDetailsV1&gt;**](DomainFileDetailsV1.md) | Metadata regarding the file(s) where exposed data records where found. | [optional] |
| **impacted_domains** | **Array&lt;String&gt;** | Where the exposed data event happened. (e.g. LinkedIn or linkedin[.]com) | [optional] |
| **impacted_ips** | **Array&lt;String&gt;** | Where the exposed data event happened | [optional] |
| **name** | **String** | The name of the breach |  |
| **obtained_by** | **String** | Exposed Data Event Threat Actor/Group: Moniker(s) or real name(s) of the individual/group who unveiled confidential data. | [optional] |
| **url** | **String** | Where the leak was found. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainMatchedBreachSummaryV1.new(
  community_name: null,
  confidence_level: null,
  description: null,
  event_date: null,
  event_id: null,
  exposure_date: null,
  fields: null,
  files: null,
  impacted_domains: null,
  impacted_ips: null,
  name: null,
  obtained_by: null,
  url: null
)
```

