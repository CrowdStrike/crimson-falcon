# Falcon::ModelsAccessHealthDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_checked** | **String** | Timestamp of the when access was last verified. | [optional] |
| **reason** | **String** | If valid is false, the reported reason why access is failing. | [optional] |
| **valid** | **Boolean** | A true or false value indicating whether access was successful based on last_checked. |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ModelsAccessHealthDetails.new(
  last_checked: null,
  reason: null,
  valid: null
)
```

