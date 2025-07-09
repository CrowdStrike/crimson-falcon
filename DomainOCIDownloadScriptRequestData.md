# Falcon::DomainOCIDownloadScriptRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_method** | **String** | It can be native terraform or OCI Resource manager |  |
| **is_download** | **Boolean** | If it is true, scripts will be downloaded, otherwise it will return the deep link |  |
| **tenancy_ocid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCIDownloadScriptRequestData.new(
  deployment_method: null,
  is_download: null,
  tenancy_ocid: null
)
```

