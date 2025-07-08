# Falcon::ContainerImageCompliance

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ext_aggregate_cluster_assessments**](ContainerImageCompliance.md#ext_aggregate_cluster_assessments) | **GET** /container-compliance/aggregates/compliance-by-clusters/v2 | get the assessments for each cluster |
| [**ext_aggregate_failed_containers_by_rules_path**](ContainerImageCompliance.md#ext_aggregate_failed_containers_by_rules_path) | **GET** /container-compliance/aggregates/failed-containers-by-rules/v2 | get the containers grouped into rules on which they failed |
| [**ext_aggregate_failed_containers_count_by_severity**](ContainerImageCompliance.md#ext_aggregate_failed_containers_count_by_severity) | **GET** /container-compliance/aggregates/failed-containers-count-by-severity/v2 | get the failed containers count grouped into severity levels |
| [**ext_aggregate_failed_images_by_rules_path**](ContainerImageCompliance.md#ext_aggregate_failed_images_by_rules_path) | **GET** /container-compliance/aggregates/failed-images-by-rules/v2 | get the images grouped into rules on which they failed |
| [**ext_aggregate_failed_images_count_by_severity**](ContainerImageCompliance.md#ext_aggregate_failed_images_count_by_severity) | **GET** /container-compliance/aggregates/failed-images-count-by-severity/v2 | get the failed images count grouped into severity levels |
| [**ext_aggregate_failed_rules_by_clusters**](ContainerImageCompliance.md#ext_aggregate_failed_rules_by_clusters) | **GET** /container-compliance/aggregates/failed-rules-by-clusters/v2 | get the failed rules for each cluster grouped into severity levels |
| [**ext_aggregate_failed_rules_by_images**](ContainerImageCompliance.md#ext_aggregate_failed_rules_by_images) | **GET** /container-compliance/aggregates/failed-rules-by-images/v2 | get images with failed rules, rule count grouped by severity for each image |
| [**ext_aggregate_failed_rules_count_by_severity**](ContainerImageCompliance.md#ext_aggregate_failed_rules_count_by_severity) | **GET** /container-compliance/aggregates/failed-rules-count-by-severity/v2 | get the failed rules count grouped into severity levels |
| [**ext_aggregate_image_assessments**](ContainerImageCompliance.md#ext_aggregate_image_assessments) | **GET** /container-compliance/aggregates/compliance-by-images/v2 | get the assessments for each image |
| [**ext_aggregate_rules_assessments**](ContainerImageCompliance.md#ext_aggregate_rules_assessments) | **GET** /container-compliance/aggregates/compliance-by-rules/v2 | get the assessments for each rule |
| [**ext_aggregate_rules_by_status**](ContainerImageCompliance.md#ext_aggregate_rules_by_status) | **GET** /container-compliance/aggregates/rules-by-status/v2 | get the rules grouped by their statuses |


## ext_aggregate_cluster_assessments

> <DomainAggregateClusterAssessmentsResponse> ext_aggregate_cluster_assessments(opts)

get the assessments for each cluster

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: compliance_finding.framework: Compliance finding framework (available values: CIS) cid: Customer ID cloud_info.cloud_account_id: Cloud account ID cloud_info.cloud_provider: Cloud provider cloud_info.cloud_region: Cloud region cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace 
}

begin
  # get the assessments for each cluster
  result = api_instance.ext_aggregate_cluster_assessments(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_cluster_assessments: #{e}"
end
```

#### Using the ext_aggregate_cluster_assessments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateClusterAssessmentsResponse>, Integer, Hash)> ext_aggregate_cluster_assessments_with_http_info(opts)

```ruby
begin
  # get the assessments for each cluster
  data, status_code, headers = api_instance.ext_aggregate_cluster_assessments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateClusterAssessmentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_cluster_assessments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: compliance_finding.framework: Compliance finding framework (available values: CIS) cid: Customer ID cloud_info.cloud_account_id: Cloud account ID cloud_info.cloud_provider: Cloud provider cloud_info.cloud_region: Cloud region cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace  | [optional] |

### Return type

[**DomainAggregateClusterAssessmentsResponse**](DomainAggregateClusterAssessmentsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_containers_by_rules_path

> <DomainAggregateFailedAssetsByRulesResponse> ext_aggregate_failed_containers_by_rules_path(opts)

get the containers grouped into rules on which they failed

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) image_digest: Image digest (sha256 digest) image_id: Image ID image_tag: Image tag cloud_info.cloud_region: Cloud region image_registry: Image registry image_repository: Image repository cloud_info.cloud_account_id: Cloud account ID cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace cid: Customer ID compliance_finding.name: Compliance finding Name compliance_finding.framework: Compliance finding framework (available values: CIS) 
}

begin
  # get the containers grouped into rules on which they failed
  result = api_instance.ext_aggregate_failed_containers_by_rules_path(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_containers_by_rules_path: #{e}"
end
```

#### Using the ext_aggregate_failed_containers_by_rules_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedAssetsByRulesResponse>, Integer, Hash)> ext_aggregate_failed_containers_by_rules_path_with_http_info(opts)

```ruby
begin
  # get the containers grouped into rules on which they failed
  data, status_code, headers = api_instance.ext_aggregate_failed_containers_by_rules_path_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedAssetsByRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_containers_by_rules_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) image_digest: Image digest (sha256 digest) image_id: Image ID image_tag: Image tag cloud_info.cloud_region: Cloud region image_registry: Image registry image_repository: Image repository cloud_info.cloud_account_id: Cloud account ID cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace cid: Customer ID compliance_finding.name: Compliance finding Name compliance_finding.framework: Compliance finding framework (available values: CIS)  | [optional] |

### Return type

[**DomainAggregateFailedAssetsByRulesResponse**](DomainAggregateFailedAssetsByRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_containers_count_by_severity

> <DomainAggregateFailedAssetCountBySeverityResponse> ext_aggregate_failed_containers_count_by_severity(opts)

get the failed containers count grouped into severity levels

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID cloud_info.cloud_region: Cloud region image_registry: Image registry image_digest: Image digest (sha256 digest) cloud_info.cluster_name: Kubernetes cluster name compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name cloud_info.cloud_account_id: Cloud account ID image_id: Image ID image_repository: Image repository image_tag: Image tag compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.namespace: Kubernetes namespace cid: Customer ID 
}

begin
  # get the failed containers count grouped into severity levels
  result = api_instance.ext_aggregate_failed_containers_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_containers_count_by_severity: #{e}"
end
```

#### Using the ext_aggregate_failed_containers_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedAssetCountBySeverityResponse>, Integer, Hash)> ext_aggregate_failed_containers_count_by_severity_with_http_info(opts)

```ruby
begin
  # get the failed containers count grouped into severity levels
  data, status_code, headers = api_instance.ext_aggregate_failed_containers_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedAssetCountBySeverityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_containers_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID cloud_info.cloud_region: Cloud region image_registry: Image registry image_digest: Image digest (sha256 digest) cloud_info.cluster_name: Kubernetes cluster name compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name cloud_info.cloud_account_id: Cloud account ID image_id: Image ID image_repository: Image repository image_tag: Image tag compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.namespace: Kubernetes namespace cid: Customer ID  | [optional] |

### Return type

[**DomainAggregateFailedAssetCountBySeverityResponse**](DomainAggregateFailedAssetCountBySeverityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_images_by_rules_path

> <DomainAggregateFailedAssetsByRulesResponse> ext_aggregate_failed_images_by_rules_path(opts)

get the images grouped into rules on which they failed

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_account_id: Cloud account ID image_digest: Image digest (sha256 digest) compliance_finding.name: Compliance finding Name compliance_finding.id: Compliance finding ID image_repository: Image repository cloud_info.cloud_region: Cloud region compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.namespace: Kubernetes namespace cloud_info.cloud_provider: Cloud provider image_id: Image ID image_registry: Image registry image_tag: Image tag cloud_info.cluster_name: Kubernetes cluster name compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cid: Customer ID 
}

begin
  # get the images grouped into rules on which they failed
  result = api_instance.ext_aggregate_failed_images_by_rules_path(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_images_by_rules_path: #{e}"
end
```

#### Using the ext_aggregate_failed_images_by_rules_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedAssetsByRulesResponse>, Integer, Hash)> ext_aggregate_failed_images_by_rules_path_with_http_info(opts)

```ruby
begin
  # get the images grouped into rules on which they failed
  data, status_code, headers = api_instance.ext_aggregate_failed_images_by_rules_path_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedAssetsByRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_images_by_rules_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_account_id: Cloud account ID image_digest: Image digest (sha256 digest) compliance_finding.name: Compliance finding Name compliance_finding.id: Compliance finding ID image_repository: Image repository cloud_info.cloud_region: Cloud region compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.namespace: Kubernetes namespace cloud_info.cloud_provider: Cloud provider image_id: Image ID image_registry: Image registry image_tag: Image tag cloud_info.cluster_name: Kubernetes cluster name compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cid: Customer ID  | [optional] |

### Return type

[**DomainAggregateFailedAssetsByRulesResponse**](DomainAggregateFailedAssetsByRulesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_images_count_by_severity

> <DomainAggregateFailedAssetCountBySeverityResponse> ext_aggregate_failed_images_count_by_severity(opts)

get the failed images count grouped into severity levels

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cluster_name: Kubernetes cluster name cloud_info.cloud_region: Cloud region compliance_finding.name: Compliance finding Name image_tag: Image tag cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID image_repository: Image repository image_digest: Image digest (sha256 digest) cloud_info.namespace: Kubernetes namespace cid: Customer ID image_registry: Image registry compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cloud_info.cloud_provider: Cloud provider image_id: Image ID compliance_finding.framework: Compliance finding framework (available values: CIS) 
}

begin
  # get the failed images count grouped into severity levels
  result = api_instance.ext_aggregate_failed_images_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_images_count_by_severity: #{e}"
end
```

#### Using the ext_aggregate_failed_images_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedAssetCountBySeverityResponse>, Integer, Hash)> ext_aggregate_failed_images_count_by_severity_with_http_info(opts)

```ruby
begin
  # get the failed images count grouped into severity levels
  data, status_code, headers = api_instance.ext_aggregate_failed_images_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedAssetCountBySeverityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_images_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cluster_name: Kubernetes cluster name cloud_info.cloud_region: Cloud region compliance_finding.name: Compliance finding Name image_tag: Image tag cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID image_repository: Image repository image_digest: Image digest (sha256 digest) cloud_info.namespace: Kubernetes namespace cid: Customer ID image_registry: Image registry compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cloud_info.cloud_provider: Cloud provider image_id: Image ID compliance_finding.framework: Compliance finding framework (available values: CIS)  | [optional] |

### Return type

[**DomainAggregateFailedAssetCountBySeverityResponse**](DomainAggregateFailedAssetCountBySeverityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_rules_by_clusters

> <DomainAggregateFailedRulesByClustersResponse> ext_aggregate_failed_rules_by_clusters(opts)

get the failed rules for each cluster grouped into severity levels

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_region: Cloud region image_digest: Image digest (sha256 digest) cid: Customer ID image_id: Image ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID cloud_info.cloud_provider: Cloud provider image_registry: Image registry cloud_info.cluster_name: Kubernetes cluster name image_tag: Image tag asset_type: asset type (container, image) image_repository: Image repository compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.name: Compliance finding Name 
}

begin
  # get the failed rules for each cluster grouped into severity levels
  result = api_instance.ext_aggregate_failed_rules_by_clusters(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_by_clusters: #{e}"
end
```

#### Using the ext_aggregate_failed_rules_by_clusters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedRulesByClustersResponse>, Integer, Hash)> ext_aggregate_failed_rules_by_clusters_with_http_info(opts)

```ruby
begin
  # get the failed rules for each cluster grouped into severity levels
  data, status_code, headers = api_instance.ext_aggregate_failed_rules_by_clusters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedRulesByClustersResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_by_clusters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_region: Cloud region image_digest: Image digest (sha256 digest) cid: Customer ID image_id: Image ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID cloud_info.cloud_provider: Cloud provider image_registry: Image registry cloud_info.cluster_name: Kubernetes cluster name image_tag: Image tag asset_type: asset type (container, image) image_repository: Image repository compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.name: Compliance finding Name  | [optional] |

### Return type

[**DomainAggregateFailedRulesByClustersResponse**](DomainAggregateFailedRulesByClustersResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_rules_by_images

> <DomainAggregateFailedRulesByImagesResponse> ext_aggregate_failed_rules_by_images(opts)

get images with failed rules, rule count grouped by severity for each image

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_registry: Image registry cloud_info.cloud_region: Cloud region compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name image_id: Image ID cloud_info.cloud_provider: Cloud provider cloud_info.cluster_name: Kubernetes cluster name cid: Customer ID asset_type: asset type (container, image) compliance_finding.id: Compliance finding ID cloud_info.cloud_account_id: Cloud account ID image_digest: Image digest (sha256 digest) cloud_info.namespace: Kubernetes namespace image_repository: Image repository image_tag: Image tag 
}

begin
  # get images with failed rules, rule count grouped by severity for each image
  result = api_instance.ext_aggregate_failed_rules_by_images(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_by_images: #{e}"
end
```

#### Using the ext_aggregate_failed_rules_by_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedRulesByImagesResponse>, Integer, Hash)> ext_aggregate_failed_rules_by_images_with_http_info(opts)

```ruby
begin
  # get images with failed rules, rule count grouped by severity for each image
  data, status_code, headers = api_instance.ext_aggregate_failed_rules_by_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedRulesByImagesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_by_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_registry: Image registry cloud_info.cloud_region: Cloud region compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name image_id: Image ID cloud_info.cloud_provider: Cloud provider cloud_info.cluster_name: Kubernetes cluster name cid: Customer ID asset_type: asset type (container, image) compliance_finding.id: Compliance finding ID cloud_info.cloud_account_id: Cloud account ID image_digest: Image digest (sha256 digest) cloud_info.namespace: Kubernetes namespace image_repository: Image repository image_tag: Image tag  | [optional] |

### Return type

[**DomainAggregateFailedRulesByImagesResponse**](DomainAggregateFailedRulesByImagesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_failed_rules_count_by_severity

> <DomainAggregateFailedRulesCountBySeverityResponse> ext_aggregate_failed_rules_count_by_severity(opts)

get the failed rules count grouped into severity levels

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_region: Cloud region compliance_finding.name: Compliance finding Name image_repository: Image repository image_digest: Image digest (sha256 digest) cloud_info.cluster_name: Kubernetes cluster name compliance_finding.framework: Compliance finding framework (available values: CIS) asset_type: asset type (container, image) image_id: Image ID cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cid: Customer ID image_registry: Image registry image_tag: Image tag cloud_info.cloud_provider: Cloud provider 
}

begin
  # get the failed rules count grouped into severity levels
  result = api_instance.ext_aggregate_failed_rules_count_by_severity(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_count_by_severity: #{e}"
end
```

#### Using the ext_aggregate_failed_rules_count_by_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateFailedRulesCountBySeverityResponse>, Integer, Hash)> ext_aggregate_failed_rules_count_by_severity_with_http_info(opts)

```ruby
begin
  # get the failed rules count grouped into severity levels
  data, status_code, headers = api_instance.ext_aggregate_failed_rules_count_by_severity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateFailedRulesCountBySeverityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_failed_rules_count_by_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_region: Cloud region compliance_finding.name: Compliance finding Name image_repository: Image repository image_digest: Image digest (sha256 digest) cloud_info.cluster_name: Kubernetes cluster name compliance_finding.framework: Compliance finding framework (available values: CIS) asset_type: asset type (container, image) image_id: Image ID cloud_info.cloud_account_id: Cloud account ID compliance_finding.id: Compliance finding ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) cid: Customer ID image_registry: Image registry image_tag: Image tag cloud_info.cloud_provider: Cloud provider  | [optional] |

### Return type

[**DomainAggregateFailedRulesCountBySeverityResponse**](DomainAggregateFailedRulesCountBySeverityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_image_assessments

> <DomainAggregateImageAssessmentsResponse> ext_aggregate_image_assessments(opts)

get the assessments for each image

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example', # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_digest: Image digest (sha256 digest) image_id: Image ID cloud_info.cloud_region: Cloud region compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.id: Compliance finding ID cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace asset_type: asset type (container, image) image_registry: Image registry cloud_info.cloud_provider: Cloud provider image_tag: Image tag cloud_info.cloud_account_id: Cloud account ID compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.name: Compliance finding Name cid: Customer ID image_repository: Image repository 
  after: 'after_example', # String | 'after' value from the last response. Keep it empty for the first request.
  limit: 'limit_example' # String | number of images to return in the response after 'after' key. Keep it empty for the default number of 10000
}

begin
  # get the assessments for each image
  result = api_instance.ext_aggregate_image_assessments(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_image_assessments: #{e}"
end
```

#### Using the ext_aggregate_image_assessments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateImageAssessmentsResponse>, Integer, Hash)> ext_aggregate_image_assessments_with_http_info(opts)

```ruby
begin
  # get the assessments for each image
  data, status_code, headers = api_instance.ext_aggregate_image_assessments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateImageAssessmentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_image_assessments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_digest: Image digest (sha256 digest) image_id: Image ID cloud_info.cloud_region: Cloud region compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.id: Compliance finding ID cloud_info.cluster_name: Kubernetes cluster name cloud_info.namespace: Kubernetes namespace asset_type: asset type (container, image) image_registry: Image registry cloud_info.cloud_provider: Cloud provider image_tag: Image tag cloud_info.cloud_account_id: Cloud account ID compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.name: Compliance finding Name cid: Customer ID image_repository: Image repository  | [optional] |
| **after** | **String** | &#39;after&#39; value from the last response. Keep it empty for the first request. | [optional] |
| **limit** | **String** | number of images to return in the response after &#39;after&#39; key. Keep it empty for the default number of 10000 | [optional] |

### Return type

[**DomainAggregateImageAssessmentsResponse**](DomainAggregateImageAssessmentsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_rules_assessments

> <DomainAggregateRulesAssessmentsResponse> ext_aggregate_rules_assessments(opts)

get the assessments for each rule

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_account_id: Cloud account ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name image_tag: Image tag cloud_info.cloud_region: Cloud region cid: Customer ID image_registry: Image registry image_digest: Image digest (sha256 digest) compliance_finding.id: Compliance finding ID image_repository: Image repository compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.cluster_name: Kubernetes cluster name cloud_info.cloud_provider: Cloud provider image_id: Image ID 
}

begin
  # get the assessments for each rule
  result = api_instance.ext_aggregate_rules_assessments(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_rules_assessments: #{e}"
end
```

#### Using the ext_aggregate_rules_assessments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateRulesAssessmentsResponse>, Integer, Hash)> ext_aggregate_rules_assessments_with_http_info(opts)

```ruby
begin
  # get the assessments for each rule
  data, status_code, headers = api_instance.ext_aggregate_rules_assessments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateRulesAssessmentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_rules_assessments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: cloud_info.cloud_account_id: Cloud account ID compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) compliance_finding.name: Compliance finding Name image_tag: Image tag cloud_info.cloud_region: Cloud region cid: Customer ID image_registry: Image registry image_digest: Image digest (sha256 digest) compliance_finding.id: Compliance finding ID image_repository: Image repository compliance_finding.framework: Compliance finding framework (available values: CIS) cloud_info.cluster_name: Kubernetes cluster name cloud_info.cloud_provider: Cloud provider image_id: Image ID  | [optional] |

### Return type

[**DomainAggregateRulesAssessmentsResponse**](DomainAggregateRulesAssessmentsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ext_aggregate_rules_by_status

> <DomainAggregateRulesByStatusResponse> ext_aggregate_rules_by_status(opts)

get the rules grouped by their statuses

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

api_instance = Falcon::ContainerImageCompliance.new
opts = {
  filter: 'filter_example' # String | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_registry: Image registry image_repository: Image repository image_tag: Image tag cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID image_id: Image ID cid: Customer ID compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) container_id: Container ID cloud_info.cloud_account_id: Cloud account ID compliance_finding.name: Compliance finding Name cloud_info.cloud_region: Cloud region cloud_info.cluster_name: Kubernetes cluster name image_digest: Image digest (sha256 digest) container_name: Container name asset_type: asset type (container, image) 
}

begin
  # get the rules grouped by their statuses
  result = api_instance.ext_aggregate_rules_by_status(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_rules_by_status: #{e}"
end
```

#### Using the ext_aggregate_rules_by_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAggregateRulesByStatusResponse>, Integer, Hash)> ext_aggregate_rules_by_status_with_http_info(opts)

```ruby
begin
  # get the rules grouped by their statuses
  data, status_code, headers = api_instance.ext_aggregate_rules_by_status_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAggregateRulesByStatusResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ContainerImageCompliance->ext_aggregate_rules_by_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter results using a query in Falcon Query Language (FQL). Supported Filters: image_registry: Image registry image_repository: Image repository image_tag: Image tag cloud_info.cloud_provider: Cloud provider compliance_finding.id: Compliance finding ID image_id: Image ID cid: Customer ID compliance_finding.framework: Compliance finding framework (available values: CIS) compliance_finding.severity: Compliance finding severity; available values: 4, 3, 2, 1 (4: critical, 3: high, 2: medium, 1:low) container_id: Container ID cloud_info.cloud_account_id: Cloud account ID compliance_finding.name: Compliance finding Name cloud_info.cloud_region: Cloud region cloud_info.cluster_name: Kubernetes cluster name image_digest: Image digest (sha256 digest) container_name: Container name asset_type: asset type (container, image)  | [optional] |

### Return type

[**DomainAggregateRulesByStatusResponse**](DomainAggregateRulesByStatusResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

