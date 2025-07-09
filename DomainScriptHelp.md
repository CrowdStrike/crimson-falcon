# Falcon::DomainScriptHelp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **args** | [**Array&lt;ModelArgument&gt;**](ModelArgument.md) |  |  |
| **command** | **String** |  |  |
| **description** | **String** |  |  |
| **examples** | **String** |  |  |
| **internal_only** | **Boolean** |  |  |
| **runnable** | **Boolean** |  |  |
| **sub_commands** | [**Array&lt;DomainScriptHelp&gt;**](DomainScriptHelp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScriptHelp.new(
  args: null,
  command: null,
  description: null,
  examples: null,
  internal_only: null,
  runnable: null,
  sub_commands: null
)
```

