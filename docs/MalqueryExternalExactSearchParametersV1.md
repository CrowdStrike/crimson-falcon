# Falcon::MalqueryExternalExactSearchParametersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | [**MalqueryExternalHuntOptions**](MalqueryExternalHuntOptions.md) |  | [optional] |
| **patterns** | [**Array&lt;MalquerySearchParameter&gt;**](MalquerySearchParameter.md) | Patterns to search for |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalqueryExternalExactSearchParametersV1.new(
  options: null,
  patterns: null
)
```

