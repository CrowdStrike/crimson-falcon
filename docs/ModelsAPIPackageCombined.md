# Falcon::ModelsAPIPackageCombined

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_related** | **Boolean** |  |  |
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
  ai_related: null,
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

