# Falcon::MalqueryExternalHuntOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_filetypes** | **Array&lt;String&gt;** | Limit results to files of certain types such as EMAIL, PCAP, PDF, PE32. Full list can be found in the documentation | [optional] |
| **filter_meta** | **Array&lt;String&gt;** | Specify a subset of metadata fields to return in the results. Possible values: sha256, md5, type, size, first_seen, label, family | [optional] |
| **limit** | **Integer** | Maximum number of results to be returned | [optional] |
| **max_date** | **String** | Limit results to files first seen before this date. The format is YYYY/MM/DD | [optional] |
| **max_size** | **String** | Maximum file size. The value can be specified either in bytes or in multiples of KB/MB/GB. Examples: 128000, 1.3 KB, 8mb | [optional] |
| **min_date** | **String** | Limit results to files first seen after this date. The format is YYYY/MM/DD | [optional] |
| **min_size** | **String** | Minimum file size. The value can be specified either in bytes or in multiples of KB/MB/GB. Examples: 128000, 1.3 KB, 8mb | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryExternalHuntOptions.new(
  filter_filetypes: null,
  filter_meta: null,
  limit: null,
  max_date: null,
  max_size: null,
  min_date: null,
  min_size: null
)
```

