# Falcon::FigapiURL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | SHA256 hash of the file | [optional] |
| **url_properties** | **Array&lt;String&gt;** | This can be one of: &#x60;DeadDrop&#x60;, &#x60;PaymentAddress&#x60;, &#x60;ProxyScript&#x60;. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiURL.new(
  url: null,
  url_properties: null
)
```

