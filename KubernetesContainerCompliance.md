# Falcon::KubernetesContainerCompliance

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_assessments_grouped_by_clusters_v2**](KubernetesContainerCompliance.md#aggregate_assessments_grouped_by_clusters_v2) | **GET** /container-compliance/aggregates/clusters/v2 | Returns cluster details along with aggregated assessment results organized by cluster, including pass/fail assessment counts for various asset types. |
| [**aggregate_assessments_grouped_by_rules_v2**](KubernetesContainerCompliance.md#aggregate_assessments_grouped_by_rules_v2) | **GET** /container-compliance/aggregates/rules/v2 | Returns rule details along with aggregated assessment results organized by compliance rule, including pass/fail assessment counts. |
| [**aggregate_compliance_by_asset_type**](KubernetesContainerCompliance.md#aggregate_compliance_by_asset_type) | **GET** /container-compliance/aggregates/compliance-by-asset-type/v2 | Provides aggregated compliance assessment metrics and rule status information, organized by asset type. |
| [**aggregate_compliance_by_cluster_type**](KubernetesContainerCompliance.md#aggregate_compliance_by_cluster_type) | **GET** /container-compliance/aggregates/compliance-by-cluster-type/v2 | Provides aggregated compliance assessment metrics and rule status information, organized by Kubernetes cluster type. |
| [**aggregate_compliance_by_framework**](KubernetesContainerCompliance.md#aggregate_compliance_by_framework) | **GET** /container-compliance/aggregates/compliance-by-framework/v2 | Provides aggregated compliance assessment metrics and rule status information, organized by compliance framework. |
| [**aggregate_failed_rules_by_clusters_v3**](KubernetesContainerCompliance.md#aggregate_failed_rules_by_clusters_v3) | **GET** /container-compliance/aggregates/failed-rules-by-clusters/v3 | Retrieves the most non-compliant clusters, ranked in descending order based on the number of failed compliance rules across severity levels (critical, high, medium, and low). |
| [**aggregate_top_failed_images**](KubernetesContainerCompliance.md#aggregate_top_failed_images) | **GET** /container-compliance/aggregates/top-failed-images/v2 | Retrieves the most non-compliant container images, ranked in descending order based on the number of failed assessments across severity levels (critical, high, medium, and low). |
| [**combined_images_findings**](KubernetesContainerCompliance.md#combined_images_findings) | **GET** /container-compliance/combined/findings-by-images/v2 | Returns detailed compliance assessment results for container images, providing the information needed to identify compliance violations. |
| [**combined_nodes_findings**](KubernetesContainerCompliance.md#combined_nodes_findings) | **GET** /container-compliance/combined/findings-by-nodes/v2 | Returns detailed compliance assessment results for kubernetes nodes, providing the information needed to identify compliance violations. |
| [**get_rules_metadata_by_id**](KubernetesContainerCompliance.md#get_rules_metadata_by_id) | **GET** /container-compliance/combined/rule-details-by-rule-ids/v1 | Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers. |


## aggregate_assessments_grouped_by_clusters_v2

> <DomainAPIAggregateResponseGroupByClustersV2> aggregate_assessments_grouped_by_clusters_v2(opts)

Returns cluster details along with aggregated assessment results organized by cluster, including pass/fail assessment counts for various asset types.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  offset: 56, # Integer | The zero-based position of the first record to return.
  limit: 56, # Integer | The maximum number of records to return. (1-500) Default is 20.
  filter: 'filter_example' # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
}

begin
  # Returns cluster details along with aggregated assessment results organized by cluster, including pass/fail assessment counts for various asset types.
  result = api_instance.aggregate_assessments_grouped_by_clusters_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_assessments_grouped_by_clusters_v2: #{e}"
end
```

#### Using the aggregate_assessments_grouped_by_clusters_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseGroupByClustersV2>, Integer, Hash)> aggregate_assessments_grouped_by_clusters_v2_with_http_info(opts)

```ruby
begin
  # Returns cluster details along with aggregated assessment results organized by cluster, including pass/fail assessment counts for various asset types.
  data, status_code, headers = api_instance.aggregate_assessments_grouped_by_clusters_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseGroupByClustersV2>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_assessments_grouped_by_clusters_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The zero-based position of the first record to return. | [optional] |
| **limit** | **Integer** | The maximum number of records to return. (1-500) Default is 20. | [optional] |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |

### Return type

[**DomainAPIAggregateResponseGroupByClustersV2**](DomainAPIAggregateResponseGroupByClustersV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_assessments_grouped_by_rules_v2

> <DomainAPIAggregateResponseGroupByRulesV1> aggregate_assessments_grouped_by_rules_v2(opts)

Returns rule details along with aggregated assessment results organized by compliance rule, including pass/fail assessment counts.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  offset: 56, # Integer | The zero-based position of the first record to return.
  limit: 56, # Integer | The maximum number of records to return. (1-500) Default is 20.
  filter: 'filter_example' # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status
}

begin
  # Returns rule details along with aggregated assessment results organized by compliance rule, including pass/fail assessment counts.
  result = api_instance.aggregate_assessments_grouped_by_rules_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_assessments_grouped_by_rules_v2: #{e}"
end
```

#### Using the aggregate_assessments_grouped_by_rules_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseGroupByRulesV1>, Integer, Hash)> aggregate_assessments_grouped_by_rules_v2_with_http_info(opts)

```ruby
begin
  # Returns rule details along with aggregated assessment results organized by compliance rule, including pass/fail assessment counts.
  data, status_code, headers = api_instance.aggregate_assessments_grouped_by_rules_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseGroupByRulesV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_assessments_grouped_by_rules_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The zero-based position of the first record to return. | [optional] |
| **limit** | **Integer** | The maximum number of records to return. (1-500) Default is 20. | [optional] |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status | [optional] |

### Return type

[**DomainAPIAggregateResponseGroupByRulesV1**](DomainAPIAggregateResponseGroupByRulesV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_compliance_by_asset_type

> <DomainAPIAggregateResponseComplianceByAssetTypeV1> aggregate_compliance_by_asset_type(opts)

Provides aggregated compliance assessment metrics and rule status information, organized by asset type.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example' # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
}

begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by asset type.
  result = api_instance.aggregate_compliance_by_asset_type(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_asset_type: #{e}"
end
```

#### Using the aggregate_compliance_by_asset_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseComplianceByAssetTypeV1>, Integer, Hash)> aggregate_compliance_by_asset_type_with_http_info(opts)

```ruby
begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by asset type.
  data, status_code, headers = api_instance.aggregate_compliance_by_asset_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseComplianceByAssetTypeV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_asset_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |

### Return type

[**DomainAPIAggregateResponseComplianceByAssetTypeV1**](DomainAPIAggregateResponseComplianceByAssetTypeV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_compliance_by_cluster_type

> <DomainAPIAggregateResponseComplianceByClusterTypeV1> aggregate_compliance_by_cluster_type(opts)

Provides aggregated compliance assessment metrics and rule status information, organized by Kubernetes cluster type.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example' # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
}

begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by Kubernetes cluster type.
  result = api_instance.aggregate_compliance_by_cluster_type(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_cluster_type: #{e}"
end
```

#### Using the aggregate_compliance_by_cluster_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseComplianceByClusterTypeV1>, Integer, Hash)> aggregate_compliance_by_cluster_type_with_http_info(opts)

```ruby
begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by Kubernetes cluster type.
  data, status_code, headers = api_instance.aggregate_compliance_by_cluster_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseComplianceByClusterTypeV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_cluster_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |

### Return type

[**DomainAPIAggregateResponseComplianceByClusterTypeV1**](DomainAPIAggregateResponseComplianceByClusterTypeV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_compliance_by_framework

> <DomainAPIAggregateResponseComplianceByFrameworkV1> aggregate_compliance_by_framework(opts)

Provides aggregated compliance assessment metrics and rule status information, organized by compliance framework.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example' # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
}

begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by compliance framework.
  result = api_instance.aggregate_compliance_by_framework(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_framework: #{e}"
end
```

#### Using the aggregate_compliance_by_framework_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseComplianceByFrameworkV1>, Integer, Hash)> aggregate_compliance_by_framework_with_http_info(opts)

```ruby
begin
  # Provides aggregated compliance assessment metrics and rule status information, organized by compliance framework.
  data, status_code, headers = api_instance.aggregate_compliance_by_framework_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseComplianceByFrameworkV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_compliance_by_framework_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |

### Return type

[**DomainAPIAggregateResponseComplianceByFrameworkV1**](DomainAPIAggregateResponseComplianceByFrameworkV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_failed_rules_by_clusters_v3

> <DomainAPIAggregateResponseFailedRulesByClustersTypeV2> aggregate_failed_rules_by_clusters_v3(opts)

Retrieves the most non-compliant clusters, ranked in descending order based on the number of failed compliance rules across severity levels (critical, high, medium, and low).

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example', # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
  limit: 56 # Integer | The maximum number of records to return. (1-100) Default is 10.
}

begin
  # Retrieves the most non-compliant clusters, ranked in descending order based on the number of failed compliance rules across severity levels (critical, high, medium, and low).
  result = api_instance.aggregate_failed_rules_by_clusters_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_failed_rules_by_clusters_v3: #{e}"
end
```

#### Using the aggregate_failed_rules_by_clusters_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseFailedRulesByClustersTypeV2>, Integer, Hash)> aggregate_failed_rules_by_clusters_v3_with_http_info(opts)

```ruby
begin
  # Retrieves the most non-compliant clusters, ranked in descending order based on the number of failed compliance rules across severity levels (critical, high, medium, and low).
  data, status_code, headers = api_instance.aggregate_failed_rules_by_clusters_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseFailedRulesByClustersTypeV2>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_failed_rules_by_clusters_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |
| **limit** | **Integer** | The maximum number of records to return. (1-100) Default is 10. | [optional] |

### Return type

[**DomainAPIAggregateResponseFailedRulesByClustersTypeV2**](DomainAPIAggregateResponseFailedRulesByClustersTypeV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## aggregate_top_failed_images

> <DomainAPIAggregateResponseTopFailedImagesV1> aggregate_top_failed_images(opts)

Retrieves the most non-compliant container images, ranked in descending order based on the number of failed assessments across severity levels (critical, high, medium, and low).

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example', # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity
  limit: 56 # Integer | The maximum number of records to return. (1-100) Default is 10.
}

begin
  # Retrieves the most non-compliant container images, ranked in descending order based on the number of failed assessments across severity levels (critical, high, medium, and low).
  result = api_instance.aggregate_top_failed_images(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_top_failed_images: #{e}"
end
```

#### Using the aggregate_top_failed_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIAggregateResponseTopFailedImagesV1>, Integer, Hash)> aggregate_top_failed_images_with_http_info(opts)

```ruby
begin
  # Retrieves the most non-compliant container images, ranked in descending order based on the number of failed assessments across severity levels (critical, high, medium, and low).
  data, status_code, headers = api_instance.aggregate_top_failed_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIAggregateResponseTopFailedImagesV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->aggregate_top_failed_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.severity | [optional] |
| **limit** | **Integer** | The maximum number of records to return. (1-100) Default is 10. | [optional] |

### Return type

[**DomainAPIAggregateResponseTopFailedImagesV1**](DomainAPIAggregateResponseTopFailedImagesV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_images_findings

> <DomainAPIResponseImagesFindingsV1> combined_images_findings(opts)

Returns detailed compliance assessment results for container images, providing the information needed to identify compliance violations.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example', # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, cloud_info.namespace, compliance_finding.asset_uid, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status, image_digest, image_id, image_registry, image_repository, image_tag
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | The maximum number of images for which assessments are to be returned: 1-100. Default is 100. Use with the after parameter to manage pagination of results.
}

begin
  # Returns detailed compliance assessment results for container images, providing the information needed to identify compliance violations.
  result = api_instance.combined_images_findings(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->combined_images_findings: #{e}"
end
```

#### Using the combined_images_findings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIResponseImagesFindingsV1>, Integer, Hash)> combined_images_findings_with_http_info(opts)

```ruby
begin
  # Returns detailed compliance assessment results for container images, providing the information needed to identify compliance violations.
  data, status_code, headers = api_instance.combined_images_findings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIResponseImagesFindingsV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->combined_images_findings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, cloud_info.namespace, compliance_finding.asset_uid, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status, image_digest, image_id, image_registry, image_repository, image_tag | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The maximum number of images for which assessments are to be returned: 1-100. Default is 100. Use with the after parameter to manage pagination of results. | [optional] |

### Return type

[**DomainAPIResponseImagesFindingsV1**](DomainAPIResponseImagesFindingsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_nodes_findings

> <DomainAPIResponseNodesFindingsV1> combined_nodes_findings(opts)

Returns detailed compliance assessment results for kubernetes nodes, providing the information needed to identify compliance violations.

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

api_instance = Falcon::KubernetesContainerCompliance.new
opts = {
  filter: 'filter_example', # String | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.asset_uid, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status, aid, node_id, node_name, node_type
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56 # Integer | The maximum number of nodes for which assessments are to be returned: 1-100. Default is 100. Use with the after parameter to manage pagination of results.
}

begin
  # Returns detailed compliance assessment results for kubernetes nodes, providing the information needed to identify compliance violations.
  result = api_instance.combined_nodes_findings(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->combined_nodes_findings: #{e}"
end
```

#### Using the combined_nodes_findings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAPIResponseNodesFindingsV1>, Integer, Hash)> combined_nodes_findings_with_http_info(opts)

```ruby
begin
  # Returns detailed compliance assessment results for kubernetes nodes, providing the information needed to identify compliance violations.
  data, status_code, headers = api_instance.combined_nodes_findings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAPIResponseNodesFindingsV1>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->combined_nodes_findings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL filter expression used to limit the results. Filter fields include: cid, cloud_info.cloud_account_id, cloud_info.cloud_provider, cloud_info.cloud_region, cloud_info.cluster_id, cloud_info.cluster_name, cloud_info.cluster_type, compliance_finding.asset_type, compliance_finding.asset_uid, compliance_finding.framework_name, compliance_finding.framework_name_version, compliance_finding.framework_version, compliance_finding.id, compliance_finding.severity, compliance_finding.status, aid, node_id, node_name, node_type | [optional] |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The maximum number of nodes for which assessments are to be returned: 1-100. Default is 100. Use with the after parameter to manage pagination of results. | [optional] |

### Return type

[**DomainAPIResponseNodesFindingsV1**](DomainAPIResponseNodesFindingsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules_metadata_by_id

> <DomainRuleMetadataResponse> get_rules_metadata_by_id(ids)

Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.

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

api_instance = Falcon::KubernetesContainerCompliance.new
ids = ['inner_example'] # Array<String> | comma separated list of rule ids

begin
  # Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.
  result = api_instance.get_rules_metadata_by_id(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->get_rules_metadata_by_id: #{e}"
end
```

#### Using the get_rules_metadata_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRuleMetadataResponse>, Integer, Hash)> get_rules_metadata_by_id_with_http_info(ids)

```ruby
begin
  # Retrieve detailed compliance rule information including descriptions, remediation steps, and audit procedures by specifying rule identifiers.
  data, status_code, headers = api_instance.get_rules_metadata_by_id_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRuleMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling KubernetesContainerCompliance->get_rules_metadata_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | comma separated list of rule ids |  |

### Return type

[**DomainRuleMetadataResponse**](DomainRuleMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

