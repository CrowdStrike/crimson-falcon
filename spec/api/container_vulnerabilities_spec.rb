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

# Unit tests for Falcon::ContainerVulnerabilities
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContainerVulnerabilities' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::ContainerVulnerabilities.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of ContainerVulnerabilities' do
    it 'should create an instance of ContainerVulnerabilities' do
      expect(@api_instance).to be_instance_of(Falcon::ContainerVulnerabilities)
    end
  end

  # unit tests for read_combined_vulnerabilities
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @option opts [String] :sort The fields to sort the records on. Supported columns: - &#x60;cps_current_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;images_impacted&#x60; - &#x60;packages_impacted&#x60; - &#x60;severity&#x60;
  # @return [VulnerabilitiesApiCombinedVulnerability]
  describe 'read_combined_vulnerabilities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_combined_vulnerabilities_details
  # Maximum offset &#x3D; 10000 - limit
  # @param id Image UUID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter the vulnerabilities using a query in Falcon Query Language (FQL). Supported vulnerability filter fields: - &#x60;cid&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;is_zero_day&#x60; - &#x60;remediation_available&#x60; - &#x60;severity&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiCombinedVulnerabilityDetails]
  describe 'read_combined_vulnerabilities_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_combined_vulnerabilities_info
  # Maximum offset &#x3D; 10000 - limit
  # @param cve_id Vulnerability CVE ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiCombinedVulnerabilityInfo]
  describe 'read_combined_vulnerabilities_info test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerabilities_by_image_count
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;cve_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnByImageCount]
  describe 'read_vulnerabilities_by_image_count test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerabilities_publication_date
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;cid&#x60; - &#x60;cve_id&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnByPublication]
  describe 'read_vulnerabilities_publication_date test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerability_count
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnCount]
  describe 'read_vulnerability_count test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerability_count_by_actively_exploited
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnCountByActivelyExploited]
  describe 'read_vulnerability_count_by_actively_exploited test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerability_count_by_cps_rating
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnCountByCSPRating]
  describe 'read_vulnerability_count_by_cps_rating test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerability_count_by_cvss_score
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnCountByCVSSScore]
  describe 'read_vulnerability_count_by_cvss_score test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_vulnerability_count_by_severity
  # Maximum offset &#x3D; 10000 - limit
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter vulnerabilities using a query in Falcon Query Language (FQL). Supported filter fields: - &#x60;ai_related&#x60; - &#x60;base_os&#x60; - &#x60;cid&#x60; - &#x60;container_id&#x60; - &#x60;container_running_status&#x60; - &#x60;containers_impacted_range&#x60; - &#x60;cps_rating&#x60; - &#x60;cve_id&#x60; - &#x60;cvss_score&#x60; - &#x60;description&#x60; - &#x60;exploited_status_name&#x60; - &#x60;exploited_status&#x60; - &#x60;fix_status&#x60; - &#x60;image_digest&#x60; - &#x60;image_id&#x60; - &#x60;images_impacted_range&#x60; - &#x60;include_base_image_vuln&#x60; - &#x60;package_name_version&#x60; - &#x60;registry&#x60; - &#x60;repository&#x60; - &#x60;severity&#x60; - &#x60;tag&#x60;
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [VulnerabilitiesApiVulnCountBySeverity]
  describe 'read_vulnerability_count_by_severity test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
