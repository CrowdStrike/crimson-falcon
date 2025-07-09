# Falcon::ServerlessVulnerabilities

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_combined_vulnerabilities_sarif**](ServerlessVulnerabilities.md#get_combined_vulnerabilities_sarif) | **GET** /lambdas/combined/vulnerabilities/sarif/v1 | Retrieve all lambda vulnerabilities that match the given query and return in the SARIF format |


## get_combined_vulnerabilities_sarif

> <VulnerabilitiesVulnerabilityEntitySARIFResponse> get_combined_vulnerabilities_sarif(opts)

Retrieve all lambda vulnerabilities that match the given query and return in the SARIF format

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

api_instance = Falcon::ServerlessVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter lambda vulnerabilities using a query in Falcon Query Language (FQL).Supported filters:  application_name,application_name_version,cid,cloud_account_id,cloud_account_name,cloud_provider,cve_id,cvss_base_score,exprt_rating,first_seen_timestamp,function_name,function_resource_id,is_supported,is_valid_asset_id,layer,region,runtime,severity,timestamp,type
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [application_name application_name_version cid cloud_account_id cloud_account_name cloud_provider cve_id cvss_base_score exprt_rating first_seen_timestamp function_resource_id is_supported layer region runtime severity timestamp type]
}

begin
  # Retrieve all lambda vulnerabilities that match the given query and return in the SARIF format
  result = api_instance.get_combined_vulnerabilities_sarif(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ServerlessVulnerabilities->get_combined_vulnerabilities_sarif: #{e}"
end
```

#### Using the get_combined_vulnerabilities_sarif_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesVulnerabilityEntitySARIFResponse>, Integer, Hash)> get_combined_vulnerabilities_sarif_with_http_info(opts)

```ruby
begin
  # Retrieve all lambda vulnerabilities that match the given query and return in the SARIF format
  data, status_code, headers = api_instance.get_combined_vulnerabilities_sarif_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesVulnerabilityEntitySARIFResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ServerlessVulnerabilities->get_combined_vulnerabilities_sarif_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter lambda vulnerabilities using a query in Falcon Query Language (FQL).Supported filters:  application_name,application_name_version,cid,cloud_account_id,cloud_account_name,cloud_provider,cve_id,cvss_base_score,exprt_rating,first_seen_timestamp,function_name,function_resource_id,is_supported,is_valid_asset_id,layer,region,runtime,severity,timestamp,type | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [application_name application_name_version cid cloud_account_id cloud_account_name cloud_provider cve_id cvss_base_score exprt_rating first_seen_timestamp function_resource_id is_supported layer region runtime severity timestamp type] | [optional] |

### Return type

[**VulnerabilitiesVulnerabilityEntitySARIFResponse**](VulnerabilitiesVulnerabilityEntitySARIFResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

