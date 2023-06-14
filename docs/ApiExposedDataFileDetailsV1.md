# Falcon::ApiExposedDataFileDetailsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **complete_data_set** | **Boolean** | (Boolean) If it&#39;s a complete dataset or not. | [optional] |
| **download_urls** | **Array&lt;String&gt;** | A list of download urls for this file. |  |
| **name** | **String** | The name of the file containing the exposed record(s). |  |
| **size** | **Integer** | The size of the file. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExposedDataFileDetailsV1.new(
  complete_data_set: null,
  download_urls: null,
  name: null,
  size: null
)
```

