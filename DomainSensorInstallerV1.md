# Falcon::DomainSensorInstallerV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | installer description |  |
| **file_size** | **Integer** | file size |  |
| **file_type** | **String** | file type |  |
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

instance = Falcon::DomainSensorInstallerV1.new(
  description: null,
  file_size: null,
  file_type: null,
  name: null,
  os: null,
  os_version: null,
  platform: null,
  release_date: null,
  sha256: null,
  version: null
)
```

