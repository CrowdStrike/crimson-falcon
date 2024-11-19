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

# Unit tests for Falcon::D4cRegistration
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'D4cRegistration' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::D4cRegistration.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of D4cRegistration' do
    it 'should create an instance of D4cRegistration' do
      expect(@api_instance).to be_instance_of(Falcon::D4cRegistration)
    end
  end

  # unit tests for connect_d4_cgcp_account
  # Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationGCPAccountResponseExtV2]
  describe 'connect_d4_cgcp_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_d4_c_aws_account
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAWSAccountResponseV2]
  describe 'create_d4_c_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_d4_c_gcp_account
  # Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationGCPAccountResponseV1]
  describe 'create_d4_c_gcp_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_discover_cloud_azure_account
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAzureAccountResponseV1]
  describe 'create_discover_cloud_azure_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_d4_c_aws_account
  # Deletes an existing AWS account or organization in our system.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids AWS account IDs to remove
  # @option opts [Array<String>] :organization_ids AWS organization IDs to remove
  # @return [MsaBaseEntitiesResponse]
  describe 'delete_d4_c_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_d4_cgcp_account
  # Deletes a GCP account from the system.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids Hierarchical Resource IDs of accounts
  # @return [MsaBaseEntitiesResponse]
  describe 'delete_d4_cgcp_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for discover_cloud_azure_download_certificate
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  # @param tenant_id Azure Tenant ID
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :refresh Setting to true will invalidate the current certificate and generate a new certificate
  # @option opts [String] :years_valid Years the certificate should be valid (only used when refresh&#x3D;true)
  # @return [RegistrationAzureDownloadCertificateResponseV1]
  describe 'discover_cloud_azure_download_certificate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_c_aws_account
  # Returns information about the current status of an AWS account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :scan_type Type of scan, dry or full, to perform on selected accounts
  # @option opts [Array<String>] :ids AWS account IDs
  # @option opts [Array<String>] :organization_ids AWS organization IDs
  # @option opts [String] :status Account status to filter results by.
  # @option opts [Integer] :limit The maximum records to return. Defaults to 100.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [String] :migrated Only return migrated d4c accounts
  # @return [RegistrationAWSAccountResponseV2]
  describe 'get_d4_c_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_c_aws_console_setup_urls
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :region Region
  # @return [RegistrationAWSConsoleURLResponseV2]
  describe 'get_d4_c_aws_console_setup_urls test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_c_gcp_account
  # Returns information about the current status of an GCP account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent_type GCP Hierarchy Parent Type, organization/folder/project
  # @option opts [Array<String>] :ids Hierarchical Resource IDs of accounts
  # @option opts [String] :scan_type Type of scan, dry or full, to perform on selected accounts
  # @option opts [String] :status Account status to filter results by.
  # @option opts [Integer] :limit The maximum records to return. Defaults to 100.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [String] :sort Order fields in ascending or descending order. Ex: parent_type|asc.
  # @return [RegistrationGCPAccountResponseV1]
  describe 'get_d4_c_gcp_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_c_gcp_user_scripts
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent_type GCP Hierarchy Parent Type, organization/folder/project
  # @return [RegistrationGCPProvisionGetUserScriptResponseV1]
  describe 'get_d4_c_gcp_user_scripts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_caws_account_scripts_attachment
  # Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids AWS account IDs
  # @option opts [String] :template Template to be rendered
  # @option opts [Array<String>] :accounts The list of accounts to register
  # @option opts [String] :behavior_assessment_enabled
  # @option opts [String] :sensor_management_enabled
  # @option opts [String] :dspm_enabled
  # @option opts [Array<String>] :dspm_regions
  # @option opts [String] :dspm_role
  # @option opts [String] :use_existing_cloudtrail
  # @option opts [String] :organization_id The AWS organization ID to be registered
  # @option opts [String] :aws_profile The AWS profile to be used during registration
  # @option opts [String] :custom_role_name The custom IAM role to be used during registration
  # @return [RegistrationAWSProvisionGetAccountScriptResponseV2]
  describe 'get_d4_caws_account_scripts_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_cgcp_service_accounts_ext
  # Returns the service account id and client email for external clients.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id Service Account ID
  # @return [RegistrationGCPServiceAccountResponseExtV1]
  describe 'get_d4_cgcp_service_accounts_ext test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_d4_cgcp_user_scripts_attachment
  # Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent_type GCP Hierarchy Parent Type, organization/folder/project
  # @option opts [Array<String>] :ids Hierarchical Resource IDs of accounts
  # @option opts [String] :status Account status to filter results by.
  # @return [RegistrationGCPProvisionGetUserScriptResponseV1]
  describe 'get_d4_cgcp_user_scripts_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_discover_cloud_azure_account
  # Return information about Azure account registration
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned.
  # @option opts [Array<String>] :tenant_ids Tenant ids to filter azure accounts
  # @option opts [String] :scan_type Type of scan, dry or full, to perform on selected accounts
  # @option opts [String] :status Account status to filter results by.
  # @option opts [Integer] :limit The maximum records to return. Defaults to 100.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @return [RegistrationAzureAccountResponseV1]
  describe 'get_discover_cloud_azure_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_discover_cloud_azure_tenant_ids
  # Return available tenant ids for discover for cloud
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAzureTenantIDsResponseV1]
  describe 'get_discover_cloud_azure_tenant_ids test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_discover_cloud_azure_user_scripts
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAzureProvisionGetUserScriptResponseV1]
  describe 'get_discover_cloud_azure_user_scripts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_discover_cloud_azure_user_scripts_attachment
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  # @param tenant_id Azure Tenant ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :subscription_ids Azure Subscription ID
  # @option opts [String] :template Template to be rendered
  # @option opts [Boolean] :azure_management_group Use Azure Management Group
  # @return [RegistrationAzureProvisionGetUserScriptResponseV1]
  describe 'get_discover_cloud_azure_user_scripts_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_horizon_d4_c_scripts
  # Returns static install scripts for Horizon.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :single_account Get static script for single account
  # @option opts [String] :organization_id AWS organization ID
  # @option opts [String] :delete
  # @option opts [String] :account_type Account type (e.g.: commercial,gov) Only applicable when registering AWS commercial account in a Gov environment
  # @return [RegistrationStaticScriptsResponse]
  describe 'get_horizon_d4_c_scripts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_d4_cgcp_service_accounts_ext
  # Patches the service account key for external clients.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationGCPServiceAccountResponseExtV1]
  describe 'update_d4_cgcp_service_accounts_ext test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_discover_cloud_azure_account_client_id
  # Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided
  # @param id ClientID to use for the Service Principal associated with the customer&#39;s Azure account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :object_id Object ID to use for the Service Principal associated with the customer&#39;s Azure account
  # @option opts [String] :tenant_id Tenant ID to update client ID for. Required if multiple tenants are registered.
  # @return [RegistrationAzureTenantConfigurationResponseV1]
  describe 'update_discover_cloud_azure_account_client_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
