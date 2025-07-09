# Falcon::FigapiFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_properties** | **Array&lt;String&gt;** | This can be one of: &#x60;C2Config&#x60;, &#x60;Phishing&#x60;, &#x60;ProxyScript&#x60;, &#x60;RansomNote&#x60;, &#x60;Certificate&#x60;, &#x60;JA3&#x60;, &#x60;PEResource&#x60;, &#x60;PEOverlay&#x60;, &#x60;PESection&#x60; | [optional] |
| **file_size** | **Integer** | Size of the file | [optional] |
| **file_type** | **Array&lt;String&gt;** | Type of the file | [optional] |
| **md5** | **String** | MD5 hash of the file | [optional] |
| **magic_file_type** | **String** | libmagic (file command) output on the sample | [optional] |
| **sha1** | **String** | SHA1 hash of the file | [optional] |
| **sha256** | **String** | SHA256 hash of the file | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiFile.new(
  file_properties: null,
  file_size: null,
  file_type: null,
  md5: null,
  magic_file_type: null,
  sha1: null,
  sha256: null
)
```

