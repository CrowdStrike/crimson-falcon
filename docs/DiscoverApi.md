# Falcon::DiscoverApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_accounts**](DiscoverApi.md#get_accounts) | **GET** /discover/entities/accounts/v1 | Get details on accounts by providing one or more IDs. |
| [**get_applications**](DiscoverApi.md#get_applications) | **GET** /discover/entities/applications/v1 | Get details on applications by providing one or more IDs. |
| [**get_hosts**](DiscoverApi.md#get_hosts) | **GET** /discover/entities/hosts/v1 | Get details on assets by providing one or more IDs. |
| [**get_logins**](DiscoverApi.md#get_logins) | **GET** /discover/entities/logins/v1 | Get details on logins by providing one or more IDs. |
| [**query_accounts**](DiscoverApi.md#query_accounts) | **GET** /discover/queries/accounts/v1 | Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria. |
| [**query_active_discovery_networks**](DiscoverApi.md#query_active_discovery_networks) | **GET** /discover/queries/active-discovery-networks/v1 | Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria. |
| [**query_active_discovery_rules**](DiscoverApi.md#query_active_discovery_rules) | **GET** /discover/queries/active-discovery-rules/v1 | Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria. |
| [**query_active_discovery_scanners**](DiscoverApi.md#query_active_discovery_scanners) | **GET** /discover/queries/active-discovery-scanners/v1 | Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria. |
| [**query_active_discovery_scans**](DiscoverApi.md#query_active_discovery_scans) | **GET** /discover/queries/active-discovery-scans/v1 | Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria. |
| [**query_applications**](DiscoverApi.md#query_applications) | **GET** /discover/queries/applications/v1 | Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria. |
| [**query_hosts**](DiscoverApi.md#query_hosts) | **GET** /discover/queries/hosts/v1 | Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria. |
| [**query_logins**](DiscoverApi.md#query_logins) | **GET** /discover/queries/logins/v1 | Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria. |


## get_accounts

> <DomainDiscoverAPIAccountEntitiesResponse> get_accounts(ids)

Get details on accounts by providing one or more IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
ids = ['inner_example'] # Array<String> | One or more account IDs (max: 100). Find account IDs with GET `/discover/queries/accounts/v1`

begin
  # Get details on accounts by providing one or more IDs.
  result = api_instance.get_accounts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_accounts: #{e}"
end
```

#### Using the get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIAccountEntitiesResponse>, Integer, Hash)> get_accounts_with_http_info(ids)

```ruby
begin
  # Get details on accounts by providing one or more IDs.
  data, status_code, headers = api_instance.get_accounts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIAccountEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more account IDs (max: 100). Find account IDs with GET &#x60;/discover/queries/accounts/v1&#x60; |  |

### Return type

[**DomainDiscoverAPIAccountEntitiesResponse**](DomainDiscoverAPIAccountEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applications

> <DomainDiscoverAPIApplicationEntitiesResponse> get_applications(ids)

Get details on applications by providing one or more IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
ids = ['inner_example'] # Array<String> | The IDs of applications to retrieve. (Min: 1, Max: 100)

begin
  # Get details on applications by providing one or more IDs.
  result = api_instance.get_applications(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_applications: #{e}"
end
```

#### Using the get_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIApplicationEntitiesResponse>, Integer, Hash)> get_applications_with_http_info(ids)

```ruby
begin
  # Get details on applications by providing one or more IDs.
  data, status_code, headers = api_instance.get_applications_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIApplicationEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of applications to retrieve. (Min: 1, Max: 100) |  |

### Return type

[**DomainDiscoverAPIApplicationEntitiesResponse**](DomainDiscoverAPIApplicationEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hosts

> <DomainDiscoverAPIHostEntitiesResponse> get_hosts(ids)

Get details on assets by providing one or more IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100). Find asset IDs with GET `/discover/queries/hosts/v1`

begin
  # Get details on assets by providing one or more IDs.
  result = api_instance.get_hosts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_hosts: #{e}"
end
```

#### Using the get_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPIHostEntitiesResponse>, Integer, Hash)> get_hosts_with_http_info(ids)

```ruby
begin
  # Get details on assets by providing one or more IDs.
  data, status_code, headers = api_instance.get_hosts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPIHostEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/discover/queries/hosts/v1&#x60; |  |

### Return type

[**DomainDiscoverAPIHostEntitiesResponse**](DomainDiscoverAPIHostEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logins

> <DomainDiscoverAPILoginEntitiesResponse> get_logins(ids)

Get details on logins by providing one or more IDs.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
ids = ['inner_example'] # Array<String> | One or more login IDs (max: 100). Find login IDs with GET `/discover/queries/logins/v1`

begin
  # Get details on logins by providing one or more IDs.
  result = api_instance.get_logins(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_logins: #{e}"
end
```

#### Using the get_logins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPILoginEntitiesResponse>, Integer, Hash)> get_logins_with_http_info(ids)

```ruby
begin
  # Get details on logins by providing one or more IDs.
  data, status_code, headers = api_instance.get_logins_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPILoginEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->get_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more login IDs (max: 100). Find login IDs with GET &#x60;/discover/queries/logins/v1&#x60; |  |

### Return type

[**DomainDiscoverAPILoginEntitiesResponse**](DomainDiscoverAPILoginEntitiesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_accounts

> <MsaQueryResponse> query_accounts(opts)

Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort accounts by their properties. A single sort field is allowed. Common sort options include:  <ul><li>username|asc</li><li>last_failed_login_timestamp|desc</li></ul>
  filter: 'filter_example' # String | Filter accounts using an FQL query. Common filter options include:  <ul><li>account_type:'Local'</li><li>admin_privileges:'Yes'</li><li>first_seen_timestamp:<'now-7d'</li><li>last_successful_login_type:'Terminal server'</li></ul>
}

begin
  # Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.
  result = api_instance.query_accounts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_accounts: #{e}"
end
```

#### Using the query_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_accounts_with_http_info(opts)

```ruby
begin
  # Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort accounts by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;username|asc&lt;/li&gt;&lt;li&gt;last_failed_login_timestamp|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter accounts using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;Yes&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;last_successful_login_type:&#39;Terminal server&#39;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_active_discovery_networks

> <MsaspecQueryResponse> query_active_discovery_networks(opts)

Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  x_cs_useruuid: 'x_cs_useruuid_example', # String | User UUID
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of active discovery network ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort active discovery networks by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for active discovery networks in your environment by providing an FQL filter.
}

begin
  # Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria.
  result = api_instance.query_active_discovery_networks(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_networks: #{e}"
end
```

#### Using the query_active_discovery_networks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_active_discovery_networks_with_http_info(opts)

```ruby
begin
  # Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_active_discovery_networks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_networks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_cs_useruuid** | **String** | User UUID | [optional] |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of active discovery network ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort active discovery networks by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for active discovery networks in your environment by providing an FQL filter. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_active_discovery_rules

> <MsaspecQueryResponse> query_active_discovery_rules(opts)

Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  x_cs_useruuid: 'x_cs_useruuid_example', # String | User UUID
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of active discovery rule ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort active discovery rules by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for active discovery rules in your environment by providing an FQL filter.
}

begin
  # Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria.
  result = api_instance.query_active_discovery_rules(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_rules: #{e}"
end
```

#### Using the query_active_discovery_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_active_discovery_rules_with_http_info(opts)

```ruby
begin
  # Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_active_discovery_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_cs_useruuid** | **String** | User UUID | [optional] |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of active discovery rule ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort active discovery rules by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for active discovery rules in your environment by providing an FQL filter. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_active_discovery_scanners

> <MsaspecQueryResponse> query_active_discovery_scanners(opts)

Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  x_cs_useruuid: 'x_cs_useruuid_example', # String | User UUID
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of active discovery scanner ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort active discovery scanners by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for active discovery scanners in your environment by providing an FQL filter.
}

begin
  # Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria.
  result = api_instance.query_active_discovery_scanners(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_scanners: #{e}"
end
```

#### Using the query_active_discovery_scanners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_active_discovery_scanners_with_http_info(opts)

```ruby
begin
  # Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_active_discovery_scanners_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_scanners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_cs_useruuid** | **String** | User UUID | [optional] |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of active discovery scanner ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort active discovery scanners by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for active discovery scanners in your environment by providing an FQL filter. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_active_discovery_scans

> <MsaspecQueryResponse> query_active_discovery_scans(opts)

Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  x_cs_useruuid: 'x_cs_useruuid_example', # String | User UUID
  offset: 56, # Integer | The index of the starting resource.
  limit: 56, # Integer | The number of active discovery scan ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort active discovery scans by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for active discovery scans in your environment by providing an FQL filter.
}

begin
  # Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria.
  result = api_instance.query_active_discovery_scans(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_scans: #{e}"
end
```

#### Using the query_active_discovery_scans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_active_discovery_scans_with_http_info(opts)

```ruby
begin
  # Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_active_discovery_scans_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_active_discovery_scans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_cs_useruuid** | **String** | User UUID | [optional] |
| **offset** | **Integer** | The index of the starting resource. | [optional] |
| **limit** | **Integer** | The number of active discovery scan ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort active discovery scans by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for active discovery scans in your environment by providing an FQL filter. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_applications

> <MsaspecQueryResponse> query_applications(opts)

Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of application ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort applications by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for applications in your environment by providing an FQL filter.
}

begin
  # Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.
  result = api_instance.query_applications(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_applications: #{e}"
end
```

#### Using the query_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_applications_with_http_info(opts)

```ruby
begin
  # Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of application ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort applications by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for applications in your environment by providing an FQL filter. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_hosts

> <MsaspecQueryResponse> query_hosts(opts)

Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assets by their properties. A single sort field is allowed. Common sort options include:  <ul><li>hostname|asc</li><li>product_type_desc|desc</li></ul>
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:  <ul><li>entity_type:'managed'</li><li>product_type_desc:'Workstation'</li><li>platform_name:'Windows'</li><li>last_seen_timestamp:>'now-7d'</li></ul>
}

begin
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  result = api_instance.query_hosts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_hosts: #{e}"
end
```

#### Using the query_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_hosts_with_http_info(opts)

```ruby
begin
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_hosts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_logins

> <MsaQueryResponse> query_logins(opts)

Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.

### Examples

```ruby
require 'time'
require 'crimson-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::DiscoverApi.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort logins by their properties. A single sort field is allowed. Common sort options include:  <ul><li>account_name|asc</li><li>login_timestamp|desc</li></ul>
  filter: 'filter_example' # String | Filter logins using an FQL query. Common filter options include:  <ul><li>account_type:'Local'</li><li>login_type:'Interactive'</li><li>first_seen_timestamp:<'now-7d'</li><li>admin_privileges:'No'</li></ul>
}

begin
  # Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.
  result = api_instance.query_logins(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_logins: #{e}"
end
```

#### Using the query_logins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_logins_with_http_info(opts)

```ruby
begin
  # Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.
  data, status_code, headers = api_instance.query_logins_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DiscoverApi->query_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort logins by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;account_name|asc&lt;/li&gt;&lt;li&gt;login_timestamp|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter logins using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;login_type:&#39;Interactive&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;No&#39;&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

