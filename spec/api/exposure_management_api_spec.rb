=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

MIT License

Copyright (c) 2023 Crowdstrike

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::ExposureManagement
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExposureManagement' do
  before do
    # run before each test
    @api_instance = Falcon::ExposureManagement.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExposureManagement' do
    it 'should create an instance of ExposureManagement' do
      expect(@api_instance).to be_instance_of(Falcon::ExposureManagement)
    end
  end

  # unit tests for aggregate_external_assets
  # Returns external assets aggregates.
  # Returns external assets aggregates as specified via JSON in request body.
  # @param body Aggregation specification.
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for blob_download_external_assets
  # Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  # Download the entire contents of the blob.
  # @param asset_id The Asset ID
  # @param hash The File Hash
  # @param [Hash] opts the optional parameters
  # @return [Array<Integer>]
  describe 'blob_download_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for blob_preview_external_assets
  # Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.
  # Download a preview of the blob.
  # @param asset_id The Asset ID
  # @param hash The File Hash
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalAssetsBlobAPITypeV1]
  describe 'blob_preview_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for combined_ecosystem_subsidiaries
  # Retrieves a list of ecosystem subsidiaries with their detailed information.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Starting index of result set from which to return subsidiaries
  # @option opts [Integer] :limit The maximum number of subsidiaries to return in the response.
  # @option opts [String] :sort The field by which to sort the list of subsidiaries. Possible values:&lt;ul&gt;&lt;li&gt;name&lt;/li&gt;&lt;li&gt;primary_domain&lt;/li&gt;&lt;/ul&gt;&lt;/br&gt;Sort order can be specified by appending \&quot;asc\&quot; or \&quot;desc\&quot; to the field name (e.g. \&quot;name|asc\&quot; or \&quot;primary_domain|desc\&quot;).
  # @option opts [String] :version_id The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
  # @return [DomainFemEcosystemSubsidiariesEntitiesResponse]
  describe 'combined_ecosystem_subsidiaries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_external_assets
  # Delete multiple external assets.
  # @param ids One or more asset IDs (max: 100).
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaspecQueryResponse]
  describe 'delete_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ecosystem_subsidiaries
  # Retrieves detailed information about ecosystem subsidiaries by ID.
  # @param ids One or more asset IDs (max: 100). Find ecosystem subsidiary IDs with GET &#x60;/fem/entities/ecosystem-subsidiaries/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :version_id The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
  # @return [DomainFemEcosystemSubsidiariesEntitiesResponse]
  describe 'get_ecosystem_subsidiaries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_external_assets
  # Get details on external assets by providing one or more IDs.
  # @param ids One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/fem/queries/external-assets/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalAssetsAPITypeV1]
  describe 'get_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_external_assets
  # Update the details of external assets.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalAssetsAPITypeV1]
  describe 'patch_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_ecosystem_subsidiaries
  # Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Starting index of result set from which to return subsidiaries
  # @option opts [Integer] :limit The maximum number of IDs to return in the response.
  # @option opts [String] :sort The field by which to sort the list of IDs. Possible values:&lt;ul&gt;&lt;li&gt;name&lt;/li&gt;&lt;li&gt;primary_domain&lt;/li&gt;&lt;/ul&gt;&lt;/br&gt;Sort order can be specified by appending \&quot;asc\&quot; or \&quot;desc\&quot; to the field name (e.g. \&quot;name|asc\&quot; or \&quot;primary_domain|desc\&quot;).
  # @option opts [String] :version_id The version ID of the ecosystem subsidiaries data, represented as a hash string. This parameter is required to ensure data consistency and prevent stale data. If a new version of the ecosystem subsidiaries data is written, the version ID will be updated. By including this parameter in the request, the client can ensure that the response will be invalidated if a new version is written.
  # @return [DomainFemEcosystemSubsidiariesQueryResponse]
  describe 'query_ecosystem_subsidiaries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_external_assets
  # Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset Starting index of result set from which to return IDs.
  # @option opts [Integer] :limit Number of IDs to return.
  # @option opts [String] :sort Order by fields.
  # @option opts [String] :filter Filter assets using an FQL query. Common filter options include:&lt;ul&gt;&lt;li&gt;asset_type:&#39;ip&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;    &lt;/br&gt;Available filter fields that support exact match: asset_id, asset_type, confidence, connectivity_status, criticality, criticality_description, criticality_timestamp, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.last_seen, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, first_seen, id, internet_exposure, ip.asn, ip.cloud_provider, ip.cloud_vm.description, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.first_seen, ip.services.last_seen, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, last_seen, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by, triage.updated_timestamp    &lt;/br&gt;Available filter fields that supports wildcard (*): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.resolved_ips, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.hosting_provider, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.ip_address, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports in ([v1, v2]): asset_id, asset_type, confidence, connectivity_status, criticality, criticality_username, data_providers, discovered_by, dns_domain.fqdn, dns_domain.isps, dns_domain.parent_domain, dns_domain.services.applications.category, dns_domain.services.applications.cpe, dns_domain.services.applications.name, dns_domain.services.applications.vendor, dns_domain.services.applications.version, dns_domain.services.cloud_provider, dns_domain.services.cpes, dns_domain.services.id, dns_domain.services.platform_name, dns_domain.services.port, dns_domain.services.protocol, dns_domain.services.protocol_port, dns_domain.services.status, dns_domain.services.status_code, dns_domain.services.transport, dns_domain.type, id, internet_exposure, ip.asn, ip.cloud_vm.instance_id, ip.cloud_vm.lifecycle, ip.cloud_vm.mac_address, ip.cloud_vm.owner_id, ip.cloud_vm.platform, ip.cloud_vm.region, ip.cloud_vm.security_groups, ip.cloud_vm.source, ip.cloud_vm.status, ip.fqdns, ip.isp, ip.location.area_code, ip.location.city, ip.location.country_code, ip.location.country_name, ip.location.postal_code, ip.location.region_code, ip.location.region_name, ip.location.timezone, ip.ptr, ip.aid, ip.services.applications.category, ip.services.applications.cpe, ip.services.applications.name, ip.services.applications.vendor, ip.services.applications.version, ip.services.cloud_provider, ip.services.cpes, ip.services.platform_name, ip.services.port, ip.services.protocol, ip.services.protocol_port, ip.services.status, ip.services.status_code, ip.services.transport, manual, perimeter, subsidiaries.id, subsidiaries.name, triage.action, triage.assigned_to, triage.status, triage.updated_by    &lt;/br&gt;Available filter fields that supports range comparisons (&gt;, &lt;, &gt;&#x3D;, &lt;&#x3D;): criticality_timestamp, dns_domain.resolved_ips, dns_domain.services.first_seen, dns_domain.services.last_seen, dns_domain.services.port, dns_domain.services.status_code, first_seen, ip.cloud_vm.private_ip, ip.cloud_vm.public_ip, ip.ip_address, ip.services.first_seen, ip.services.last_seen, ip.services.port, ip.services.status_code, last_seen, triage.updated_timestamp    &lt;/br&gt;All filter fields and operations supports negation (!).
  # @return [MsaspecQueryResponse]
  describe 'query_external_assets test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
