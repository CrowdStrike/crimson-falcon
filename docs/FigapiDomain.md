# Falcon::FigapiDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_date** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **domain_updated_date** | **String** |  | [optional] |
| **email_addresses** | [**Array&lt;FigapiEmailAddress&gt;**](FigapiEmailAddress.md) |  | [optional] |
| **expiration_date** | **String** |  | [optional] |
| **ipv4_addresses** | [**Array&lt;FigapiIPv4&gt;**](FigapiIPv4.md) |  | [optional] |
| **ipv6_addresses** | [**Array&lt;FigapiIPv6&gt;**](FigapiIPv6.md) |  | [optional] |
| **mx_records** | [**Array&lt;FigapiMXRecord&gt;**](FigapiMXRecord.md) |  | [optional] |
| **name_servers** | [**Array&lt;FigapiNameServer&gt;**](FigapiNameServer.md) |  | [optional] |
| **registrar** | **String** |  | [optional] |
| **registrar_status** | **Array&lt;String&gt;** |  | [optional] |
| **who_is** | [**FigapiWhoIS**](FigapiWhoIS.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiDomain.new(
  creation_date: null,
  domain: null,
  domain_updated_date: null,
  email_addresses: null,
  expiration_date: null,
  ipv4_addresses: null,
  ipv6_addresses: null,
  mx_records: null,
  name_servers: null,
  registrar: null,
  registrar_status: null,
  who_is: null
)
```

