# Falcon::WebhooktriggerHMACConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_delimiter** | **String** | Delimiter for fields in HMAC calculation (dot|comma) | [optional] |
| **fields** | **Array&lt;String&gt;** | Request components to include in HMAC calculation (body|timestamp|message_id) | [optional] |
| **hash_function** | **String** | Hash function to use for HMAC (e.g., sha256) | [optional] |
| **message_id_header_name** | **String** | Name of the header containing the webhook message ID | [optional] |
| **secret** | **String** | Secret key for HMAC signing | [optional] |
| **signature_encoding** | **String** | Encoding format for the signature | [optional] |
| **signature_header_name** | **String** | Name of the header containing the HMAC signature | [optional] |
| **signature_prefix** | **String** | Prefix of the HMAC signature which defines the signature format | [optional] |
| **timestamp_header_name** | **String** | Name of the header containing the timestamp | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerHMACConfig.new(
  field_delimiter: null,
  fields: null,
  hash_function: null,
  message_id_header_name: null,
  secret: null,
  signature_encoding: null,
  signature_header_name: null,
  signature_prefix: null,
  timestamp_header_name: null
)
```

