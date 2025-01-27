# Falcon::JsonschemaUIExtensions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **Array&lt;String&gt;** | supported file extensions for file upload, eg. &#39;.yaml&#39;, &#39;.json&#39; | [optional] |
| **component** | **String** |  | [optional] |
| **custom_group_name** | **String** |  | [optional] |
| **duration_options** | [**Array&lt;JsonschemaDurationOption&gt;**](JsonschemaDurationOption.md) |  | [optional] |
| **encoding** | **String** | supported encoding for file upload, eg. &#39;base64&#39; | [optional] |
| **helper_text** | **String** |  | [optional] |
| **hide** | **Boolean** | generate a hidden card during mobiledoc generation | [optional] |
| **schema_reference** | **String** | local reference to look up the dynamic json schema and mobiledoc card configuration returned in the top-level of api response | [optional] |
| **skip** | **Boolean** | skip generating a card during mobiledoc generation | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::JsonschemaUIExtensions.new(
  accept: null,
  component: null,
  custom_group_name: null,
  duration_options: null,
  encoding: null,
  helper_text: null,
  hide: null,
  schema_reference: null,
  skip: null
)
```

