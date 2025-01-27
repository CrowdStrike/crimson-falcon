# Falcon::ContainerPackages

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_packages_by_fixable_vuln_count**](ContainerPackages.md#read_packages_by_fixable_vuln_count) | **GET** /container-security/combined/packages/app-by-fixable-vulnerability-count/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_packages_by_vuln_count**](ContainerPackages.md#read_packages_by_vuln_count) | **GET** /container-security/combined/packages/by-vulnerability-count/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_packages_combined**](ContainerPackages.md#read_packages_combined) | **GET** /container-security/combined/packages/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_packages_combined_export**](ContainerPackages.md#read_packages_combined_export) | **GET** /container-security/combined/packages/export/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_packages_combined_v2**](ContainerPackages.md#read_packages_combined_v2) | **GET** /container-security/combined/packages/v2 | Maximum offset &#x3D; 10000 - limit |
| [**read_packages_count_by_zero_day**](ContainerPackages.md#read_packages_count_by_zero_day) | **GET** /container-security/aggregates/packages/count-by-zero-day/v1 | Retrieve packages count affected by zero day vulnerabilities |


## read_packages_by_fixable_vuln_count

> <PackagesApiPackagesByVulnCount> read_packages_by_fixable_vuln_count(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `cid` - `container_id` - `cveid` - `fix_status` - `image_digest` - `license` - `package_name_version` - `severity` - `type` - `vulnerability_count`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_packages_by_fixable_vuln_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_by_fixable_vuln_count: #{e}"
end
```

#### Using the read_packages_by_fixable_vuln_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiPackagesByVulnCount>, Integer, Hash)> read_packages_by_fixable_vuln_count_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_packages_by_fixable_vuln_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiPackagesByVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_by_fixable_vuln_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;cveid&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;severity&#x60; - &#x60;type&#x60; - &#x60;vulnerability_count&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**PackagesApiPackagesByVulnCount**](PackagesApiPackagesByVulnCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_by_vuln_count

> <PackagesApiPackagesByVulnCount> read_packages_by_vuln_count(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `cid` - `container_id` - `cveid` - `fix_status` - `image_digest` - `license` - `package_name_version` - `severity` - `type` - `vulnerability_count`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_packages_by_vuln_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_by_vuln_count: #{e}"
end
```

#### Using the read_packages_by_vuln_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiPackagesByVulnCount>, Integer, Hash)> read_packages_by_vuln_count_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_packages_by_vuln_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiPackagesByVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_by_vuln_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;cveid&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;severity&#x60; - &#x60;type&#x60; - &#x60;vulnerability_count&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**PackagesApiPackagesByVulnCount**](PackagesApiPackagesByVulnCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_combined

> <PackagesApiCombinedPackage> read_packages_combined(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `cid` - `container_id` - `cveid` - `fix_status` - `image_digest` - `license` - `package_name_version` - `severity` - `type` - `vulnerability_count`
  only_zero_day_affected: true, # Boolean | (true/false) load zero day affected packages
  sort: 'sort_example', # String | The fields to sort the records on. Supported columns: - `license` - `package_name_version` - `type`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_packages_combined(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined: #{e}"
end
```

#### Using the read_packages_combined_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiCombinedPackage>, Integer, Hash)> read_packages_combined_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_packages_combined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiCombinedPackage>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;cveid&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;severity&#x60; - &#x60;type&#x60; - &#x60;vulnerability_count&#x60; | [optional] |
| **only_zero_day_affected** | **Boolean** | (true/false) load zero day affected packages | [optional][default to false] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;type&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**PackagesApiCombinedPackage**](PackagesApiCombinedPackage.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_combined_export

> <PackagesApiCombinedPackageExport> read_packages_combined_export(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `cid` - `container_id` - `cveid` - `fix_status` - `image_digest` - `license` - `package_name_version` - `severity` - `type` - `vulnerability_count`
  only_zero_day_affected: true, # Boolean | (true/false) load zero day affected packages
  sort: 'sort_example', # String | The fields to sort the records on. Supported columns: - `license` - `package_name_version` - `type`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_packages_combined_export(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined_export: #{e}"
end
```

#### Using the read_packages_combined_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiCombinedPackageExport>, Integer, Hash)> read_packages_combined_export_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_packages_combined_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiCombinedPackageExport>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;cveid&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;severity&#x60; - &#x60;type&#x60; - &#x60;vulnerability_count&#x60; | [optional] |
| **only_zero_day_affected** | **Boolean** | (true/false) load zero day affected packages | [optional][default to false] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;type&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**PackagesApiCombinedPackageExport**](PackagesApiCombinedPackageExport.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_combined_v2

> <PackagesApiCombinedPackageV2> read_packages_combined_v2(opts)

Maximum offset = 10000 - limit

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `cid` - `container_id` - `cveid` - `fix_status` - `image_digest` - `license` - `package_name_version` - `severity` - `type` - `vulnerability_count`
  only_zero_day_affected: true, # Boolean | (true/false) load zero day affected packages
  sort: 'sort_example', # String | The fields to sort the records on. Supported columns: - `license` - `package_name_version` - `type`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_packages_combined_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined_v2: #{e}"
end
```

#### Using the read_packages_combined_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiCombinedPackageV2>, Integer, Hash)> read_packages_combined_v2_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_packages_combined_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiCombinedPackageV2>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_combined_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;cveid&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;severity&#x60; - &#x60;type&#x60; - &#x60;vulnerability_count&#x60; | [optional] |
| **only_zero_day_affected** | **Boolean** | (true/false) load zero day affected packages | [optional][default to false] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;license&#x60; - &#x60;package_name_version&#x60; - &#x60;type&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**PackagesApiCombinedPackageV2**](PackagesApiCombinedPackageV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_count_by_zero_day

> <CommonCountResponse> read_packages_count_by_zero_day(opts)

Retrieve packages count affected by zero day vulnerabilities

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

api_instance = Falcon::ContainerPackages.new
opts = {
  filter: 'filter_example' # String | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - `cid`
}

begin
  # Retrieve packages count affected by zero day vulnerabilities
  result = api_instance.read_packages_count_by_zero_day(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_count_by_zero_day: #{e}"
end
```

#### Using the read_packages_count_by_zero_day_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommonCountResponse>, Integer, Hash)> read_packages_count_by_zero_day_with_http_info(opts)

```ruby
begin
  # Retrieve packages count affected by zero day vulnerabilities
  data, status_code, headers = api_instance.read_packages_count_by_zero_day_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommonCountResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackages->read_packages_count_by_zero_day_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; | [optional] |

### Return type

[**CommonCountResponse**](CommonCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

