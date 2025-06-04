# Falcon::DomainConfigData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth** | **String** |  | [optional] |
| **data** | **String** |  | [optional] |
| **enable_system_workflow** | **Boolean** |  |  |
| **graphical_password_algorithm** | [**DomainGPAs**](DomainGPAs.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **immutable_params** | [**DomainParams**](DomainParams.md) |  | [optional] |
| **json** | **Object** |  | [optional] |
| **name** | **String** |  | [optional] |
| **on_prem** | [**DomainOnPrem**](DomainOnPrem.md) |  | [optional] |
| **params** | [**DomainParams**](DomainParams.md) |  | [optional] |
| **permissions** | **Array&lt;String&gt;** |  | [optional] |
| **resource_id** | **String** |  | [optional] |
| **resource_response** | **String** |  | [optional] |
| **token_parameters** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] |
| **x_www_form_urlencoded** | **Object** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainConfigData.new(
  auth: null,
  data: null,
  enable_system_workflow: null,
  graphical_password_algorithm: null,
  id: null,
  immutable_params: null,
  json: null,
  name: null,
  on_prem: null,
  params: null,
  permissions: null,
  resource_id: null,
  resource_response: null,
  token_parameters: null,
  x_www_form_urlencoded: null
)
```

