# Falcon::ModelUserInputViewModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allowed_inputs** | **Array&lt;String&gt;** | if not empty, only listed inputs are allowed |  |
| **allowed_responders** | **Array&lt;String&gt;** | if not empty, only listed responders are allowed to provide input |  |
| **completed** | **Boolean** | whether or not the user input is completed yet |  |
| **completed_at** | **Time** | time at which the user input was modified |  |
| **created_at** | **Time** | time at which the user input was created |  |
| **id** | **String** | ID of the user input |  |
| **input** | **String** | input provided by a responder user |  |
| **note** | **String** | note added to user input at the time an input is provided |  |
| **responder** | **String** | user responding to the user input request |  |
| **timeout_at** | **Time** | time after which the user input may be expired and no longer actionable |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelUserInputViewModel.new(
  allowed_inputs: null,
  allowed_responders: null,
  completed: null,
  completed_at: null,
  created_at: null,
  id: null,
  input: null,
  note: null,
  responder: null,
  timeout_at: null
)
```

