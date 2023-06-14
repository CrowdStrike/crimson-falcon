# Falcon::MalqueryRequestMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | [**MalqueryExternalHuntOptions**](MalqueryExternalHuntOptions.md) |  | [optional] |
| **pagination** | [**MsaspecPaging**](MsaspecPaging.md) |  | [optional] |
| **patterns** | [**Array&lt;MalquerySearchParameter&gt;**](MalquerySearchParameter.md) | Patterns to search for | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** | Elapsed time since the request started in seconds | [optional] |
| **reqid** | **String** | Request ID returned after creating a hunt or exact search | [optional] |
| **reqtype** | **String** | Request type. Possible values: hunt, search | [optional] |
| **sample** | **String** | Sample ID | [optional] |
| **stats** | [**MalqueryStats**](MalqueryStats.md) |  | [optional] |
| **status** | **String** | Request status. Possible values: inprogress, failed, done | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |
| **yara_rule** | **String** | YARA rule to be monitored | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryRequestMetaInfo.new(
  options: null,
  pagination: null,
  patterns: null,
  powered_by: null,
  query_time: null,
  reqid: null,
  reqtype: null,
  sample: null,
  stats: null,
  status: null,
  trace_id: null,
  writes: null,
  yara_rule: null
)
```

