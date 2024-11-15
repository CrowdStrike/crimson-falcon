# Falcon::DomainSensorInstallerV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectures** | **Array&lt;String&gt;** | architectures supported | [optional] |
| **description** | **String** | installer description |  |
| **file_size** | **Integer** | file size |  |
| **file_type** | **String** | file type |  |
| **ltv_expiry_date** | **String** | ltv expiry date | [optional] |
| **ltv_promoted_date** | **String** | ltv promoted date | [optional] |
| **name** | **String** | installer file name |  |
| **os** | **String** |  |  |
| **os_version** | **String** |  |  |
| **platform** | **String** | supported platform |  |
| **release_date** | **Time** | release date |  |
| **sha256** | **String** | sha256 |  |
| **version** | **String** | version of the installer |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSensorInstallerV2.new(
  architectures: null,
  description: null,
  file_size: null,
  file_type: null,
  ltv_expiry_date: null,
  ltv_promoted_date: null,
  name: null,
  os: null,
  os_version: null,
  platform: null,
  release_date: null,
  sha256: null,
  version: null
)
```

