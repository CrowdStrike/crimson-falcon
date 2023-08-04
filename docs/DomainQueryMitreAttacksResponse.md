# Falcon::DomainQueryMitreAttacksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) | Array of API Errors |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** | Actor&#39;s MITRE attack (Tactic and Technique) ids, represents a concatenation of actors slug, tactic id and technique id (optional) concatenated by underscore, example: fancy-bear_TA0011_T1071&#39; |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainQueryMitreAttacksResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

