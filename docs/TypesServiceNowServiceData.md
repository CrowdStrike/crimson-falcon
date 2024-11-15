# Falcon::TypesServiceNowServiceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_now_service** | [**TypesServiceNowService**](TypesServiceNowService.md) |  |  |
| **apis** | [**TypesServiceServiceInterface**](TypesServiceServiceInterface.md) |  |  |
| **artifacts** | [**TypesServiceServiceArtifact**](TypesServiceServiceArtifact.md) |  |  |
| **configurations** | [**TypesServiceServiceConfiguration**](TypesServiceServiceConfiguration.md) |  |  |
| **dependencies** | [**TypesServiceServiceDependency**](TypesServiceServiceDependency.md) |  |  |
| **deployment_units** | **Array&lt;String&gt;** |  |  |
| **frameworks** | [**TypesServiceServiceFramework**](TypesServiceServiceFramework.md) |  |  |
| **libraries** | [**TypesServiceServiceLibrary**](TypesServiceServiceLibrary.md) |  |  |
| **topics_queues** | [**Array&lt;TypesInterface&gt;**](TypesInterface.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesServiceNowServiceData.new(
  service_now_service: null,
  apis: null,
  artifacts: null,
  configurations: null,
  dependencies: null,
  deployment_units: null,
  frameworks: null,
  libraries: null,
  topics_queues: null
)
```

