# Falcon::TypesReasonTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aws_api_gateway_type** | [**TypesAwsApiGatewayReasonTag**](TypesAwsApiGatewayReasonTag.md) |  | [optional] |
| **aws_elastic_ip_type** | [**TypesAwsElasticIpReasonTag**](TypesAwsElasticIpReasonTag.md) |  | [optional] |
| **aws_lambda_api_gateway_type** | [**TypesAwsLambdaApiGatewayReasonTag**](TypesAwsLambdaApiGatewayReasonTag.md) |  | [optional] |
| **aws_load_balancer_type** | [**TypesAwsLoadBalancerReasonTag**](TypesAwsLoadBalancerReasonTag.md) |  | [optional] |
| **azure_application_gateway_type** | [**TypesAzureApplicationGatewayReasonTag**](TypesAzureApplicationGatewayReasonTag.md) |  | [optional] |
| **azure_load_balancer_type** | [**TypesAzureLoadBalancerReasonTag**](TypesAzureLoadBalancerReasonTag.md) |  | [optional] |
| **db_reason_tag** | [**TypesDataTypeDbReasonTag**](TypesDataTypeDbReasonTag.md) |  | [optional] |
| **k8s_load_balancer_type** | [**TypesK8SLoadBalancerReasonTag**](TypesK8SLoadBalancerReasonTag.md) |  | [optional] |
| **mq_reason_tag** | [**TypesDataTypeMqReasonTag**](TypesDataTypeMqReasonTag.md) |  | [optional] |
| **type** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesReasonTag.new(
  aws_api_gateway_type: null,
  aws_elastic_ip_type: null,
  aws_lambda_api_gateway_type: null,
  aws_load_balancer_type: null,
  azure_application_gateway_type: null,
  azure_load_balancer_type: null,
  db_reason_tag: null,
  k8s_load_balancer_type: null,
  mq_reason_tag: null,
  type: null
)
```

