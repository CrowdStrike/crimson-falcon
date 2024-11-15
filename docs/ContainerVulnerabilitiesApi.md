# Falcon::ContainerVulnerabilitiesApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**read_combined_vulnerabilities**](ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities) | **GET** /container-security/combined/vulnerabilities/v1 | Retrieve vulnerability and aggregate data filtered by the provided FQL |
| [**read_combined_vulnerabilities_details**](ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities_details) | **GET** /container-security/combined/vulnerabilities/details/v1 | Retrieve vulnerability details related to an image |
| [**read_combined_vulnerabilities_info**](ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities_info) | **GET** /container-security/combined/vulnerabilities/info/v1 | Retrieve vulnerability and package related info for this customer |
| [**read_vulnerabilities_by_image_count**](ContainerVulnerabilitiesApi.md#read_vulnerabilities_by_image_count) | **GET** /container-security/combined/vulnerabilities/by-image-count/v1 | Retrieve top x vulnerabilities with the most impacted images |
| [**read_vulnerabilities_publication_date**](ContainerVulnerabilitiesApi.md#read_vulnerabilities_publication_date) | **GET** /container-security/combined/vulnerabilities/by-published-date/v1 | Retrieve top x vulnerabilities with the most recent publication date |
| [**read_vulnerability_count**](ContainerVulnerabilitiesApi.md#read_vulnerability_count) | **GET** /container-security/aggregates/vulnerabilities/count/v1 | Aggregate count of vulnerabilities |
| [**read_vulnerability_count_by_actively_exploited**](ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_actively_exploited) | **GET** /container-security/aggregates/vulnerabilities/count-by-actively-exploited/v1 | Aggregate count of vulnerabilities grouped by actively exploited |
| [**read_vulnerability_count_by_cps_rating**](ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_cps_rating) | **GET** /container-security/aggregates/vulnerabilities/count-by-cps-rating/v1 | Aggregate count of vulnerabilities grouped by csp_rating |
| [**read_vulnerability_count_by_cvss_score**](ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_cvss_score) | **GET** /container-security/aggregates/vulnerabilities/count-by-cvss-score/v1 | Aggregate count of vulnerabilities grouped by cvss score |
| [**read_vulnerability_count_by_severity**](ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_severity) | **GET** /container-security/aggregates/vulnerabilities/count-by-severity/v1 | Aggregate count of vulnerabilities grouped by severity |


## read_combined_vulnerabilities

> <VulnerabilitiesApiCombinedVulnerability> read_combined_vulnerabilities(opts)

Retrieve vulnerability and aggregate data filtered by the provided FQL

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns:  [cps_current_rating cve_id cvss_score description images_impacted packages_impacted severity]
}

begin
  # Retrieve vulnerability and aggregate data filtered by the provided FQL
  result = api_instance.read_combined_vulnerabilities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities: #{e}"
end
```

#### Using the read_combined_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerability>, Integer, Hash)> read_combined_vulnerabilities_with_http_info(opts)

```ruby
begin
  # Retrieve vulnerability and aggregate data filtered by the provided FQL
  data, status_code, headers = api_instance.read_combined_vulnerabilities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerability>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns:  [cps_current_rating cve_id cvss_score description images_impacted packages_impacted severity] | [optional] |

### Return type

[**VulnerabilitiesApiCombinedVulnerability**](VulnerabilitiesApiCombinedVulnerability.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_combined_vulnerabilities_details

> <VulnerabilitiesApiCombinedVulnerabilityDetails> read_combined_vulnerabilities_details(id, opts)

Retrieve vulnerability details related to an image

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
id = 'id_example' # String | Image UUID
opts = {
  filter: 'filter_example', # String | Filter the vulnerabilities using a query in Falcon Query Language (FQL). Supported vulnerability filters: cid,cps_rating,cve_id,cvss_score,exploited_status,exploited_status_name,include_base_image_vuln,is_zero_day,remediation_available,severity
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve vulnerability details related to an image
  result = api_instance.read_combined_vulnerabilities_details(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities_details: #{e}"
end
```

#### Using the read_combined_vulnerabilities_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerabilityDetails>, Integer, Hash)> read_combined_vulnerabilities_details_with_http_info(id, opts)

```ruby
begin
  # Retrieve vulnerability details related to an image
  data, status_code, headers = api_instance.read_combined_vulnerabilities_details_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerabilityDetails>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Image UUID |  |
| **filter** | **String** | Filter the vulnerabilities using a query in Falcon Query Language (FQL). Supported vulnerability filters: cid,cps_rating,cve_id,cvss_score,exploited_status,exploited_status_name,include_base_image_vuln,is_zero_day,remediation_available,severity | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Retrieve vulnerability and package related info for this customer

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
cve_id = 'cve_id_example' # String | Vulnerability CVE ID
opts = {
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve vulnerability and package related info for this customer
  result = api_instance.read_combined_vulnerabilities_info(cve_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities_info: #{e}"
end
```

#### Using the read_combined_vulnerabilities_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiCombinedVulnerabilityInfo>, Integer, Hash)> read_combined_vulnerabilities_info_with_http_info(cve_id, opts)

```ruby
begin
  # Retrieve vulnerability and package related info for this customer
  data, status_code, headers = api_instance.read_combined_vulnerabilities_info_with_http_info(cve_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiCombinedVulnerabilityInfo>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_combined_vulnerabilities_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cve_id** | **String** | Vulnerability CVE ID |  |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Retrieve top x vulnerabilities with the most impacted images

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: cid,cve_id,registry,repository,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve top x vulnerabilities with the most impacted images
  result = api_instance.read_vulnerabilities_by_image_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerabilities_by_image_count: #{e}"
end
```

#### Using the read_vulnerabilities_by_image_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnByImageCount>, Integer, Hash)> read_vulnerabilities_by_image_count_with_http_info(opts)

```ruby
begin
  # Retrieve top x vulnerabilities with the most impacted images
  data, status_code, headers = api_instance.read_vulnerabilities_by_image_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnByImageCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerabilities_by_image_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: cid,cve_id,registry,repository,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Retrieve top x vulnerabilities with the most recent publication date

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: cid,cve_id,registry,repository,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Retrieve top x vulnerabilities with the most recent publication date
  result = api_instance.read_vulnerabilities_publication_date(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerabilities_publication_date: #{e}"
end
```

#### Using the read_vulnerabilities_publication_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnByPublication>, Integer, Hash)> read_vulnerabilities_publication_date_with_http_info(opts)

```ruby
begin
  # Retrieve top x vulnerabilities with the most recent publication date
  data, status_code, headers = api_instance.read_vulnerabilities_publication_date_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnByPublication>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerabilities_publication_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: cid,cve_id,registry,repository,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Aggregate count of vulnerabilities

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Aggregate count of vulnerabilities
  result = api_instance.read_vulnerability_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count: #{e}"
end
```

#### Using the read_vulnerability_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCount>, Integer, Hash)> read_vulnerability_count_with_http_info(opts)

```ruby
begin
  # Aggregate count of vulnerabilities
  data, status_code, headers = api_instance.read_vulnerability_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Aggregate count of vulnerabilities grouped by actively exploited

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Aggregate count of vulnerabilities grouped by actively exploited
  result = api_instance.read_vulnerability_count_by_actively_exploited(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_actively_exploited: #{e}"
end
```

#### Using the read_vulnerability_count_by_actively_exploited_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByActivelyExploited>, Integer, Hash)> read_vulnerability_count_by_actively_exploited_with_http_info(opts)

```ruby
begin
  # Aggregate count of vulnerabilities grouped by actively exploited
  data, status_code, headers = api_instance.read_vulnerability_count_by_actively_exploited_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByActivelyExploited>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_actively_exploited_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Aggregate count of vulnerabilities grouped by csp_rating

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Aggregate count of vulnerabilities grouped by csp_rating
  result = api_instance.read_vulnerability_count_by_cps_rating(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_cps_rating: #{e}"
end
```

#### Using the read_vulnerability_count_by_cps_rating_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByCSPRating>, Integer, Hash)> read_vulnerability_count_by_cps_rating_with_http_info(opts)

```ruby
begin
  # Aggregate count of vulnerabilities grouped by csp_rating
  data, status_code, headers = api_instance.read_vulnerability_count_by_cps_rating_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByCSPRating>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_cps_rating_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Aggregate count of vulnerabilities grouped by cvss score

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Aggregate count of vulnerabilities grouped by cvss score
  result = api_instance.read_vulnerability_count_by_cvss_score(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_cvss_score: #{e}"
end
```

#### Using the read_vulnerability_count_by_cvss_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountByCVSSScore>, Integer, Hash)> read_vulnerability_count_by_cvss_score_with_http_info(opts)

```ruby
begin
  # Aggregate count of vulnerabilities grouped by cvss score
  data, status_code, headers = api_instance.read_vulnerability_count_by_cvss_score_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountByCVSSScore>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_cvss_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
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

Aggregate count of vulnerabilities grouped by severity

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

api_instance = Falcon::ContainerVulnerabilitiesApi.new
opts = {
  filter: 'filter_example', # String | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Aggregate count of vulnerabilities grouped by severity
  result = api_instance.read_vulnerability_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_severity: #{e}"
end
```

#### Using the read_vulnerability_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VulnerabilitiesApiVulnCountBySeverity>, Integer, Hash)> read_vulnerability_count_by_severity_with_http_info(opts)

```ruby
begin
  # Aggregate count of vulnerabilities grouped by severity
  data, status_code, headers = api_instance.read_vulnerability_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VulnerabilitiesApiVulnCountBySeverity>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerVulnerabilitiesApi->read_vulnerability_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filters: base_os,cid,container_id,container_running_status,containers_impacted_range,cps_rating,cve_id,cvss_score,description,exploited_status,exploited_status_name,fix_status,image_digest,image_id,images_impacted_range,include_base_image_vuln,package_name_version,registry,repository,severity,tag | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**VulnerabilitiesApiVulnCountBySeverity**](VulnerabilitiesApiVulnCountBySeverity.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

