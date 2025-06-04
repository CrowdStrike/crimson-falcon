# Falcon::ConfigurationAssessment

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_combined_assessments_query**](ConfigurationAssessment.md#get_combined_assessments_query) | **GET** /configuration-assessment/combined/assessments/v1 | Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria |
| [**get_rule_details**](ConfigurationAssessment.md#get_rule_details) | **GET** /configuration-assessment/entities/rule-details/v1 | Get rules details for provided one or more rule IDs |


## get_combined_assessments_query

> <DomainAPICombinedFindingsResponseV1> get_combined_assessments_query(filter, opts)

Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria

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

api_instance = Falcon::ConfigurationAssessment.new
filter = 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). Wildcards * are unsupported.   Common filter options include:  <ul><li>created_timestamp:>'2019-11-25T22:36:12Z'</li><li>updated_timestamp:>'2019-11-25T22:36:12Z'</li><li>aid:'8e7656b27d8c49a34a1af416424d6231'</li></ul>
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assessment by their properties. Common sort options include:  <ul><li>created_timestamp|desc</li><li>updated_timestamp|asc</li></ul>
  facet: ['inner_example'] # Array<String> | Select various details blocks to be returned for each assessment entity. Supported values:  <ul><li>host</li><li>finding.rule</li><li>finding.evaluation_logic</li></ul>
}

begin
  # Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria
  result = api_instance.get_combined_assessments_query(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessment->get_combined_assessments_query: #{e}"
end
```

#### Using the get_combined_assessments_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPICombinedFindingsResponseV1>, Integer, Hash)> get_combined_assessments_query_with_http_info(filter, opts)

```ruby
begin
  # Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria
  data, status_code, headers = api_instance.get_combined_assessments_query_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPICombinedFindingsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessment->get_combined_assessments_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). Wildcards * are unsupported.   Common filter options include:  &lt;ul&gt;&lt;li&gt;created_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;updated_timestamp:&gt;&#39;2019-11-25T22:36:12Z&#39;&lt;/li&gt;&lt;li&gt;aid:&#39;8e7656b27d8c49a34a1af416424d6231&#39;&lt;/li&gt;&lt;/ul&gt; |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assessment by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;created_timestamp|desc&lt;/li&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **facet** | [**Array&lt;String&gt;**](String.md) | Select various details blocks to be returned for each assessment entity. Supported values:  &lt;ul&gt;&lt;li&gt;host&lt;/li&gt;&lt;li&gt;finding.rule&lt;/li&gt;&lt;li&gt;finding.evaluation_logic&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainAPICombinedFindingsResponseV1**](DomainAPICombinedFindingsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rule_details

> <DomainAPIRuleDetailsResponseV1> get_rule_details(ids)

Get rules details for provided one or more rule IDs

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

api_instance = Falcon::ConfigurationAssessment.new
ids = ['inner_example'] # Array<String> | One or more rules IDs (max: 400)

begin
  # Get rules details for provided one or more rule IDs
  result = api_instance.get_rule_details(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessment->get_rule_details: #{e}"
end
```

#### Using the get_rule_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIRuleDetailsResponseV1>, Integer, Hash)> get_rule_details_with_http_info(ids)

```ruby
begin
  # Get rules details for provided one or more rule IDs
  data, status_code, headers = api_instance.get_rule_details_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIRuleDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling ConfigurationAssessment->get_rule_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more rules IDs (max: 400) |  |

### Return type

[**DomainAPIRuleDetailsResponseV1**](DomainAPIRuleDetailsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

