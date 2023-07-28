=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::DiscoverApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DiscoverApi' do
  before do
    # run before each test
    @api_instance = Falcon::DiscoverApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DiscoverApi' do
    it 'should create an instance of DiscoverApi' do
      expect(@api_instance).to be_instance_of(Falcon::DiscoverApi)
    end
  end

  # unit tests for get_accounts
  # Get details on accounts by providing one or more IDs.
  # @param ids One or more account IDs (max: 100). Find account IDs with GET &#x60;/discover/queries/accounts/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIAccountEntitiesResponse]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_applications
  # Get details on applications by providing one or more IDs.
  # @param ids The IDs of applications to retrieve. (Min: 1, Max: 100)
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIApplicationEntitiesResponse]
  describe 'get_applications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_hosts
  # Get details on assets by providing one or more IDs.
  # @param ids One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/discover/queries/hosts/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIHostEntitiesResponse]
  describe 'get_hosts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_logins
  # Get details on logins by providing one or more IDs.
  # @param ids One or more login IDs (max: 100). Find login IDs with GET &#x60;/discover/queries/logins/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPILoginEntitiesResponse]
  describe 'get_logins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_accounts
  # Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort accounts by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;username|asc&lt;/li&gt;&lt;li&gt;last_failed_login_timestamp|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter accounts using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;Yes&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;last_successful_login_type:&#39;Terminal server&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, cid, user_sid, account_name, username, account_type, admin_privileges, first_seen_timestamp, last_successful_login_type, last_successful_login_timestamp, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_timestamp, last_failed_login_hostname, password_last_set_timestamp, local_admin_privileges    Available filter fields that supports wildcard (*): id, cid, user_sid, account_name, username, account_type, admin_privileges, last_successful_login_type, last_successful_login_hostname, last_successful_login_remote_ip, last_successful_login_host_country, last_successful_login_host_city, login_domain, last_failed_login_type, last_failed_login_hostname, local_admin_privileges    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, last_successful_login_timestamp,last_failed_login_timestamp, password_last_set_timestamp    All filter fields and operations supports negation (!).
  # @return [MsaQueryResponse]
  describe 'query_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_applications
  # Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of application ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort applications by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for applications in your environment by providing an FQL filter.     Available filter fields that support exact match: name, version, vendor, name_vendor, name_vendor_version, first_seen_timestamp, installation_timestamp, architectures, installation_paths, versioning_scheme, groups, is_normalized, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, last_used_timestamp, last_updated_timestamp, is_suspicious, host.id, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports wildcard (*): name, version, vendor, name_vendor, name_vendor_version, architectures, installation_paths, groups, last_used_user_sid, last_used_user_name, last_used_file_name, last_used_file_hash, host.platform_name, host.hostname, cid, host.os_version, host.machine_domain, host.ou, host.site_name, host.country, host.current_mac_address, host.current_network_prefix, host.tags, host.groups, host.product_type_desc, host.kernel_version, host.system_manufacturer, host.internet_exposure, host.agent_version, host.external_ip, host.aid     Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, installation_timestamp, last_used_timestamp, last_updated_timestamp     All filter fields and operations supports negation (!).
  # @return [MsaspecQueryResponse]
  describe 'query_applications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_hosts
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, local_ips_count, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_count, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, data_providers_count, mac_addresses, local_ip_addresses, reduced_functionality_mode, number_of_disk_drives, processor_package_count, physical_core_count, logical_core_count, total_disk_space, disk_sizes.disk_name, disk_sizes.disk_space, cpu_processor_name, total_memory, encryption_status, encrypted_drives, encrypted_drives_count, unencrypted_drives, unencrypted_drives_count, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, total_bios_files, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.mount_path, mount_storage_info.used_space, mount_storage_info.available_space, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, ad_user_account_control, account_enabled, creation_timestamp, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports wildcard (*): id, aid, entity_type, country, city, platform_name, os_version, kernel_version, product_type_desc, tags, groups, agent_version, system_product_name, system_manufacturer, system_serial_number, bios_manufacturer, bios_version, ou, machine_domain, site_name, external_ip, hostname, network_interfaces.local_ip, network_interfaces.mac_address, network_interfaces.interface_alias, network_interfaces.interface_description, network_interfaces.network_prefix, last_discoverer_aid, discoverer_aids, discoverer_tags, discoverer_platform_names, discoverer_product_type_descs, confidence, internet_exposure,  os_is_eol, data_providers, mac_addresses, local_ip_addresses, reduced_functionality_mode, disk_sizes.disk_name, cpu_processor_name, encryption_status, encrypted_drives, unencrypted_drives, os_security.secure_boot_requested_status, os_security.device_guard_status, os_security.device_guard_status, os_security.device_guard_status, os_security.system_guard_status, os_security.credential_guard_status, os_security.iommu_protection_status, os_security.secure_boot_enabled_status, os_security.uefi_memory_protection_status, os_security.virtualization_based_security_status, os_security.kernel_dma_protection_status, bios_hashes_data.sha256_hash, bios_hashes_data.measurement_type, bios_id, mount_storage_info.mount_path, form_factor, servicenow_id, owned_by, managed_by, assigned_to, department, fqdn, used_for, object_guid, object_sid, account_enabled, email, os_service_pack, location, state, cpu_manufacturer, discovering_by    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): first_seen_timestamp, last_seen_timestamp, local_ips_count, discoverer_count, confidence, number_of_disk_drives, processor_package_count, physical_core_count, data_providers_count, logical_core_count, total_disk_space, disk_sizes.disk_space, total_memory, encrypted_drives_count, unencrypted_drives_count, total_bios_files, average_processor_usage, average_memory_usage, average_memory_usage_pct, max_processor_usage, max_memory_usage, max_memory_usage_pct, used_disk_space, used_disk_space_pct, available_disk_space, available_disk_space_pct, mount_storage_info.used_space, mount_storage_info.available_space, ad_user_account_control, creation_timestamp    All filter fields and operations supports negation (!).
  # @return [MsaspecQueryResponse]
  describe 'query_hosts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_logins
  # Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort logins by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;account_name|asc&lt;/li&gt;&lt;li&gt;login_timestamp|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter logins using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;login_type:&#39;Interactive&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;No&#39;&lt;/li&gt;&lt;/ul&gt;    Available filter fields that support exact match: id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_timestamp, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, is_suspicious, failure_description, login_event_count, aggregation_time_interval    Available filter fields that supports wildcard (*): id, cid, login_status, account_id, host_id, user_sid, aid, account_name, username, hostname, account_type, login_type, login_domain, admin_privileges, local_admin_privileges, local_ip, remote_ip, host_country, host_city, failure_description, aggregation_time_interval    Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): login_timestamp, login_event_count    All filter fields and operations supports negation (!).
  # @return [MsaQueryResponse]
  describe 'query_logins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
