# Falcon::ZeroTrustAssessmentApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_assessment_v1**](ZeroTrustAssessmentApi.md#get_assessment_v1) | **GET** /zero-trust-assessment/entities/assessments/v1 | Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID). |
| [**get_assessments_by_score_v1**](ZeroTrustAssessmentApi.md#get_assessments_by_score_v1) | **GET** /zero-trust-assessment/queries/assessments/v1 | Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores. |
| [**get_audit_v1**](ZeroTrustAssessmentApi.md#get_audit_v1) | **GET** /zero-trust-assessment/entities/audit/v1 | Get the Zero Trust Assessment audit report for one customer ID (CID). |


## get_assessment_v1

> <DomainAssessmentsResponse> get_assessment_v1(ids)

Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assessments_by_score_v1

> <DomainAssessmentsByScoreResponse> get_assessments_by_score_v1(filter, opts)

Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.

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

api_instance = Falcon::ZeroTrustAssessmentApi.new
filter = 'filter_example' # String | FQL query specifying the filter score.
opts = {
  limit: 56, # Integer | The number of scores to return in this response (min: 1, max: 1000, default: 100). Use with the `after` parameter to manage pagination of results.
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  sort: 'sort_example' # String | Sort accounts by their properties. A single sort field is allowed. Defaults to ascending. Supported sort option include:  <ul><li>score|desc</li><li>score|asc</li></ul>
}

begin
  # Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.
  result = api_instance.get_assessments_by_score_v1(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_assessments_by_score_v1: #{e}"
end
```

#### Using the get_assessments_by_score_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAssessmentsByScoreResponse>, Integer, Hash)> get_assessments_by_score_v1_with_http_info(filter, opts)

```ruby
begin
  # Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.
  data, status_code, headers = api_instance.get_assessments_by_score_v1_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAssessmentsByScoreResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_assessments_by_score_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying the filter score. |  |
| **limit** | **Integer** | The number of scores to return in this response (min: 1, max: 1000, default: 100). Use with the &#x60;after&#x60; parameter to manage pagination of results. | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **sort** | **String** | Sort accounts by their properties. A single sort field is allowed. Defaults to ascending. Supported sort option include:  &lt;ul&gt;&lt;li&gt;score|desc&lt;/li&gt;&lt;li&gt;score|asc&lt;/li&gt;&lt;/ul&gt; | [optional][default to &#39;score&#39;] |

### Return type

[**DomainAssessmentsByScoreResponse**](DomainAssessmentsByScoreResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_v1

> <DomainAuditResponse> get_audit_v1

Get the Zero Trust Assessment audit report for one customer ID (CID).

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

api_instance = Falcon::ZeroTrustAssessmentApi.new

begin
  # Get the Zero Trust Assessment audit report for one customer ID (CID).
  result = api_instance.get_audit_v1
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_audit_v1: #{e}"
end
```

#### Using the get_audit_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAuditResponse>, Integer, Hash)> get_audit_v1_with_http_info

```ruby
begin
  # Get the Zero Trust Assessment audit report for one customer ID (CID).
  data, status_code, headers = api_instance.get_audit_v1_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAuditResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ZeroTrustAssessmentApi->get_audit_v1_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DomainAuditResponse**](DomainAuditResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

