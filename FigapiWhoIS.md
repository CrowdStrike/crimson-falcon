# Falcon::FigapiWhoIS

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_contact** | [**FigapiWhoisRecord**](FigapiWhoisRecord.md) |  | [optional] |
| **billing_contact** | [**FigapiWhoisRecord**](FigapiWhoisRecord.md) |  | [optional] |
| **registrant_contact** | [**FigapiWhoisRecord**](FigapiWhoisRecord.md) |  | [optional] |
| **technical_contact** | [**FigapiWhoisRecord**](FigapiWhoisRecord.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiWhoIS.new(
  admin_contact: null,
  billing_contact: null,
  registrant_contact: null,
  technical_contact: null
)
```

