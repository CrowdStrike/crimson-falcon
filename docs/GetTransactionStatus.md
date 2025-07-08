# Falcon::GetTransactionStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error479167a4d6534b6a85ec7857c5fb14ba&gt;**](Error479167a4d6534b6a85ec7857c5fb14ba.md) |  | [optional] |
| **meta** | [**Meta77f6bf58ba0045649e59a4655807a6ab**](Meta77f6bf58ba0045649e59a4655807a6ab.md) |  | [optional] |
| **resources** | [**Array&lt;DataTransactionResponseDto614da2e1369e44e596d2935db3da0365&gt;**](DataTransactionResponseDto614da2e1369e44e596d2935db3da0365.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetTransactionStatus.new(
  errors: null,
  meta: null,
  resources: null
)
```

