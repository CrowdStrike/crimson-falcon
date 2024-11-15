# Falcon::SpotlightVulnerabilities

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_query_vulnerabilities**](SpotlightVulnerabilities.md#combined_query_vulnerabilities) | **GET** /spotlight/combined/vulnerabilities/v1 | Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria |
| [**get_remediations_v2**](SpotlightVulnerabilities.md#get_remediations_v2) | **GET** /spotlight/entities/remediations/v2 | Get details on remediation by providing one or more IDs |
| [**get_vulnerabilities_0**](SpotlightVulnerabilities.md#get_vulnerabilities_0) | **GET** /spotlight/entities/vulnerabilities/v2 | Get details on vulnerabilities by providing one or more IDs |
| [**query_vulnerabilities_0**](SpotlightVulnerabilities.md#query_vulnerabilities_0) | **GET** /spotlight/queries/vulnerabilities/v1 | Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria |


## combined_query_vulnerabilities

> <DomainSPAPICombinedVulnerabilitiesResponse> combined_query_vulnerabilities(filter, opts)

Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria

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

api_instance = Falcon::SpotlightVulnerabilities.new
filter = 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (>, <, >=, <=): created_timestamp, closed_timestamp, updated_timestamp    
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort vulnerabilities by their properties. Common sort options include:  <ul><li>updated_timestamp|asc</li><li>closed_timestamp|asc</li></ul>
  facet: ['inner_example'] # Array<String> | Select various details blocks to be returned for each vulnerability entity. Supported values:  <ul><li>host_info</li><li>remediation</li><li>cve</li><li>evaluation_logic</li></ul>
}

begin
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria
  result = api_instance.combined_query_vulnerabilities(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->combined_query_vulnerabilities: #{e}"
end
```

#### Using the combined_query_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPICombinedVulnerabilitiesResponse>, Integer, Hash)> combined_query_vulnerabilities_with_http_info(filter, opts)

```ruby
begin
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria
  data, status_code, headers = api_instance.combined_query_vulnerabilities_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPICombinedVulnerabilitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->combined_query_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp     |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 5000). Use with the after parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort vulnerabilities by their properties. Common sort options include:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **facet** | [**Array&lt;String&gt;**](String.md) | Select various details blocks to be returned for each vulnerability entity. Supported values:  &lt;ul&gt;&lt;li&gt;host_info&lt;/li&gt;&lt;li&gt;remediation&lt;/li&gt;&lt;li&gt;cve&lt;/li&gt;&lt;li&gt;evaluation_logic&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainSPAPICombinedVulnerabilitiesResponse**](DomainSPAPICombinedVulnerabilitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_remediations_v2

> <DomainSPAPIRemediationEntitiesResponseV2> get_remediations_v2(ids)

Get details on remediation by providing one or more IDs

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

api_instance = Falcon::SpotlightVulnerabilities.new
ids = ['inner_example'] # Array<String> | One or more remediation IDs

begin
  # Get details on remediation by providing one or more IDs
  result = api_instance.get_remediations_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->get_remediations_v2: #{e}"
end
```

#### Using the get_remediations_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIRemediationEntitiesResponseV2>, Integer, Hash)> get_remediations_v2_with_http_info(ids)

```ruby
begin
  # Get details on remediation by providing one or more IDs
  data, status_code, headers = api_instance.get_remediations_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIRemediationEntitiesResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->get_remediations_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more remediation IDs |  |

### Return type

[**DomainSPAPIRemediationEntitiesResponseV2**](DomainSPAPIRemediationEntitiesResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vulnerabilities_0

> <DomainSPAPIVulnerabilitiesEntitiesResponseV2> get_vulnerabilities_0(ids)

Get details on vulnerabilities by providing one or more IDs

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

api_instance = Falcon::SpotlightVulnerabilities.new
ids = ['inner_example'] # Array<String> | One or more vulnerability IDs (max: 400). Find vulnerability IDs with GET /spotlight/queries/vulnerabilities/v1

begin
  # Get details on vulnerabilities by providing one or more IDs
  result = api_instance.get_vulnerabilities_0(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->get_vulnerabilities_0: #{e}"
end
```

#### Using the get_vulnerabilities_0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIVulnerabilitiesEntitiesResponseV2>, Integer, Hash)> get_vulnerabilities_0_with_http_info(ids)

```ruby
begin
  # Get details on vulnerabilities by providing one or more IDs
  data, status_code, headers = api_instance.get_vulnerabilities_0_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIVulnerabilitiesEntitiesResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->get_vulnerabilities_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more vulnerability IDs (max: 400). Find vulnerability IDs with GET /spotlight/queries/vulnerabilities/v1 |  |

### Return type

[**DomainSPAPIVulnerabilitiesEntitiesResponseV2**](DomainSPAPIVulnerabilitiesEntitiesResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_vulnerabilities_0

> <DomainSPAPIQueryResponse> query_vulnerabilities_0(filter, opts)

Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria

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

api_instance = Falcon::SpotlightVulnerabilities.new
filter = 'filter_example' # String | Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (>, <, >=, <=): created_timestamp, closed_timestamp, updated_timestamp    
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 400). Use with the after parameter to manage pagination of results.
  sort: 'sort_example' # String | Sort vulnerabilities by their properties. Available sort options:  <ul><li>updated_timestamp|asc/desc</li><li>closed_timestamp|asc</li><li>updated_timestamp|asc/desc</li></ul>. Can be used in a format <field>|asc for ascending order or <field>|desc for descending order.
}

begin
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria
  result = api_instance.query_vulnerabilities_0(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->query_vulnerabilities_0: #{e}"
end
```

#### Using the query_vulnerabilities_0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSPAPIQueryResponse>, Integer, Hash)> query_vulnerabilities_0_with_http_info(filter, opts)

```ruby
begin
  # Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria
  data, status_code, headers = api_instance.query_vulnerabilities_0_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSPAPIQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SpotlightVulnerabilities->query_vulnerabilities_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). Wildcards * and empty filter values are unsupported.    Available filter fields that supports match (~): N/A    Available filter fields that supports exact match: aid, cid, last_seen_within, status, cve.id, cve.is_cisa_kev, cve.remediation_level, cve.cps_rating, cve.exprt_rating, cve.exploit_status_to_include, cve.severity, cve.types, host_info.asset_criticality, host_info.asset_roles, host_info.internet_exposure, host_info.tags, host_info.groups, host_info.product_type_desc, host_info.platform_name, suppression_info.is_suppressed, suppression_info.reason    Available filter fields that supports wildcard (*): N/A    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): created_timestamp, closed_timestamp, updated_timestamp     |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 400). Use with the after parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort vulnerabilities by their properties. Available sort options:  &lt;ul&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;li&gt;closed_timestamp|asc&lt;/li&gt;&lt;li&gt;updated_timestamp|asc/desc&lt;/li&gt;&lt;/ul&gt;. Can be used in a format &lt;field&gt;|asc for ascending order or &lt;field&gt;|desc for descending order. | [optional] |

### Return type

[**DomainSPAPIQueryResponse**](DomainSPAPIQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

