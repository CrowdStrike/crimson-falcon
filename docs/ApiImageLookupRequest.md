# Falcon::ApiImageLookupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_packages** | [**Array&lt;ModelsApplicationPackageInfoType&gt;**](ModelsApplicationPackageInfoType.md) |  | [optional] |
| **osversion** | **String** |  |  |
| **packages** | [**Array&lt;ModelsPackageInfoType&gt;**](ModelsPackageInfoType.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiImageLookupRequest.new(
  application_packages: null,
  osversion: null,
  packages: null
)
```

