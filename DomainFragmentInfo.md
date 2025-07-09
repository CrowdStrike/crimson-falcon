# Falcon::DomainFragmentInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_offset** | **Integer** | Offset of the content field from the start of data, in characters | [optional] |
| **count** | **Integer** | Total number of fragments for this group | [optional] |
| **fragmented_fields** | **Array&lt;String&gt;** |  List of fields that have been split, such as: content, iocs, translated_content, ... | [optional] |
| **group_id** | **String** | HEX string, similar to stream_id, ties all fragments together | [optional] |
| **index** | **Integer** | Zero-based index of fragment in the group | [optional] |
| **translated_content_offset** | **Integer** | Offset of the translated_content field from the start of data, in characters | [optional] |
| **truncated_fields** | **Array&lt;String&gt;** | List of fields that have been truncated or deleted | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFragmentInfo.new(
  content_offset: null,
  count: null,
  fragmented_fields: null,
  group_id: null,
  index: null,
  translated_content_offset: null,
  truncated_fields: null
)
```

