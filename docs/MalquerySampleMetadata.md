# Falcon::MalquerySampleMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family** | **String** | Sample family | [optional] |
| **filesize** | **Integer** | Sample size | [optional] |
| **filetype** | **String** | Sample file type | [optional] |
| **first_seen** | **String** | Date when it was first seen | [optional] |
| **label** | **String** | Sample label | [optional] |
| **md5** | **String** | Sample MD5 | [optional] |
| **sha1** | **String** | Sample SHA1 | [optional] |
| **sha256** | **String** | Sample SHA256 | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalquerySampleMetadata.new(
  family: null,
  filesize: null,
  filetype: null,
  first_seen: null,
  label: null,
  md5: null,
  sha1: null,
  sha256: null
)
```

