# Falcon::K8sregListClusterCloudItemResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **aws_meta** | [**K8sregAWSClusterItemResp**](K8sregAWSClusterItemResp.md) |  | [optional] |
| **azure_meta** | [**K8sregAzureAcctClusterItemResp**](K8sregAzureAcctClusterItemResp.md) |  | [optional] |
| **cloud_status** | **String** |  |  |
| **cluster_name** | **String** |  | [optional] |
| **cluster_service** | **String** |  |  |
| **cluster_status** | **String** |  | [optional] |
| **from_cspm** | **Boolean** |  | [optional] |
| **location** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregListClusterCloudItemResp.new(
  account_id: null,
  aws_meta: null,
  azure_meta: null,
  cloud_status: null,
  cluster_name: null,
  cluster_service: null,
  cluster_status: null,
  from_cspm: null,
  location: null
)
```

