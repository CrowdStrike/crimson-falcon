# Falcon::Discover

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_applications**](Discover.md#combined_applications) | **GET** /discover/combined/applications/v1 | Search for applications in your environment by providing an FQL filter and paging details. Returns details on applications which match the filter criteria. |
| [**combined_hosts**](Discover.md#combined_hosts) | **GET** /discover/combined/hosts/v1 | Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns details on assets which match the filter criteria. |
| [**get_accounts**](Discover.md#get_accounts) | **GET** /discover/entities/accounts/v1 | Get details on accounts by providing one or more IDs. |
| [**get_applications**](Discover.md#get_applications) | **GET** /discover/entities/applications/v1 | Get details on applications by providing one or more IDs. |
| [**get_hosts**](Discover.md#get_hosts) | **GET** /discover/entities/hosts/v1 | Get details on assets by providing one or more IDs. |
| [**get_logins**](Discover.md#get_logins) | **GET** /discover/entities/logins/v1 | Get details on logins by providing one or more IDs. |
| [**query_accounts**](Discover.md#query_accounts) | **GET** /discover/queries/accounts/v1 | Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria. |
| [**query_applications**](Discover.md#query_applications) | **GET** /discover/queries/applications/v1 | Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria. |
| [**query_hosts**](Discover.md#query_hosts) | **GET** /discover/queries/hosts/v1 | Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria. |
| [**query_logins**](Discover.md#query_logins) | **GET** /discover/queries/logins/v1 | Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria. |


## combined_applications

> <DomainDiscoverAPICombinedApplicationsResponse> combined_applications(filter, opts)

Search for applications in your environment by providing an FQL filter and paging details. Returns details on applications which match the filter criteria.

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

api_instance = Falcon::Discover.new
filter = 'filter_example' # String | Search for applications in your environment by providing an FQL filter.     Available filter fields that support exact match: name, version, vendor, name_vendor, name_vendor_version, first_seen_timestamp, installation_timestamp, architectures, installation_paths, versioning_scheme, groups, is_normalized, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, last_used_timestamp, last_updated_timestamp, is_suspicious, host.id, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports wildcard (*): name, version, vendor, name_vendor, name_vendor_version, architectures, installation_paths, groups, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports range comparisons (>, <, >=, <=): first_seen_timestamp, installation_timestamp, last_used_timestamp, last_updated_timestamp     All filter fields and operations supports negation (!).
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of application ids to return in this response (Min: 1, Max: 1000, Default: 100). Use with the `after` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort applications by their properties. A single sort field is allowed.
  facet: ['inner_example'] # Array<String> | Select various details blocks to be returned for each application entity. Supported values:  <ul><li>browser_extension</li><li>host_info</li><li>install_usage</li></ul>
}

begin
  # Search for applications in your environment by providing an FQL filter and paging details. Returns details on applications which match the filter criteria.
  result = api_instance.combined_applications(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->combined_applications: #{e}"
end
```

#### Using the combined_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPICombinedApplicationsResponse>, Integer, Hash)> combined_applications_with_http_info(filter, opts)

```ruby
begin
  # Search for applications in your environment by providing an FQL filter and paging details. Returns details on applications which match the filter criteria.
  data, status_code, headers = api_instance.combined_applications_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPICombinedApplicationsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Discover->combined_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Search for applications in your environment by providing an FQL filter.     Available filter fields that support exact match: name, version, vendor, name_vendor, name_vendor_version, first_seen_timestamp, installation_timestamp, architectures, installation_paths, versioning_scheme, groups, is_normalized, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, last_used_timestamp, last_updated_timestamp, is_suspicious, host.id, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports wildcard (*): name, version, vendor, name_vendor, name_vendor_version, architectures, installation_paths, groups, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, installation_timestamp, last_used_timestamp, last_updated_timestamp     All filter fields and operations supports negation (!). |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of application ids to return in this response (Min: 1, Max: 1000, Default: 100). Use with the &#x60;after&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort applications by their properties. A single sort field is allowed. | [optional] |
| **facet** | [**Array&lt;String&gt;**](String.md) | Select various details blocks to be returned for each application entity. Supported values:  &lt;ul&gt;&lt;li&gt;browser_extension&lt;/li&gt;&lt;li&gt;host_info&lt;/li&gt;&lt;li&gt;install_usage&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainDiscoverAPICombinedApplicationsResponse**](DomainDiscoverAPICombinedApplicationsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## combined_hosts

> <DomainDiscoverAPICombinedHostsResponse> combined_hosts(filter, opts)

Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns details on assets which match the filter criteria.

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

api_instance = Falcon::Discover.new
filter = 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>entity_type:'managed'</li><li>product_type_desc:'Workstation'</li><li>platform_name:'Windows'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    Available filter fields that support exact match: id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, local_ips_count, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_count, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, data_providers_count, mac_addresses, local_ip_addresses, reduced_functionality_mode, number_of_disk_drives, processor_package_count, physical_core_count, logical_core_count, total_disk_space, disk_sizes.disk_name, disk_sizes.disk_space, cpu_processor_name, total_memory, encryption_status, encrypted_drives, encrypted_drives_count, unencrypted_drives, unencrypted_drives_count, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, total_bios_files, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.mount_path, mount_storage_info.used_space, mount_storage_info.available_space, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, ad_user_account_control, account_enabled, creation_timestamp, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports wildcard (*): id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, mac_addresses, local_ip_addresses, reduced_functionality_mode, disk_sizes.disk_name, cpu_processor_name, encryption_status, encrypted_drives, unencrypted_drives, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, mount_storage_info.mount_path, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, account_enabled, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports range comparisons (>, <, >=, <=): first_seen_timestamp, last_seen_timestamp, local_ips_count, discoverer_count, confidence, number_of_disk_drives, processor_package_count, physical_core_count, data_providers_count, logical_core_count, total_disk_space, disk_sizes.disk_space, total_memory, encrypted_drives_count, unencrypted_drives_count, total_bios_files, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.used_space, mount_storage_info.available_space, ad_user_account_control, creation_timestamp    All filter fields and operations supports negation (!).
opts = {
  after: 'after_example', # String | A pagination token used with the `limit` parameter to manage pagination of results. On your first request, don't provide an `after` token. On subsequent requests, provide the `after` token from the previous response to continue from that place in the results.
  limit: 56, # Integer | The number of asset IDs to return in this response (min: 1, max: 1000, default: 100). Use with the `after` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assets by their properties. A single sort field is allowed. Common sort options include:  <ul><li>hostname|asc</li><li>product_type_desc|desc</li></ul>
  facet: ['inner_example'] # Array<String> | Select various details blocks to be returned for each host entity. Supported values:  <ul><li>system_insights</li><li>third_party</li><li>risk_factors</li></ul>
}

begin
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns details on assets which match the filter criteria.
  result = api_instance.combined_hosts(filter, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->combined_hosts: #{e}"
end
```

#### Using the combined_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainDiscoverAPICombinedHostsResponse>, Integer, Hash)> combined_hosts_with_http_info(filter, opts)

```ruby
begin
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns details on assets which match the filter criteria.
  data, status_code, headers = api_instance.combined_hosts_with_http_info(filter, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainDiscoverAPICombinedHostsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Discover->combined_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, local_ips_count, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_count, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, data_providers_count, mac_addresses, local_ip_addresses, reduced_functionality_mode, number_of_disk_drives, processor_package_count, physical_core_count, logical_core_count, total_disk_space, disk_sizes.disk_name, disk_sizes.disk_space, cpu_processor_name, total_memory, encryption_status, encrypted_drives, encrypted_drives_count, unencrypted_drives, unencrypted_drives_count, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, total_bios_files, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.mount_path, mount_storage_info.used_space, mount_storage_info.available_space, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, ad_user_account_control, account_enabled, creation_timestamp, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports wildcard (*): id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, mac_addresses, local_ip_addresses, reduced_functionality_mode, disk_sizes.disk_name, cpu_processor_name, encryption_status, encrypted_drives, unencrypted_drives, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, mount_storage_info.mount_path, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, account_enabled, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, last_seen_timestamp, local_ips_count, discoverer_count, confidence, number_of_disk_drives, processor_package_count, physical_core_count, data_providers_count, logical_core_count, total_disk_space, disk_sizes.disk_space, total_memory, encrypted_drives_count, unencrypted_drives_count, total_bios_files, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.used_space, mount_storage_info.available_space, ad_user_account_control, creation_timestamp    All filter fields and operations supports negation (!). |  |
| **after** | **String** | A pagination token used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don&#39;t provide an &#x60;after&#x60; token. On subsequent requests, provide the &#x60;after&#x60; token from the previous response to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of asset IDs to return in this response (min: 1, max: 1000, default: 100). Use with the &#x60;after&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **facet** | [**Array&lt;String&gt;**](String.md) | Select various details blocks to be returned for each host entity. Supported values:  &lt;ul&gt;&lt;li&gt;system_insights&lt;/li&gt;&lt;li&gt;third_party&lt;/li&gt;&lt;li&gt;risk_factors&lt;/li&gt;&lt;/ul&gt; | [optional] |

### Return type

[**DomainDiscoverAPICombinedHostsResponse**](DomainDiscoverAPICombinedHostsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts

> <DomainDiscoverAPIAccountEntitiesResponse> get_accounts(ids)

Get details on accounts by providing one or more IDs.

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

api_instance = Falcon::Discover.new
ids = ['inner_example'] # Array<String> | One or more account IDs (max: 100). Find account IDs with GET `/discover/queries/accounts/v1`

begin
  # Get details on accounts by providing one or more IDs.
  result = api_instance.get_accounts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->get_accounts: #{e}"
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
  puts "Error when calling Discover->get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more account IDs (max: 100). Find account IDs with GET &#x60;/discover/queries/accounts/v1&#x60; |  |

### Return type

[**DomainDiscoverAPIAccountEntitiesResponse**](DomainDiscoverAPIAccountEntitiesResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
ids = ['inner_example'] # Array<String> | The IDs of applications to retrieve. (Min: 1, Max: 100)

begin
  # Get details on applications by providing one or more IDs.
  result = api_instance.get_applications(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->get_applications: #{e}"
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
  puts "Error when calling Discover->get_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of applications to retrieve. (Min: 1, Max: 100) |  |

### Return type

[**DomainDiscoverAPIApplicationEntitiesResponse**](DomainDiscoverAPIApplicationEntitiesResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
ids = ['inner_example'] # Array<String> | One or more asset IDs (max: 100). Find asset IDs with GET `/discover/queries/hosts/v1`

begin
  # Get details on assets by providing one or more IDs.
  result = api_instance.get_hosts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->get_hosts: #{e}"
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
  puts "Error when calling Discover->get_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/discover/queries/hosts/v1&#x60; |  |

### Return type

[**DomainDiscoverAPIHostEntitiesResponse**](DomainDiscoverAPIHostEntitiesResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
ids = ['inner_example'] # Array<String> | One or more login IDs (max: 100). Find login IDs with GET `/discover/queries/logins/v1`

begin
  # Get details on logins by providing one or more IDs.
  result = api_instance.get_logins(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->get_logins: #{e}"
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
  puts "Error when calling Discover->get_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | One or more login IDs (max: 100). Find login IDs with GET &#x60;/discover/queries/logins/v1&#x60; |  |

### Return type

[**DomainDiscoverAPILoginEntitiesResponse**](DomainDiscoverAPILoginEntitiesResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort accounts by their properties. A single sort field is allowed. Common sort options include:  <ul><li>username|asc</li><li>last_failed_login_timestamp|desc</li></ul>
  filter: 'filter_example' # String | Filter accounts using an FQL query. Common filter options include:<ul><li>account_type:'Local'</li><li>admin_privileges:'Yes'</li><li>first_seen_timestamp:<'now-7d'</li><li>last_successful_login_type:'Terminal server'</li></ul>    Available filter fields that support exact match: id, cid, user_sid, account_name, username, account_type, admin_privileges, first_seen_timestamp, last_successful_login_type, last_successful_login_timestamp, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_timestamp, last_failed_login_hostname, password_last_set_timestamp, local_admin_privileges    Available filter fields that supports wildcard (*): id, cid, user_sid, account_name, username, account_type, admin_privileges, last_successful_login_type, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_hostname, local_admin_privileges    Available filter fields that supports range comparisons (>, <, >=, <=): first_seen_timestamp, last_successful_login_timestamp,last_failed_login_timestamp, password_last_set_timestamp    All filter fields and operations supports negation (!).
}

begin
  # Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.
  result = api_instance.query_accounts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->query_accounts: #{e}"
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
  puts "Error when calling Discover->query_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort accounts by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;username|asc&lt;/li&gt;&lt;li&gt;last_failed_login_timestamp|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter accounts using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;Yes&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;last_successful_login_type:&#39;Terminal server&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, cid, user_sid, account_name, username, account_type, admin_privileges, first_seen_timestamp, last_successful_login_type, last_successful_login_timestamp, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_timestamp, last_failed_login_hostname, password_last_set_timestamp, local_admin_privileges    Available filter fields that supports wildcard (*): id, cid, user_sid, account_name, username, account_type, admin_privileges, last_successful_login_type, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_hostname, local_admin_privileges    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, last_successful_login_timestamp,last_failed_login_timestamp, password_last_set_timestamp    All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of application ids to return in this response (Min: 1, Max: 100, Default: 100).
  sort: 'sort_example', # String | Sort applications by their properties. A single sort field is allowed.
  filter: 'filter_example' # String | Search for applications in your environment by providing an FQL filter.     Available filter fields that support exact match: name, version, vendor, name_vendor, name_vendor_version, first_seen_timestamp, installation_timestamp, architectures, installation_paths, versioning_scheme, groups, is_normalized, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, last_used_timestamp, last_updated_timestamp, is_suspicious, host.id, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports wildcard (*): name, version, vendor, name_vendor, name_vendor_version, architectures, installation_paths, groups, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports range comparisons (>, <, >=, <=): first_seen_timestamp, installation_timestamp, last_used_timestamp, last_updated_timestamp     All filter fields and operations supports negation (!).
}

begin
  # Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.
  result = api_instance.query_applications(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->query_applications: #{e}"
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
  puts "Error when calling Discover->query_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of application ids to return in this response (Min: 1, Max: 100, Default: 100). | [optional] |
| **sort** | **String** | Sort applications by their properties. A single sort field is allowed. | [optional] |
| **filter** | **String** | Search for applications in your environment by providing an FQL filter.     Available filter fields that support exact match: name, version, vendor, name_vendor, name_vendor_version, first_seen_timestamp, installation_timestamp, architectures, installation_paths, versioning_scheme, groups, is_normalized, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, last_used_timestamp, last_updated_timestamp, is_suspicious, host.id, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports wildcard (*): name, version, vendor, name_vendor, name_vendor_version, architectures, installation_paths, groups, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, installation_timestamp, last_used_timestamp, last_updated_timestamp     All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

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

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "us-1" # or "us-2", "eu-1", "us-gov1"
end

api_instance = Falcon::Discover.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort assets by their properties. A single sort field is allowed. Common sort options include:  <ul><li>hostname|asc</li><li>product_type_desc|desc</li></ul>
  filter: 'filter_example' # String | Filter assets using an FQL query. Common filter options include:<ul><li>entity_type:'managed'</li><li>product_type_desc:'Workstation'</li><li>platform_name:'Windows'</li><li>last_seen_timestamp:>'now-7d'</li></ul>    Available filter fields that support exact match: id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, local_ips_count, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_count, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, data_providers_count, mac_addresses, local_ip_addresses, reduced_functionality_mode, number_of_disk_drives, processor_package_count, physical_core_count, logical_core_count, total_disk_space, disk_sizes.disk_name, disk_sizes.disk_space, cpu_processor_name, total_memory, encryption_status, encrypted_drives, encrypted_drives_count, unencrypted_drives, unencrypted_drives_count, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, total_bios_files, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.mount_path, mount_storage_info.used_space, mount_storage_info.available_space, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, ad_user_account_control, account_enabled, creation_timestamp, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports wildcard (*): id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, mac_addresses, local_ip_addresses, reduced_functionality_mode, disk_sizes.disk_name, cpu_processor_name, encryption_status, encrypted_drives, unencrypted_drives, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, mount_storage_info.mount_path, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, account_enabled, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports range comparisons (>, <, >=, <=): first_seen_timestamp, last_seen_timestamp, local_ips_count, discoverer_count, confidence, number_of_disk_drives, processor_package_count, physical_core_count, data_providers_count, logical_core_count, total_disk_space, disk_sizes.disk_space, total_memory, encrypted_drives_count, unencrypted_drives_count, total_bios_files, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.used_space, mount_storage_info.available_space, ad_user_account_control, creation_timestamp    All filter fields and operations supports negation (!).
}

begin
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  result = api_instance.query_hosts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->query_hosts: #{e}"
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
  puts "Error when calling Discover->query_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, local_ips_count, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_count, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, data_providers_count, mac_addresses, local_ip_addresses, reduced_functionality_mode, number_of_disk_drives, processor_package_count, physical_core_count, logical_core_count, total_disk_space, disk_sizes.disk_name, disk_sizes.disk_space, cpu_processor_name, total_memory, encryption_status, encrypted_drives, encrypted_drives_count, unencrypted_drives, unencrypted_drives_count, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, total_bios_files, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.mount_path, mount_storage_info.used_space, mount_storage_info.available_space, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, ad_user_account_control, account_enabled, creation_timestamp, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports wildcard (*): id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, mac_addresses, local_ip_addresses, reduced_functionality_mode, disk_sizes.disk_name, cpu_processor_name, encryption_status, encrypted_drives, unencrypted_drives, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, mount_storage_info.mount_path, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, account_enabled, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, last_seen_timestamp, local_ips_count, discoverer_count, confidence, number_of_disk_drives, processor_package_count, physical_core_count, data_providers_count, logical_core_count, total_disk_space, disk_sizes.disk_space, total_memory, encrypted_drives_count, unencrypted_drives_count, total_bios_files, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.used_space, mount_storage_info.available_space, ad_user_account_control, creation_timestamp    All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_logins

> <MsaQueryResponse> query_logins(opts)

Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.

The API endpoint returns data only if the response set includes 10,000 or fewer items. This limit applies to the total API response size, regardless of your pagination sizes with the `limit` and `offset` parameters. If your response set includes more than 10,000 items, the CrowdStrike API returns an HTML 400 response instead. To avoid this issue, use the filter parameter to reduce the total number of items in the API response.

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

api_instance = Falcon::Discover.new
opts = {
  offset: 56, # Integer | An offset used with the `limit` parameter to manage pagination of results. On your first request, don’t provide an `offset`. On subsequent requests, add previous `offset` with the previous `limit` to continue from that place in the results.
  limit: 56, # Integer | The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the `offset` parameter to manage pagination of results.
  sort: 'sort_example', # String | Sort logins by their properties. A single sort field is allowed. Common sort options include:  <ul><li>account_name|asc</li><li>login_timestamp|desc</li></ul>
  filter: 'filter_example' # String | Filter logins using an FQL query. Common filter options include:<ul><li>account_type:'Local'</li><li>login_type:'Interactive'</li><li>first_seen_timestamp:<'now-7d'</li><li>admin_privileges:'No'</li></ul>    Available filter fields that support exact match: id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_timestamp, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, is_suspicious, failure_description, login_event_count, aggregation_time_interval    Available filter fields that supports wildcard (*): id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, failure_description, aggregation_time_interval    Available filter fields that supports range comparisons (>, <, >=, <=): login_timestamp, login_event_count    All filter fields and operations supports negation (!).
}

begin
  # Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.
  result = api_instance.query_logins(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Discover->query_logins: #{e}"
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
  puts "Error when calling Discover->query_logins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results. | [optional] |
| **limit** | **Integer** | The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort logins by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;account_name|asc&lt;/li&gt;&lt;li&gt;login_timestamp|desc&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **filter** | **String** | Filter logins using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;login_type:&#39;Interactive&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;No&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_timestamp, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, is_suspicious, failure_description, login_event_count, aggregation_time_interval    Available filter fields that supports wildcard (*): id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, failure_description, aggregation_time_interval    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): login_timestamp, login_event_count    All filter fields and operations supports negation (!). | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

