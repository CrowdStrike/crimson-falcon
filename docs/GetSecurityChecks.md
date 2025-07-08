# Falcon::GetSecurityChecks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error2c3c8d4e65c3447a8eae772de1b0e3ef&gt;**](Error2c3c8d4e65c3447a8eae772de1b0e3ef.md) |  | [optional] |
| **meta** | [**Meta536da5d66c054c69889a624cf1068900**](Meta536da5d66c054c69889a624cf1068900.md) |  | [optional] |
| **resources** | [**Array&lt;SecurityCheckWithComplianceFabac54a5b434140a3258784ea52cedd&gt;**](SecurityCheckWithComplianceFabac54a5b434140a3258784ea52cedd.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetSecurityChecks.new(
  errors: null,
  meta: null,
  resources: null
)
```

