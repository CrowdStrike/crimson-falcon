# Falcon::ZeroTrustAssessmentApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_assessment_v1**](ZeroTrustAssessmentApi.md#get_assessment_v1) | **GET** /zero-trust-assessment/entities/assessments/v1 | Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID). |
| [**get_compliance_v1**](ZeroTrustAssessmentApi.md#get_compliance_v1) | **GET** /zero-trust-assessment/entities/audit/v1 | Get the Zero Trust Assessment compliance report for one customer ID (CID). |


## get_assessment_v1

> <DomainAssessmentsResponse> get_assessment_v1(ids)

Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ZeroTrustAssessmentApi.new
ids = ['inner_example'] # Array<String> | One or more agent IDs, which you can find in the data.zta file, or the Falcon console.

begin
  # Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).
  result = api_instance.get_assessment_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_assessment_v1: #{e}"
end
```

#### Using the get_assessment_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAssessmentsResponse>, Integer, Hash)> get_assessment_v1_with_http_info(ids)

```ruby
begin
  # Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).
  data, status_code, headers = api_instance.get_assessment_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAssessmentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_assessment_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more agent IDs, which you can find in the data.zta file, or the Falcon console. |  |

### Return type

[**DomainAssessmentsResponse**](DomainAssessmentsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_compliance_v1

> <DomainComplianceResponse> get_compliance_v1

Get the Zero Trust Assessment compliance report for one customer ID (CID).

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::ZeroTrustAssessmentApi.new

begin
  # Get the Zero Trust Assessment compliance report for one customer ID (CID).
  result = api_instance.get_compliance_v1
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_compliance_v1: #{e}"
end
```

#### Using the get_compliance_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainComplianceResponse>, Integer, Hash)> get_compliance_v1_with_http_info

```ruby
begin
  # Get the Zero Trust Assessment compliance report for one customer ID (CID).
  data, status_code, headers = api_instance.get_compliance_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainComplianceResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_compliance_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DomainComplianceResponse**](DomainComplianceResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

