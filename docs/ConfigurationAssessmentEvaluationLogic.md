# Falcon::ConfigurationAssessmentEvaluationLogic

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_evaluation_logic_mixin0**](ConfigurationAssessmentEvaluationLogic.md#get_evaluation_logic_mixin0) | **GET** /configuration-assessment/entities/evaluation-logic/v1 | Get details on evaluation logic items by providing one or more finding IDs. |


## get_evaluation_logic_mixin0

> <DomainAPIEvaluationLogicEntitiesResponseV1> get_evaluation_logic_mixin0(ids)

Get details on evaluation logic items by providing one or more finding IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::ConfigurationAssessmentEvaluationLogic.new
ids = ['inner_example'] # Array<String> | One or more evaluation logic finding IDs.

begin
  # Get details on evaluation logic items by providing one or more finding IDs.
  result = api_instance.get_evaluation_logic_mixin0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessmentEvaluationLogic->get_evaluation_logic_mixin0: #{e}"
end
```

#### Using the get_evaluation_logic_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIEvaluationLogicEntitiesResponseV1>, Integer, Hash)> get_evaluation_logic_mixin0_with_http_info(ids)

```ruby
begin
  # Get details on evaluation logic items by providing one or more finding IDs.
  data, status_code, headers = api_instance.get_evaluation_logic_mixin0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIEvaluationLogicEntitiesResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessmentEvaluationLogic->get_evaluation_logic_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more evaluation logic finding IDs. |  |

### Return type

[**DomainAPIEvaluationLogicEntitiesResponseV1**](DomainAPIEvaluationLogicEntitiesResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

