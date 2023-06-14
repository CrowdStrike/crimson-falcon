# Falcon::MalqueryStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clean_count** | **Integer** | Number of clean samples |  |
| **malware_count** | **Integer** | Number of malicious samples |  |
| **pua_count** | **Integer** | Number of potentially unwanted samples such as adware |  |
| **total_count** | **Integer** | Total number of samples |  |
| **unknown_count** | **Integer** | Number of unknown (which could not be classified) samples |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryStats.new(
  clean_count: null,
  malware_count: null,
  pua_count: null,
  total_count: null,
  unknown_count: null
)
```

