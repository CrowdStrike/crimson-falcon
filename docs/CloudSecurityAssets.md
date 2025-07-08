# Falcon::CloudSecurityAssets

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_security_assets_combined_compliance_by_account**](CloudSecurityAssets.md#cloud_security_assets_combined_compliance_by_account) | **GET** /cloud-security-assets/combined/compliance-controls/by-account-region-and-resource-type/v1 | Gets combined compliance data aggregated by account and region. Results can be filtered and sorted. |
| [**cloud_security_assets_entities_get**](CloudSecurityAssets.md#cloud_security_assets_entities_get) | **GET** /cloud-security-assets/entities/resources/v1 | Gets raw resources based on the provided IDs param.  Maximum of 100 resources can be requested with this method.  Use POST method with same path if more are required. |
| [**cloud_security_assets_queries**](CloudSecurityAssets.md#cloud_security_assets_queries) | **GET** /cloud-security-assets/queries/resources/v1 | Gets a list of resource IDs for the given parameters, filters and sort criteria |


## cloud_security_assets_combined_compliance_by_account

> <AssetsComplianceResponse> cloud_security_assets_combined_compliance_by_account(opts)

Gets combined compliance data aggregated by account and region. Results can be filtered and sorted.

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

api_instance = Falcon::CloudSecurityAssets.new
opts = {
  filter: 'filter_example', # String | FQL string to filter on asset contents. Filterable fields include: - `account_id` - `account_name` - `assessment_id` - `business_impact` - `cloud_group` - `cloud_label` - `cloud_label_id` - `cloud_provider` - `cloud_scope` - `compliant` - `control.benchmark.name` - `control.benchmark.version` - `control.framework` - `control.name` - `control.type` - `control.version` - `environment` - `last_evaluated` - `region` - `resource_provider` - `resource_type` - `resource_type_name` - `service` - `service_category` - `severities` - `tag_key` - `tag_value`
  sort: 'sort_example', # String | Sort expression in format: field|direction (e.g., last_evaluated|desc). Allowed sort fields:  - `account_id` - `account_name` - `assessment_id` - `cloud_provider` - `control.benchmark.name` - `control.benchmark.version` - `control.framework` - `control.name` - `control.type` - `control.version` - `last_evaluated` - `region` - `resource_counts.compliant` - `resource_counts.non_compliant` - `resource_counts.total` - `resource_provider` - `resource_type` - `resource_type_name` - `service` - `service_category`
  limit: 56, # Integer | The maximum number of items to return. When not specified or 0, 20 is used. When larger than 10000, 10000 is used.
  offset: 56, # Integer | Offset returned controls. Use only one of 'offset' and 'after' parameter for paginating. 'offset' can only be used on offsets < 10,000. For paginating through the entire result set, use 'after' parameter
  after: 'after_example', # String | token-based pagination. use for paginating through an entire result set. Use only one of 'offset' and 'after' parameters for paginating
  include_failing_iom_severity_counts: true # Boolean | Include counts of failing IOMs by severity level
}

begin
  # Gets combined compliance data aggregated by account and region. Results can be filtered and sorted.
  result = api_instance.cloud_security_assets_combined_compliance_by_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_combined_compliance_by_account: #{e}"
end
```

#### Using the cloud_security_assets_combined_compliance_by_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetsComplianceResponse>, Integer, Hash)> cloud_security_assets_combined_compliance_by_account_with_http_info(opts)

```ruby
begin
  # Gets combined compliance data aggregated by account and region. Results can be filtered and sorted.
  data, status_code, headers = api_instance.cloud_security_assets_combined_compliance_by_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetsComplianceResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_combined_compliance_by_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL string to filter on asset contents. Filterable fields include: - &#x60;account_id&#x60; - &#x60;account_name&#x60; - &#x60;assessment_id&#x60; - &#x60;business_impact&#x60; - &#x60;cloud_group&#x60; - &#x60;cloud_label&#x60; - &#x60;cloud_label_id&#x60; - &#x60;cloud_provider&#x60; - &#x60;cloud_scope&#x60; - &#x60;compliant&#x60; - &#x60;control.benchmark.name&#x60; - &#x60;control.benchmark.version&#x60; - &#x60;control.framework&#x60; - &#x60;control.name&#x60; - &#x60;control.type&#x60; - &#x60;control.version&#x60; - &#x60;environment&#x60; - &#x60;last_evaluated&#x60; - &#x60;region&#x60; - &#x60;resource_provider&#x60; - &#x60;resource_type&#x60; - &#x60;resource_type_name&#x60; - &#x60;service&#x60; - &#x60;service_category&#x60; - &#x60;severities&#x60; - &#x60;tag_key&#x60; - &#x60;tag_value&#x60; | [optional] |
| **sort** | **String** | Sort expression in format: field|direction (e.g., last_evaluated|desc). Allowed sort fields:  - &#x60;account_id&#x60; - &#x60;account_name&#x60; - &#x60;assessment_id&#x60; - &#x60;cloud_provider&#x60; - &#x60;control.benchmark.name&#x60; - &#x60;control.benchmark.version&#x60; - &#x60;control.framework&#x60; - &#x60;control.name&#x60; - &#x60;control.type&#x60; - &#x60;control.version&#x60; - &#x60;last_evaluated&#x60; - &#x60;region&#x60; - &#x60;resource_counts.compliant&#x60; - &#x60;resource_counts.non_compliant&#x60; - &#x60;resource_counts.total&#x60; - &#x60;resource_provider&#x60; - &#x60;resource_type&#x60; - &#x60;resource_type_name&#x60; - &#x60;service&#x60; - &#x60;service_category&#x60; | [optional] |
| **limit** | **Integer** | The maximum number of items to return. When not specified or 0, 20 is used. When larger than 10000, 10000 is used. | [optional][default to 20] |
| **offset** | **Integer** | Offset returned controls. Use only one of &#39;offset&#39; and &#39;after&#39; parameter for paginating. &#39;offset&#39; can only be used on offsets &lt; 10,000. For paginating through the entire result set, use &#39;after&#39; parameter | [optional] |
| **after** | **String** | token-based pagination. use for paginating through an entire result set. Use only one of &#39;offset&#39; and &#39;after&#39; parameters for paginating | [optional] |
| **include_failing_iom_severity_counts** | **Boolean** | Include counts of failing IOMs by severity level | [optional][default to false] |

### Return type

[**AssetsComplianceResponse**](AssetsComplianceResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_security_assets_entities_get

> <AssetsGetResourcesResponse> cloud_security_assets_entities_get(opts)

Gets raw resources based on the provided IDs param.  Maximum of 100 resources can be requested with this method.  Use POST method with same path if more are required.

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

api_instance = Falcon::CloudSecurityAssets.new
opts = {
  ids: ['inner_example'] # Array<String> | List of assets to return (maximum 100 IDs allowed).  Use POST method with same path if more entities are required.
}

begin
  # Gets raw resources based on the provided IDs param.  Maximum of 100 resources can be requested with this method.  Use POST method with same path if more are required.
  result = api_instance.cloud_security_assets_entities_get(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_entities_get: #{e}"
end
```

#### Using the cloud_security_assets_entities_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetsGetResourcesResponse>, Integer, Hash)> cloud_security_assets_entities_get_with_http_info(opts)

```ruby
begin
  # Gets raw resources based on the provided IDs param.  Maximum of 100 resources can be requested with this method.  Use POST method with same path if more are required.
  data, status_code, headers = api_instance.cloud_security_assets_entities_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetsGetResourcesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_entities_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | List of assets to return (maximum 100 IDs allowed).  Use POST method with same path if more entities are required. | [optional] |

### Return type

[**AssetsGetResourcesResponse**](AssetsGetResourcesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_security_assets_queries

> <AssetsGetResourceIDsResponse> cloud_security_assets_queries(opts)

Gets a list of resource IDs for the given parameters, filters and sort criteria

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

api_instance = Falcon::CloudSecurityAssets.new
opts = {
  after: 'after_example', # String | token-based pagination. use for paginating through an entire result set. Use only one of 'offset' and 'after' parameters for paginating
  filter: 'filter_example', # String | FQL string to filter on asset contents. Filterable fields include: - `account_id` - `account_name` - `active` - `application_security.business_applications` - `application_security.business_criticality` - `application_security.service_names` - `azure.vm_id` - `business_impact` - `cloud_group` - `cloud_label` - `cloud_label_id` - `cloud_provider` - `cloud_scope` - `cluster_id` - `cluster_name` - `compartment_ocid` - `compliant.benchmark_name` - `compliant.benchmark_version` - `compliant.framework` - `compliant.policy_id` - `compliant.requirement` - `compliant.rule` - `compliant.section` - `configuration.id` - `creation_time` - `cve_ids` - `data_classifications.found` - `data_classifications.label` - `data_classifications.label_id` - `data_classifications.scanned` - `data_classifications.tag` - `data_classifications.tag_id` - `environment` - `exprt_ratings` - `first_seen` - `highest_severity` - `id` - `insights.boolean_value` - `insights.id` - `instance_id` - `instance_state` - `ioa_count` - `iom_count` - `legacy_resource_id` - `legacy_uuid` - `managed_by` - `non_compliant.benchmark_name` - `non_compliant.benchmark_version` - `non_compliant.framework` - `non_compliant.policy_id` - `non_compliant.requirement` - `non_compliant.rule` - `non_compliant.section` - `non_compliant.severity` - `organization_Id` - `os_version` - `platform_name` - `publicly_exposed` - `region` - `resource_id` - `resource_name` - `resource_type` - `resource_type_name` - `sensor_priority` - `service` - `service_category` - `severity` - `snapshot_detections` - `ssm_managed` - `status` - `tag_key` - `tag_value` - `tags` - `tenant_id` - `updated_at` - `vmware.guest_os_id` - `vmware.guest_os_version` - `vmware.host_system_name` - `vmware.host_type` - `vmware.instance_uuid` - `vmware.vm_host_name` - `vmware.vm_tools_status` - `zone`
  sort: 'sort_example', # String | The field to sort on.  Sortable fields include: - `account_id` - `account_name` - `active` - `cloud_provider` - `cluster_id` - `cluster_name` - `compartment_name` - `compartment_ocid` - `compartment_path` - `creation_time` - `data_classifications.found` - `data_classifications.scanned` - `first_seen` - `id` - `instance_id` - `instance_state` - `ioa_count` - `iom_count` - `managed_by` - `organization_Id` - `os_version` - `platform_name` - `publicly_exposed` - `region` - `resource_id` - `resource_name` - `resource_type` - `resource_type_name` - `service` - `service_category` - `ssm_managed` - `status` - `tenancy_name` - `tenancy_ocid` - `tenancy_type` - `tenant_id` - `updated_at` - `vmware.guest_os_id` - `vmware.guest_os_version` - `vmware.host_system_name` - `vmware.host_type` - `vmware.instance_uuid` - `vmware.vm_host_name` - `vmware.vm_tools_status` - `zone`  Use `|asc` or `|desc` suffix to specify sort direction.
  limit: 56, # Integer | The maximum number of items to return. When not specified or 0, 500 is used. When larger than 1000, 1000 is used.
  offset: 56 # Integer | Offset returned assets. Use only one of 'offset' and 'after' parameter for paginating. 'offset' can only be used on offsets < 10,000. For paginating through the entire result set, use 'after' parameter
}

begin
  # Gets a list of resource IDs for the given parameters, filters and sort criteria
  result = api_instance.cloud_security_assets_queries(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_queries: #{e}"
end
```

#### Using the cloud_security_assets_queries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssetsGetResourceIDsResponse>, Integer, Hash)> cloud_security_assets_queries_with_http_info(opts)

```ruby
begin
  # Gets a list of resource IDs for the given parameters, filters and sort criteria
  data, status_code, headers = api_instance.cloud_security_assets_queries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssetsGetResourceIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSecurityAssets->cloud_security_assets_queries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | token-based pagination. use for paginating through an entire result set. Use only one of &#39;offset&#39; and &#39;after&#39; parameters for paginating | [optional] |
| **filter** | **String** | FQL string to filter on asset contents. Filterable fields include: - &#x60;account_id&#x60; - &#x60;account_name&#x60; - &#x60;active&#x60; - &#x60;application_security.business_applications&#x60; - &#x60;application_security.business_criticality&#x60; - &#x60;application_security.service_names&#x60; - &#x60;azure.vm_id&#x60; - &#x60;business_impact&#x60; - &#x60;cloud_group&#x60; - &#x60;cloud_label&#x60; - &#x60;cloud_label_id&#x60; - &#x60;cloud_provider&#x60; - &#x60;cloud_scope&#x60; - &#x60;cluster_id&#x60; - &#x60;cluster_name&#x60; - &#x60;compartment_ocid&#x60; - &#x60;compliant.benchmark_name&#x60; - &#x60;compliant.benchmark_version&#x60; - &#x60;compliant.framework&#x60; - &#x60;compliant.policy_id&#x60; - &#x60;compliant.requirement&#x60; - &#x60;compliant.rule&#x60; - &#x60;compliant.section&#x60; - &#x60;configuration.id&#x60; - &#x60;creation_time&#x60; - &#x60;cve_ids&#x60; - &#x60;data_classifications.found&#x60; - &#x60;data_classifications.label&#x60; - &#x60;data_classifications.label_id&#x60; - &#x60;data_classifications.scanned&#x60; - &#x60;data_classifications.tag&#x60; - &#x60;data_classifications.tag_id&#x60; - &#x60;environment&#x60; - &#x60;exprt_ratings&#x60; - &#x60;first_seen&#x60; - &#x60;highest_severity&#x60; - &#x60;id&#x60; - &#x60;insights.boolean_value&#x60; - &#x60;insights.id&#x60; - &#x60;instance_id&#x60; - &#x60;instance_state&#x60; - &#x60;ioa_count&#x60; - &#x60;iom_count&#x60; - &#x60;legacy_resource_id&#x60; - &#x60;legacy_uuid&#x60; - &#x60;managed_by&#x60; - &#x60;non_compliant.benchmark_name&#x60; - &#x60;non_compliant.benchmark_version&#x60; - &#x60;non_compliant.framework&#x60; - &#x60;non_compliant.policy_id&#x60; - &#x60;non_compliant.requirement&#x60; - &#x60;non_compliant.rule&#x60; - &#x60;non_compliant.section&#x60; - &#x60;non_compliant.severity&#x60; - &#x60;organization_Id&#x60; - &#x60;os_version&#x60; - &#x60;platform_name&#x60; - &#x60;publicly_exposed&#x60; - &#x60;region&#x60; - &#x60;resource_id&#x60; - &#x60;resource_name&#x60; - &#x60;resource_type&#x60; - &#x60;resource_type_name&#x60; - &#x60;sensor_priority&#x60; - &#x60;service&#x60; - &#x60;service_category&#x60; - &#x60;severity&#x60; - &#x60;snapshot_detections&#x60; - &#x60;ssm_managed&#x60; - &#x60;status&#x60; - &#x60;tag_key&#x60; - &#x60;tag_value&#x60; - &#x60;tags&#x60; - &#x60;tenant_id&#x60; - &#x60;updated_at&#x60; - &#x60;vmware.guest_os_id&#x60; - &#x60;vmware.guest_os_version&#x60; - &#x60;vmware.host_system_name&#x60; - &#x60;vmware.host_type&#x60; - &#x60;vmware.instance_uuid&#x60; - &#x60;vmware.vm_host_name&#x60; - &#x60;vmware.vm_tools_status&#x60; - &#x60;zone&#x60; | [optional] |
| **sort** | **String** | The field to sort on.  Sortable fields include: - &#x60;account_id&#x60; - &#x60;account_name&#x60; - &#x60;active&#x60; - &#x60;cloud_provider&#x60; - &#x60;cluster_id&#x60; - &#x60;cluster_name&#x60; - &#x60;compartment_name&#x60; - &#x60;compartment_ocid&#x60; - &#x60;compartment_path&#x60; - &#x60;creation_time&#x60; - &#x60;data_classifications.found&#x60; - &#x60;data_classifications.scanned&#x60; - &#x60;first_seen&#x60; - &#x60;id&#x60; - &#x60;instance_id&#x60; - &#x60;instance_state&#x60; - &#x60;ioa_count&#x60; - &#x60;iom_count&#x60; - &#x60;managed_by&#x60; - &#x60;organization_Id&#x60; - &#x60;os_version&#x60; - &#x60;platform_name&#x60; - &#x60;publicly_exposed&#x60; - &#x60;region&#x60; - &#x60;resource_id&#x60; - &#x60;resource_name&#x60; - &#x60;resource_type&#x60; - &#x60;resource_type_name&#x60; - &#x60;service&#x60; - &#x60;service_category&#x60; - &#x60;ssm_managed&#x60; - &#x60;status&#x60; - &#x60;tenancy_name&#x60; - &#x60;tenancy_ocid&#x60; - &#x60;tenancy_type&#x60; - &#x60;tenant_id&#x60; - &#x60;updated_at&#x60; - &#x60;vmware.guest_os_id&#x60; - &#x60;vmware.guest_os_version&#x60; - &#x60;vmware.host_system_name&#x60; - &#x60;vmware.host_type&#x60; - &#x60;vmware.instance_uuid&#x60; - &#x60;vmware.vm_host_name&#x60; - &#x60;vmware.vm_tools_status&#x60; - &#x60;zone&#x60;  Use &#x60;|asc&#x60; or &#x60;|desc&#x60; suffix to specify sort direction. | [optional] |
| **limit** | **Integer** | The maximum number of items to return. When not specified or 0, 500 is used. When larger than 1000, 1000 is used. | [optional][default to 500] |
| **offset** | **Integer** | Offset returned assets. Use only one of &#39;offset&#39; and &#39;after&#39; parameter for paginating. &#39;offset&#39; can only be used on offsets &lt; 10,000. For paginating through the entire result set, use &#39;after&#39; parameter | [optional] |

### Return type

[**AssetsGetResourceIDsResponse**](AssetsGetResourceIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

