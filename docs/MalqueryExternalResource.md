# Falcon::MalqueryExternalResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family** | **String** | Sample family | [optional] |
| **filesize** | **Integer** | Sample size | [optional] |
| **filetype** | **String** | Sample file type | [optional] |
| **first_seen** | **String** | Date when it was first seen | [optional] |
| **ignore_reason** | **String** | Reason why the resource is ignored | [optional] |
| **label** | **String** | Sample label | [optional] |
| **label_confidence** | **String** | Resource label confidence | [optional] |
| **md5** | **String** | Sample MD5 | [optional] |
| **pattern** | **String** | Search pattern | [optional] |
| **pattern_type** | **String** | Search pattern type | [optional] |
| **samples** | [**Array&lt;MalquerySampleMetadata&gt;**](MalquerySampleMetadata.md) | List of sample metadata |  |
| **sha1** | **String** | Sample SHA1 | [optional] |
| **sha256** | **String** | Sample SHA256 | [optional] |
| **tags** | **Array&lt;String&gt;** | List of resource tags | [optional] |
| **yara_rule** | **String** | Search YARA rule | [optional] |
| **yara_rules** | **Array&lt;String&gt;** | List of YARA rules for related files | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryExternalResource.new(
  family: null,
  filesize: null,
  filetype: null,
  first_seen: null,
  ignore_reason: null,
  label: null,
  label_confidence: null,
  md5: null,
  pattern: null,
  pattern_type: null,
  samples: null,
  sha1: null,
  sha256: null,
  tags: null,
  yara_rule: null,
  yara_rules: null
)
```

