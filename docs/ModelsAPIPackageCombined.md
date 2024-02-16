# Falcon::ModelsAPIPackageCombined

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_images** | **Integer** |  |  |
| **cid** | **String** |  |  |
| **license** | **String** |  |  |
| **package_name_version** | **String** |  |  |
| **running_images** | **Integer** |  |  |
| **type** | **String** |  |  |
| **vulnerabilities** | [**Array&lt;ModelsAPIPackageVulnerability&gt;**](ModelsAPIPackageVulnerability.md) |  |  |
| **vulnerability_count** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIPackageCombined.new(
  all_images: null,
  cid: null,
  license: null,
  package_name_version: null,
  running_images: null,
  type: null,
  vulnerabilities: null,
  vulnerability_count: null
)
```

