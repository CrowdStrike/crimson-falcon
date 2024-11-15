# Falcon::TypesActionRunEventData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **String** |  | [optional] |
| **aws** | [**TypesAWSMetadata**](TypesAWSMetadata.md) |  | [optional] |
| **azure_site** | [**TypesAzureSiteMetadata**](TypesAzureSiteMetadata.md) |  | [optional] |
| **azure_vm** | [**TypesAzureVmMetadata**](TypesAzureVmMetadata.md) |  | [optional] |
| **cloud_function** | [**TypesCloudFunctionMetadata**](TypesCloudFunctionMetadata.md) |  | [optional] |
| **crowdstrike_cloud_security** | [**TypesCrowdStrikeCloudSecurityMetadata**](TypesCrowdStrikeCloudSecurityMetadata.md) |  | [optional] |
| **ec2** | [**TypesEC2Metadata**](TypesEC2Metadata.md) |  | [optional] |
| **ecs** | [**TypesECSMetadata**](TypesECSMetadata.md) |  | [optional] |
| **gcp** | [**TypesGCPMetadata**](TypesGCPMetadata.md) |  | [optional] |
| **host** | [**TypesHostMetadata**](TypesHostMetadata.md) |  | [optional] |
| **k8s** | [**TypesK8SMetadata**](TypesK8SMetadata.md) |  | [optional] |
| **lambda** | [**TypesLambdaMetadata**](TypesLambdaMetadata.md) |  | [optional] |
| **remedy** | [**TypesRemediation**](TypesRemediation.md) |  | [optional] |
| **snyk** | [**TypesSnykMetadata**](TypesSnykMetadata.md) |  | [optional] |
| **sonatype** | [**TypesSonatypeMetadata**](TypesSonatypeMetadata.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesActionRunEventData.new(
  additional_info: null,
  aws: null,
  azure_site: null,
  azure_vm: null,
  cloud_function: null,
  crowdstrike_cloud_security: null,
  ec2: null,
  ecs: null,
  gcp: null,
  host: null,
  k8s: null,
  lambda: null,
  remedy: null,
  snyk: null,
  sonatype: null
)
```

