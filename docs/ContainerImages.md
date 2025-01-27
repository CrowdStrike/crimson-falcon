# Falcon::ContainerImages

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_image_assessment_history**](ContainerImages.md#aggregate_image_assessment_history) | **GET** /container-security/aggregates/images/assessment-history/v1 | Image assessment history |
| [**aggregate_image_count**](ContainerImages.md#aggregate_image_count) | **GET** /container-security/aggregates/images/count/v1 | Aggregate count of images |
| [**aggregate_image_count_by_base_os**](ContainerImages.md#aggregate_image_count_by_base_os) | **GET** /container-security/aggregates/images/count-by-os-distribution/v1 | Aggregate count of images grouped by Base OS distribution |
| [**aggregate_image_count_by_state**](ContainerImages.md#aggregate_image_count_by_state) | **GET** /container-security/aggregates/images/count-by-state/v1 | Aggregate count of images grouped by state |
| [**combined_base_images**](ContainerImages.md#combined_base_images) | **GET** /container-security/combined/base-images/v1 | Retrieves a list of base images for the provided filter. Maximum page size: 100 |
| [**combined_image_by_vulnerability_count**](ContainerImages.md#combined_image_by_vulnerability_count) | **GET** /container-security/combined/images/by-vulnerability-count/v1 | Retrieve top x images with the most vulnerabilities |
| [**combined_image_detail**](ContainerImages.md#combined_image_detail) | **GET** /container-security/combined/images/detail/v1 | Maximum offset &#x3D; 10000 - limit |
| [**combined_image_issues_summary**](ContainerImages.md#combined_image_issues_summary) | **GET** /container-security/combined/images/issues-summary/v1 | Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities |
| [**combined_image_vulnerability_summary**](ContainerImages.md#combined_image_vulnerability_summary) | **GET** /container-security/combined/images/vulnerabilities-summary/v1 | aggregates information about vulnerabilities for an image |
| [**create_base_images_entities**](ContainerImages.md#create_base_images_entities) | **POST** /container-security/entities/base-images/v1 | Creates base images using the provided details |
| [**delete_base_images**](ContainerImages.md#delete_base_images) | **DELETE** /container-security/entities/base-images/v1 | Delete base images by base image uuid |
| [**get_combined_images**](ContainerImages.md#get_combined_images) | **GET** /container-security/combined/image-assessment/images/v1 | Maximum offset &#x3D; 10000 - limit |
| [**read_combined_images_export**](ContainerImages.md#read_combined_images_export) | **GET** /container-security/combined/images/export/v1 | Maximum offset &#x3D; 10000 - limit |


## aggregate_image_assessment_history

> <ImagesApiImageAssessmentHistory> aggregate_image_assessment_history(opts)

Image assessment history

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example' # String | Filter using a query in Falcon Query Language (FQL). Supported filter fields: - `cid` - `registry` - `repository`
}

begin
  # Image assessment history
  result = api_instance.aggregate_image_assessment_history(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_assessment_history: #{e}"
end
```

#### Using the aggregate_image_assessment_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageAssessmentHistory>, Integer, Hash)> aggregate_image_assessment_history_with_http_info(opts)

```ruby
begin
  # Image assessment history
  data, status_code, headers = api_instance.aggregate_image_assessment_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageAssessmentHistory>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_assessment_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; | [optional] |

### Return type

[**ImagesApiImageAssessmentHistory**](ImagesApiImageAssessmentHistory.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_image_count

> <ImagesApiImageCount> aggregate_image_count(opts)

Aggregate count of images

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `arch` - `base_os` - `cid` - `container_id` - `container_running_status` - `cps_rating` - `crowdstrike_user` - `cve_id` - `detection_count` - `detection_name` - `detection_severity` - `first_seen` - `image_digest` - `image_id` - `include_base_image_vuln` - `layer_digest` - `package_name_version` - `registry` - `repository` - `source` - `tag` - `vulnerability_count` - `vulnerability_severity`
}

begin
  # Aggregate count of images
  result = api_instance.aggregate_image_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count: #{e}"
end
```

#### Using the aggregate_image_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageCount>, Integer, Hash)> aggregate_image_count_with_http_info(opts)

```ruby
begin
  # Aggregate count of images
  data, status_code, headers = api_instance.aggregate_image_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;arch&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;cps_rating&#x60; - &#x60;crowdstrike_user&#x60; - &#x60;cve_id&#x60; - &#x60;detection_count&#x60; - &#x60;detection_name&#x60; - &#x60;detection_severity&#x60; - &#x60;first_seen&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;layer_digest&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;source&#x60; - &#x60;tag&#x60; - &#x60;vulnerability_count&#x60; - &#x60;vulnerability_severity&#x60; | [optional] |

### Return type

[**ImagesApiImageCount**](ImagesApiImageCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_image_count_by_base_os

> <ImagesApiImageCountByBaseOS> aggregate_image_count_by_base_os(opts)

Aggregate count of images grouped by Base OS distribution

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `registry` - `repository` - `tag`
}

begin
  # Aggregate count of images grouped by Base OS distribution
  result = api_instance.aggregate_image_count_by_base_os(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count_by_base_os: #{e}"
end
```

#### Using the aggregate_image_count_by_base_os_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageCountByBaseOS>, Integer, Hash)> aggregate_image_count_by_base_os_with_http_info(opts)

```ruby
begin
  # Aggregate count of images grouped by Base OS distribution
  data, status_code, headers = api_instance.aggregate_image_count_by_base_os_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageCountByBaseOS>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count_by_base_os_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |

### Return type

[**ImagesApiImageCountByBaseOS**](ImagesApiImageCountByBaseOS.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_image_count_by_state

> <ImagesApiImageCountByState> aggregate_image_count_by_state(opts)

Aggregate count of images grouped by state

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example' # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `registry` - `repository` - `tag`
}

begin
  # Aggregate count of images grouped by state
  result = api_instance.aggregate_image_count_by_state(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count_by_state: #{e}"
end
```

#### Using the aggregate_image_count_by_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageCountByState>, Integer, Hash)> aggregate_image_count_by_state_with_http_info(opts)

```ruby
begin
  # Aggregate count of images grouped by state
  data, status_code, headers = api_instance.aggregate_image_count_by_state_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageCountByState>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->aggregate_image_count_by_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |

### Return type

[**ImagesApiImageCountByState**](ImagesApiImageCountByState.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_base_images

> <CoreEntitiesResponse> combined_base_images(opts)

Retrieves a list of base images for the provided filter. Maximum page size: 100

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example' # String | Search base images using a query in Falcon Query Language (FQL). Supported filter fields: - `image_digest` - `image_id` - `registry` - `repository` - `tag`
}

begin
  # Retrieves a list of base images for the provided filter. Maximum page size: 100
  result = api_instance.combined_base_images(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_base_images: #{e}"
end
```

#### Using the combined_base_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> combined_base_images_with_http_info(opts)

```ruby
begin
  # Retrieves a list of base images for the provided filter. Maximum page size: 100
  data, status_code, headers = api_instance.combined_base_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_base_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search base images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_image_by_vulnerability_count

> <ImagesApiImageByVulnerabilityCount> combined_image_by_vulnerability_count(opts)

Retrieve top x images with the most vulnerabilities

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `registry` - `repository` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The fields to sort the records on. **Not supported.**
}

begin
  # Retrieve top x images with the most vulnerabilities
  result = api_instance.combined_image_by_vulnerability_count(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_by_vulnerability_count: #{e}"
end
```

#### Using the combined_image_by_vulnerability_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageByVulnerabilityCount>, Integer, Hash)> combined_image_by_vulnerability_count_with_http_info(opts)

```ruby
begin
  # Retrieve top x images with the most vulnerabilities
  data, status_code, headers = api_instance.combined_image_by_vulnerability_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageByVulnerabilityCount>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_by_vulnerability_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional] |
| **offset** | **Integer** | The fields to sort the records on. **Not supported.** | [optional] |

### Return type

[**ImagesApiImageByVulnerabilityCount**](ImagesApiImageByVulnerabilityCount.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_image_detail

> <ImagesApiCustomerAndImage> combined_image_detail(opts)

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `registry` - `repository` - `tag`
  with_config: true, # Boolean | (true/false) include image config, default is false
  sort: 'sort_example', # String | The fields to sort the records on.
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.combined_image_detail(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_detail: #{e}"
end
```

#### Using the combined_image_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiCustomerAndImage>, Integer, Hash)> combined_image_detail_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.combined_image_detail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiCustomerAndImage>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; | [optional] |
| **with_config** | **Boolean** | (true/false) include image config, default is false | [optional] |
| **sort** | **String** | The fields to sort the records on. | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**ImagesApiCustomerAndImage**](ImagesApiCustomerAndImage.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_image_issues_summary

> <ImagesApiImageIssuesSummary> combined_image_issues_summary(cid, registry, repository, tag, opts)

Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities

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

api_instance = Falcon::ContainerImages.new
cid = 'cid_example' # String | CS Customer ID
registry = 'registry_example' # String | Registry
repository = 'repository_example' # String | Repository name
tag = 'tag_example' # String | Tag name
opts = {
  include_base_image_vuln: true # Boolean | Include base image vulnerabilities.
}

begin
  # Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities
  result = api_instance.combined_image_issues_summary(cid, registry, repository, tag, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_issues_summary: #{e}"
end
```

#### Using the combined_image_issues_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageIssuesSummary>, Integer, Hash)> combined_image_issues_summary_with_http_info(cid, registry, repository, tag, opts)

```ruby
begin
  # Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities
  data, status_code, headers = api_instance.combined_image_issues_summary_with_http_info(cid, registry, repository, tag, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageIssuesSummary>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_issues_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | CS Customer ID |  |
| **registry** | **String** | Registry |  |
| **repository** | **String** | Repository name |  |
| **tag** | **String** | Tag name |  |
| **include_base_image_vuln** | **Boolean** | Include base image vulnerabilities. | [optional][default to false] |

### Return type

[**ImagesApiImageIssuesSummary**](ImagesApiImageIssuesSummary.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_image_vulnerability_summary

> <ImagesApiImageVulnerabilitiesSummary> combined_image_vulnerability_summary(cid, registry, repository, tag, opts)

aggregates information about vulnerabilities for an image

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

api_instance = Falcon::ContainerImages.new
cid = 'cid_example' # String | CS Customer ID
registry = 'registry_example' # String | Registry
repository = 'repository_example' # String | Repository name
tag = 'tag_example' # String | Tag name
opts = {
  include_base_image_vuln: true # Boolean | Include base image vulnerabilities.
}

begin
  # aggregates information about vulnerabilities for an image
  result = api_instance.combined_image_vulnerability_summary(cid, registry, repository, tag, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_vulnerability_summary: #{e}"
end
```

#### Using the combined_image_vulnerability_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiImageVulnerabilitiesSummary>, Integer, Hash)> combined_image_vulnerability_summary_with_http_info(cid, registry, repository, tag, opts)

```ruby
begin
  # aggregates information about vulnerabilities for an image
  data, status_code, headers = api_instance.combined_image_vulnerability_summary_with_http_info(cid, registry, repository, tag, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiImageVulnerabilitiesSummary>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->combined_image_vulnerability_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | CS Customer ID |  |
| **registry** | **String** | Registry |  |
| **repository** | **String** | Repository name |  |
| **tag** | **String** | Tag name |  |
| **include_base_image_vuln** | **Boolean** | Include base image vulnerabilities. | [optional][default to false] |

### Return type

[**ImagesApiImageVulnerabilitiesSummary**](ImagesApiImageVulnerabilitiesSummary.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_base_images_entities

> <CoreEntitiesResponse> create_base_images_entities(body)

Creates base images using the provided details

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

api_instance = Falcon::ContainerImages.new
body = Falcon::ModelsCreateBaseImagesRequest.new({base_images: [Falcon::ModelsBaseImageRequest.new]}) # ModelsCreateBaseImagesRequest | 

begin
  # Creates base images using the provided details
  result = api_instance.create_base_images_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->create_base_images_entities: #{e}"
end
```

#### Using the create_base_images_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> create_base_images_entities_with_http_info(body)

```ruby
begin
  # Creates base images using the provided details
  data, status_code, headers = api_instance.create_base_images_entities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->create_base_images_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsCreateBaseImagesRequest**](ModelsCreateBaseImagesRequest.md) |  |  |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_base_images

> <CoreEntitiesResponse> delete_base_images(ids)

Delete base images by base image uuid

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

api_instance = Falcon::ContainerImages.new
ids = ['inner_example'] # Array<String> | BaseImageIDs

begin
  # Delete base images by base image uuid
  result = api_instance.delete_base_images(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->delete_base_images: #{e}"
end
```

#### Using the delete_base_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> delete_base_images_with_http_info(ids)

```ruby
begin
  # Delete base images by base image uuid
  data, status_code, headers = api_instance.delete_base_images_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->delete_base_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | BaseImageIDs |  |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_combined_images

> <ImagesExtCombinedImagesResponse> get_combined_images(opts)

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `container_id` - `container_running_status` - `cve_id` - `detection_name` - `detection_severity` - `first_seen` - `image_digest` - `image_id` - `registry` - `repository` - `tag` - `vulnerability_severity`
  sort: 'sort_example', # String | The fields to sort the records on. Supported columns: - `first_seen` - `highest_detection_severity` - `highest_vulnerability_severity` - `image_digest` - `image_id` - `registry` - `repository` - `source` - `tag`
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56 # Integer | The offset from where to begin.
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.get_combined_images(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->get_combined_images: #{e}"
end
```

#### Using the get_combined_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesExtCombinedImagesResponse>, Integer, Hash)> get_combined_images_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.get_combined_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesExtCombinedImagesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->get_combined_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;cve_id&#x60; - &#x60;detection_name&#x60; - &#x60;detection_severity&#x60; - &#x60;first_seen&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60; - &#x60;vulnerability_severity&#x60; | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;first_seen&#x60; - &#x60;highest_detection_severity&#x60; - &#x60;highest_vulnerability_severity&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;source&#x60; - &#x60;tag&#x60; | [optional] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |

### Return type

[**ImagesExtCombinedImagesResponse**](ImagesExtCombinedImagesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_combined_images_export

> <ImagesApiCombinedImageExport> read_combined_images_export(opts)

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

api_instance = Falcon::ContainerImages.new
opts = {
  filter: 'filter_example', # String | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - `ai_related` - `arch` - `base_os` - `cid` - `container_id` - `container_running_status` - `cps_rating` - `crowdstrike_user` - `cve_id` - `detection_count` - `detection_name` - `detection_severity` - `first_seen` - `image_digest` - `image_id` - `include_base_image_vuln` - `layer_digest` - `package_name_version` - `registry` - `repository` - `source` - `tag` - `vulnerability_count` - `vulnerability_severity`
  expand_vulnerabilities: true, # Boolean | Expand vulnerabilities details
  expand_detections: true, # Boolean | Expand detections details
  limit: 56, # Integer | The upper-bound on the number of records to retrieve.
  offset: 56, # Integer | The offset from where to begin.
  sort: 'sort_example' # String | The fields to sort the records on. Supported columns: - `base_os` - `cid` - `detections` - `firstScanned` - `first_seen` - `highest_cps_current_rating` - `highest_detection_severity` - `highest_vulnerability_severity` - `image_digest` - `image_id` - `last_seen` - `layers_with_vulnerabilities` - `packages` - `registry` - `repository` - `source` - `tag` - `vulnerabilities`
}

begin
  # Maximum offset = 10000 - limit
  result = api_instance.read_combined_images_export(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->read_combined_images_export: #{e}"
end
```

#### Using the read_combined_images_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImagesApiCombinedImageExport>, Integer, Hash)> read_combined_images_export_with_http_info(opts)

```ruby
begin
  # Maximum offset = 10000 - limit
  data, status_code, headers = api_instance.read_combined_images_export_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImagesApiCombinedImageExport>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImages->read_combined_images_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter images using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;arch&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;cps_rating&#x60; - &#x60;crowdstrike_user&#x60; - &#x60;cve_id&#x60; - &#x60;detection_count&#x60; - &#x60;detection_name&#x60; - &#x60;detection_severity&#x60; - &#x60;first_seen&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;layer_digest&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;source&#x60; - &#x60;tag&#x60; - &#x60;vulnerability_count&#x60; - &#x60;vulnerability_severity&#x60; | [optional] |
| **expand_vulnerabilities** | **Boolean** | Expand vulnerabilities details | [optional][default to false] |
| **expand_detections** | **Boolean** | Expand detections details | [optional][default to false] |
| **limit** | **Integer** | The upper-bound on the number of records to retrieve. | [optional][default to 100] |
| **offset** | **Integer** | The offset from where to begin. | [optional] |
| **sort** | **String** | The fields to sort the records on. Supported columns: - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;detections&#x60; - &#x60;firstScanned&#x60; - &#x60;first_seen&#x60; - &#x60;highest_cps_current_rating&#x60; - &#x60;highest_detection_severity&#x60; - &#x60;highest_vulnerability_severity&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;last_seen&#x60; - &#x60;layers_with_vulnerabilities&#x60; - &#x60;packages&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;source&#x60; - &#x60;tag&#x60; - &#x60;vulnerabilities&#x60; | [optional] |

### Return type

[**ImagesApiCombinedImageExport**](ImagesApiCombinedImageExport.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

