# Falcon::MalqueryExternalHuntParametersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | [**MalqueryExternalHuntOptions**](MalqueryExternalHuntOptions.md) |  | [optional] |
| **yara_rule** | **String** | A YARA rule that defines your search |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalqueryExternalHuntParametersV1.new(
  options: null,
  yara_rule: null
)
```

