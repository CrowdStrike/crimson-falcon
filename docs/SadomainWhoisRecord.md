# Falcon::SadomainWhoisRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_collected** | **Time** | The timestamp when the Whois snapshot was captured for a given domain | [optional] |
| **date_created** | **Time** | The timestamp when the Whois record was created | [optional] |
| **date_expires** | **Time** | The timestamp when the Whois record expires | [optional] |
| **date_updated** | **Time** | The timestamp when the Whois record was updated | [optional] |
| **name_servers** | **Array&lt;String&gt;** | The list of nameservers associated with a given domain | [optional] |
| **registrant** | [**SadomainWhoisRegistrant**](SadomainWhoisRegistrant.md) |  | [optional] |
| **registrar** | [**SadomainWhoisRegistrar**](SadomainWhoisRegistrar.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainWhoisRecord.new(
  date_collected: null,
  date_created: null,
  date_expires: null,
  date_updated: null,
  name_servers: null,
  registrant: null,
  registrar: null
)
```

