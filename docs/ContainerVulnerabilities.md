# Falcon::ContainerVulnerabilities

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_combined_vulnerabilities**](ContainerVulnerabilities.md#read_combined_vulnerabilities) | **GET** /container-security/combined/vulnerabilities/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_combined_vulnerabilities_details**](ContainerVulnerabilities.md#read_combined_vulnerabilities_details) | **GET** /container-security/combined/vulnerabilities/details/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_combined_vulnerabilities_info**](ContainerVulnerabilities.md#read_combined_vulnerabilities_info) | **GET** /container-security/combined/vulnerabilities/info/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerabilities_by_image_count**](ContainerVulnerabilities.md#read_vulnerabilities_by_image_count) | **GET** /container-security/combined/vulnerabilities/by-image-count/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerabilities_publication_date**](ContainerVulnerabilities.md#read_vulnerabilities_publication_date) | **GET** /container-security/combined/vulnerabilities/by-published-date/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerability_count**](ContainerVulnerabilities.md#read_vulnerability_count) | **GET** /container-security/aggregates/vulnerabilities/count/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerability_count_by_actively_exploited**](ContainerVulnerabilities.md#read_vulnerability_count_by_actively_exploited) | **GET** /container-security/aggregates/vulnerabilities/count-by-actively-exploited/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerability_count_by_cps_rating**](ContainerVulnerabilities.md#read_vulnerability_count_by_cps_rating) | **GET** /container-security/aggregates/vulnerabilities/count-by-cps-rating/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerability_count_by_cvss_score**](ContainerVulnerabilities.md#read_vulnerability_count_by_cvss_score) | **GET** /container-security/aggregates/vulnerabilities/count-by-cvss-score/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_vulnerability_count_by_severity**](ContainerVulnerabilities.md#read_vulnerability_count_by_severity) | **GET** /container-security/aggregates/vulnerabilities/count-by-severity/v1 | Maximum offset &#x3D; 10000 - limit |


## read_combined_vulnerabilities

> <VulnerabilitiesApiCombinedVulnerability> read_combined_vulnerabilities(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns: - `cps_current_rating` - `cve_id` - `cvss_score` - `description` - `images_impacted` - `packages_impacted` - `severity`
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_combined_vulnerabilities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities: #{e}"
end
```

#### Using the read_combined_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerability>, Integer, Hash)> read_combined_vulnerabilities_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_combined_vulnerabilities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerability>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;cps_current_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;images_impacted&#x60; - &#x60;packages_impacted&#x60; - &#x60;severity&#x60; | [optional] |

### Return type

[**VulnerabilitiesApiCombinedVulnerability**](VulnerabilitiesApiCombinedVulnerability.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_combined_vulnerabilities_details

> <VulnerabilitiesApiCombinedVulnerabilityDetails> read_combined_vulnerabilities_details(id, opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
id = 'id_example' # String | Image UUID
opts = {
  filter: 'filter_example', # String | Filter the vulnerabilities using a query in Falcon Query Language (FQL). Supported vulnerability filter fields: - `cid` - `cps_rating` - `cve_id` - `cvss_score` - `exploited_status_name` - `exploited_status` - `include_base_image_vuln` - `is_zero_day` - `remediation_available` - `severity`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_combined_vulnerabilities_details(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities_details: #{e}"
end
```

#### Using the read_combined_vulnerabilities_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerabilityDetails>, Integer, Hash)> read_combined_vulnerabilities_details_with_http_info(id, opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_combined_vulnerabilities_details_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerabilityDetails>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Image UUID |  |
| **filter** | **String** | Filter the vulnerabilities using a query in Falcon Query Language (FQL). Supported vulnerability filter fields: - &#x60;cid&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;is_zero_day&#x60; - &#x60;remediation_available&#x60; - &#x60;severity&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiCombinedVulnerabilityDetails**](VulnerabilitiesApiCombinedVulnerabilityDetails.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_combined_vulnerabilities_info

> <VulnerabilitiesApiCombinedVulnerabilityInfo> read_combined_vulnerabilities_info(cve_id, opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
cve_id = 'cve_id_example' # String | Vulnerability CVE ID
opts = {
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_combined_vulnerabilities_info(cve_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities_info: #{e}"
end
```

#### Using the read_combined_vulnerabilities_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerabilityInfo>, Integer, Hash)> read_combined_vulnerabilities_info_with_http_info(cve_id, opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_combined_vulnerabilities_info_with_http_info(cve_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerabilityInfo>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_combined_vulnerabilities_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cve_id** | **String** | Vulnerability CVE ID |  |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiCombinedVulnerabilityInfo**](VulnerabilitiesApiCombinedVulnerabilityInfo.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerabilities_by_image_count

> <VulnerabilitiesApiVulnByImageCount> read_vulnerabilities_by_image_count(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `cve_id` - `registry` - `repository` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerabilities_by_image_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerabilities_by_image_count: #{e}"
end
```

#### Using the read_vulnerabilities_by_image_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnByImageCount>, Integer, Hash)> read_vulnerabilities_by_image_count_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerabilities_by_image_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnByImageCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerabilities_by_image_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;cve_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnByImageCount**](VulnerabilitiesApiVulnByImageCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerabilities_publication_date

> <VulnerabilitiesApiVulnByPublication> read_vulnerabilities_publication_date(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `cve_id` - `registry` - `repository` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerabilities_publication_date(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerabilities_publication_date: #{e}"
end
```

#### Using the read_vulnerabilities_publication_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnByPublication>, Integer, Hash)> read_vulnerabilities_publication_date_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerabilities_publication_date_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnByPublication>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerabilities_publication_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;cve_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnByPublication**](VulnerabilitiesApiVulnByPublication.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerability_count

> <VulnerabilitiesApiVulnCount> read_vulnerability_count(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerability_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count: #{e}"
end
```

#### Using the read_vulnerability_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCount>, Integer, Hash)> read_vulnerability_count_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerability_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCount**](VulnerabilitiesApiVulnCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerability_count_by_actively_exploited

> <VulnerabilitiesApiVulnCountByActivelyExploited> read_vulnerability_count_by_actively_exploited(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerability_count_by_actively_exploited(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_actively_exploited: #{e}"
end
```

#### Using the read_vulnerability_count_by_actively_exploited_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByActivelyExploited>, Integer, Hash)> read_vulnerability_count_by_actively_exploited_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerability_count_by_actively_exploited_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByActivelyExploited>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_actively_exploited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCountByActivelyExploited**](VulnerabilitiesApiVulnCountByActivelyExploited.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerability_count_by_cps_rating

> <VulnerabilitiesApiVulnCountByCSPRating> read_vulnerability_count_by_cps_rating(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerability_count_by_cps_rating(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_cps_rating: #{e}"
end
```

#### Using the read_vulnerability_count_by_cps_rating_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByCSPRating>, Integer, Hash)> read_vulnerability_count_by_cps_rating_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerability_count_by_cps_rating_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByCSPRating>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_cps_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCountByCSPRating**](VulnerabilitiesApiVulnCountByCSPRating.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerability_count_by_cvss_score

> <VulnerabilitiesApiVulnCountByCVSSScore> read_vulnerability_count_by_cvss_score(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerability_count_by_cvss_score(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_cvss_score: #{e}"
end
```

#### Using the read_vulnerability_count_by_cvss_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByCVSSScore>, Integer, Hash)> read_vulnerability_count_by_cvss_score_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerability_count_by_cvss_score_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByCVSSScore>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_cvss_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCountByCVSSScore**](VulnerabilitiesApiVulnCountByCVSSScore.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_vulnerability_count_by_severity

> <VulnerabilitiesApiVulnCountBySeverity> read_vulnerability_count_by_severity(opts)

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

api_instance = Falcon::ContainerVulnerabilities.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `base_os` - `cid` - `container_id` - `container_running_status` - `containers_impacted_range` - `cps_rating` - `cve_id` - `cvss_score` - `description` - `exploited_status_name` - `exploited_status` - `fix_status` - `image_digest` - `image_id` - `images_impacted_range` - `include_base_image_vuln` - `package_name_version` - `registry` - `repository` - `severity` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_vulnerability_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_severity: #{e}"
end
```

#### Using the read_vulnerability_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountBySeverity>, Integer, Hash)> read_vulnerability_count_by_severity_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_vulnerability_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountBySeverity>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilities->read_vulnerability_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCountBySeverity**](VulnerabilitiesApiVulnCountBySeverity.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

