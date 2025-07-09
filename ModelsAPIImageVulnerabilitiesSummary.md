# Falcon::ModelsAPIImageVulnerabilitiesSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_packages_with_vulnerabilities** | **Integer** |  |  |
| **app_vuln_by_severity** | [**Array&lt;ModelsAPIVulnCountBySeverity&gt;**](ModelsAPIVulnCountBySeverity.md) |  |  |
| **image_vuln_by_severity** | [**Array&lt;ModelsAPIVulnCountBySeverity&gt;**](ModelsAPIVulnCountBySeverity.md) |  |  |
| **layers_with_vulnerabilities** | **Integer** |  |  |
| **os_packages_with_vulnerabilities** | **Integer** |  |  |
| **os_vuln_by_severity** | [**Array&lt;ModelsAPIVulnCountBySeverity&gt;**](ModelsAPIVulnCountBySeverity.md) |  |  |
| **total_app_packages** | **Integer** |  |  |
| **total_os_packages** | **Integer** |  |  |
| **total_vulnerabilities** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIImageVulnerabilitiesSummary.new(
  app_packages_with_vulnerabilities: null,
  app_vuln_by_severity: null,
  image_vuln_by_severity: null,
  layers_with_vulnerabilities: null,
  os_packages_with_vulnerabilities: null,
  os_vuln_by_severity: null,
  total_app_packages: null,
  total_os_packages: null,
  total_vulnerabilities: null
)
```

