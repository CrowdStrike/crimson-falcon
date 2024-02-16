# Falcon::ContainerPackagesApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_packages_by_fixable_vuln_count**](ContainerPackagesApi.md#read_packages_by_fixable_vuln_count) | **GET** /container-security/combined/packages/app-by-fixable-vulnerability-count/v1 | Retrieve top x app packages with the most fixable vulnerabilities |
| [**read_packages_by_vuln_count**](ContainerPackagesApi.md#read_packages_by_vuln_count) | **GET** /container-security/combined/packages/by-vulnerability-count/v1 | Retrieve top x packages with the most vulnerabilities |
| [**read_packages_combined**](ContainerPackagesApi.md#read_packages_combined) | **GET** /container-security/combined/packages/v1 | Retrieve packages identified by the provided filter criteria |
| [**read_packages_combined_export**](ContainerPackagesApi.md#read_packages_combined_export) | **GET** /container-security/combined/packages/export/v1 | Retrieve packages identified by the provided filter criteria for the purpose of export |
| [**read_packages_count_by_zero_day**](ContainerPackagesApi.md#read_packages_count_by_zero_day) | **GET** /container-security/aggregates/packages/count-by-zero-day/v1 | Retrieve packages count affected by zero day vulnerabilities |


## read_packages_by_fixable_vuln_count

> <PackagesApiPackagesByVulnCount> read_packages_by_fixable_vuln_count(opts)

Retrieve top x app packages with the most fixable vulnerabilities

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

api_instance = Falcon::ContainerPackagesApi.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve top x app packages with the most fixable vulnerabilities
  result = api_instance.read_packages_by_fixable_vuln_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_by_fixable_vuln_count: #{e}"
end
```

#### Using the read_packages_by_fixable_vuln_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiPackagesByVulnCount>, Integer, Hash)> read_packages_by_fixable_vuln_count_with_http_info(opts)

```ruby
begin
  # Retrieve top x app packages with the most fixable vulnerabilities
  data, status_code, headers = api_instance.read_packages_by_fixable_vuln_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiPackagesByVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_by_fixable_vuln_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Retrieve top x packages with the most vulnerabilities

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

api_instance = Falcon::ContainerPackagesApi.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve top x packages with the most vulnerabilities
  result = api_instance.read_packages_by_vuln_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_by_vuln_count: #{e}"
end
```

#### Using the read_packages_by_vuln_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiPackagesByVulnCount>, Integer, Hash)> read_packages_by_vuln_count_with_http_info(opts)

```ruby
begin
  # Retrieve top x packages with the most vulnerabilities
  data, status_code, headers = api_instance.read_packages_by_vuln_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiPackagesByVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_by_vuln_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Retrieve packages identified by the provided filter criteria

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

api_instance = Falcon::ContainerPackagesApi.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count
  only_zero_day_affected: true, # Boolean | (true/false) load zero day affected packages, default is false
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [license package_name_version type]
}

begin
  # Retrieve packages identified by the provided filter criteria
  result = api_instance.read_packages_combined(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_combined: #{e}"
end
```

#### Using the read_packages_combined_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiCombinedPackage>, Integer, Hash)> read_packages_combined_with_http_info(opts)

```ruby
begin
  # Retrieve packages identified by the provided filter criteria
  data, status_code, headers = api_instance.read_packages_combined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiCombinedPackage>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_combined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count | [optional] |
| **only_zero_day_affected** | **Boolean** | (true/false) load zero day affected packages, default is false | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [license package_name_version type] | [optional] |

### Return type

[**PackagesApiCombinedPackage**](PackagesApiCombinedPackage.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_packages_combined_export

> <PackagesApiCombinedPackageExport> read_packages_combined_export(opts)

Retrieve packages identified by the provided filter criteria for the purpose of export

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

api_instance = Falcon::ContainerPackagesApi.new
opts = {
  filter: 'filter_example', # String | Filter packages using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count
  only_zero_day_affected: true, # Boolean | (true/false) load zero day affected packages, default is false
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [license package_name_version type]
}

begin
  # Retrieve packages identified by the provided filter criteria for the purpose of export
  result = api_instance.read_packages_combined_export(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_combined_export: #{e}"
end
```

#### Using the read_packages_combined_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PackagesApiCombinedPackageExport>, Integer, Hash)> read_packages_combined_export_with_http_info(opts)

```ruby
begin
  # Retrieve packages identified by the provided filter criteria for the purpose of export
  data, status_code, headers = api_instance.read_packages_combined_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PackagesApiCombinedPackageExport>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_combined_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,cveid,fix_status,image_digest,license,package_name_version,severity,type,vulnerability_count | [optional] |
| **only_zero_day_affected** | **Boolean** | (true/false) load zero day affected packages, default is false | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [license package_name_version type] | [optional] |

### Return type

[**PackagesApiCombinedPackageExport**](PackagesApiCombinedPackageExport.md)

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

api_instance = Falcon::ContainerPackagesApi.new
opts = {
  filter: 'filter_example' # String | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid
}

begin
  # Retrieve packages count affected by zero day vulnerabilities
  result = api_instance.read_packages_count_by_zero_day(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerPackagesApi->read_packages_count_by_zero_day: #{e}"
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
  puts "Error when calling ContainerPackagesApi->read_packages_count_by_zero_day_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter packages using a query in Falcon Query Language (FQL). Supported filters: cid | [optional] |

### Return type

[**CommonCountResponse**](CommonCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

