# Falcon::QuickscanproFileResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** |  | [optional] |
| **sha256** | **String** |  |  |
| **verdict** | **String** |  |  |
| **verdict_reason** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproFileResult.new(
  filename: null,
  sha256: null,
  verdict: null,
  verdict_reason: null
)
```

