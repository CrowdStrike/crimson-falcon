# Falcon::DomainGPA

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **algorithm_header_name** | **String** | algorithm header name | [optional] |
| **encoding** | **String** | encoding of the signature, defaults to base64 | [optional] |
| **field_delimiter** | **String** | delimiter used between fields | [optional] |
| **fields** | **Array&lt;String&gt;** | fields of the signature | [optional] |
| **hash_function** | **String** | hash function to use; defaults to sha256 | [optional] |
| **header_format** | **String** | header value for signature using ${} wrapped variables | [optional] |
| **header_name** | **String** | name of the header the base64 encoded signature is matched; example: X-CS-Primary-SecretKey; default: Authorization | [optional] |
| **key** | **String** | private key used to hash |  |
| **timestamp_format** | **String** | the timestamp format; defaults to RFC3339 | [optional] |
| **timestamp_header_name** | **String** |  | [optional] |
| **type** | **String** | Preset type of hmac config. This takes precedence over other config fields, so if this field is set, then it uses the native implementation to generate the hmac signature | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainGPA.new(
  algorithm_header_name: null,
  encoding: null,
  field_delimiter: null,
  fields: null,
  hash_function: null,
  header_format: null,
  header_name: null,
  key: null,
  timestamp_format: null,
  timestamp_header_name: null,
  type: null
)
```

