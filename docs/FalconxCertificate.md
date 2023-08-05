# Falcon::FalconxCertificate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** |  | [optional] |
| **md5** | **String** |  | [optional] |
| **owner** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **sha1** | **String** |  | [optional] |
| **valid_from** | **Time** |  | [optional] |
| **valid_until** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxCertificate.new(
  issuer: null,
  md5: null,
  owner: null,
  serial_number: null,
  sha1: null,
  valid_from: null,
  valid_until: null
)
```

