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

CrowdStrike Swagger API Version: 2023-05-30T23:10:32Z

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::CspmRegistrationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CspmRegistrationApi' do
  before do
    # run before each test
    @api_instance = Falcon::CspmRegistrationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CspmRegistrationApi' do
    it 'should create an instance of CspmRegistrationApi' do
      expect(@api_instance).to be_instance_of(Falcon::CspmRegistrationApi)
    end
  end

  # unit tests for azure_download_certificate
  # Returns JSON object(s) that contain the base64 encoded certificate for a service principal.
  # @param tenant_id Azure Tenant ID
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :refresh Setting to true will invalidate the current certificate and generate a new certificate
  # @option opts [String] :years_valid Years the certificate should be valid (only used when refresh&#x3D;true)
  # @return [RegistrationAzureDownloadCertificateResponseV1]
  describe 'azure_download_certificate test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_cspm_aws_account
  # Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAWSAccountResponseV2]
  describe 'create_cspm_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_cspm_azure_account
  # Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAzureAccountResponseV1]
  describe 'create_cspm_azure_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cspm_aws_account
  # Deletes an existing AWS account or organization in our system.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids AWS account IDs to remove
  # @option opts [Array<String>] :organization_ids AWS organization IDs to remove
  # @return [MsaBaseEntitiesResponse]
  describe 'delete_cspm_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cspm_azure_account
  # Deletes an Azure subscription from the system.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids Azure subscription IDs to remove
  # @option opts [Array<String>] :tenant_ids Tenant ids to remove
  # @option opts [String] :retain_tenant
  # @return [MsaBaseEntitiesResponse]
  describe 'delete_cspm_azure_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_behavior_detections
  # Get list of detected behaviors
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cloud_provider Cloud Provider (e.g.: aws|azure)
  # @option opts [String] :service Cloud Service (e.g. EC2 | EBS | S3)
  # @option opts [String] :account_id Cloud Account ID (e.g.: AWS accountID, Azure subscriptionID)
  # @option opts [String] :aws_account_id AWS Account ID
  # @option opts [String] :azure_subscription_id Azure Subscription ID
  # @option opts [String] :azure_tenant_id Azure Tenant ID
  # @option opts [String] :state State (e.g.: open | closed)
  # @option opts [String] :date_time_since Filter to get all events after this date, in format RFC3339 : e.g. 2006-01-02T15:04:05Z07:00
  # @option opts [String] :since Filter events using a duration string (e.g. 24h)
  # @option opts [String] :severity Policy Severity
  # @option opts [String] :next_token String to get next page of results, is associated with a previous execution of GetBehaviorDetections. Must include all filters from previous execution.
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [Array<String>] :resource_id Resource ID
  # @option opts [Array<String>] :resource_uuid Resource UUID
  # @return [RegistrationExternalIOAEventResponse]
  describe 'get_behavior_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_configuration_detection_entities
  # Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.
  # @param ids detection ids
  # @param [Hash] opts the optional parameters
  # @return [RegistrationExternalIOMEventResponseV2]
  describe 'get_configuration_detection_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_configuration_detection_ids_v2
  # Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter use_current_scan_ids - *use this to get records for latest scans* account_name account_id agent_id attack_types azure_subscription_id cloud_provider cloud_service_keyword custom_policy_id is_managed policy_id policy_type resource_id region status scan_time severity severity_string
  # @option opts [String] :sort account_name account_id attack_types azure_subscription_id cloud_provider cloud_service_keyword status is_managed policy_id policy_type resource_id region scan_time severity severity_string timestamp
  # @option opts [Integer] :limit The max number of detections to return
  # @option opts [Integer] :offset Offset returned detections
  # @return [RegistrationIOMEventIDsResponseV2]
  describe 'get_configuration_detection_ids_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_configuration_detections
  # Get list of active misconfigurations
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cloud_provider Cloud Provider (e.g.: aws|azure|gcp)
  # @option opts [String] :account_id AWS account ID or GCP Project Number or Azure subscription ID
  # @option opts [String] :azure_subscription_id Azure Subscription ID
  # @option opts [String] :azure_tenant_id Azure Tenant ID
  # @option opts [String] :status Status (e.g.: new|reoccurring|all)
  # @option opts [String] :region Cloud Provider Region
  # @option opts [String] :severity Policy Severity
  # @option opts [String] :service Cloud Service (e.g.: EBS|EC2|S3 etc.)
  # @option opts [String] :next_token String to get next page of results, is associated with a previous execution of GetConfigurationDetections. Cannot be combined with any filter except limit.
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @return [RegistrationExternalIOMEventResponse]
  describe 'get_configuration_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_aws_account
  # Returns information about the current status of an AWS account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :scan_type Type of scan, dry or full, to perform on selected accounts
  # @option opts [Array<String>] :ids AWS account IDs
  # @option opts [Array<String>] :iam_role_arns AWS IAM role ARNs
  # @option opts [Array<String>] :organization_ids AWS organization IDs
  # @option opts [String] :status Account status to filter results by.
  # @option opts [Integer] :limit The maximum records to return. Defaults to 100.
  # @option opts [String] :migrated Only return migrated d4c accounts
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [String] :group_by Field to group by.
  # @return [RegistrationAWSAccountResponseV2]
  describe 'get_cspm_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_aws_account_scripts_attachment
  # Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids AWS account IDs
  # @return [RegistrationAWSProvisionGetAccountScriptResponseV2]
  describe 'get_cspm_aws_account_scripts_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_aws_console_setup_urls
  # Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids AWS account IDs
  # @option opts [String] :use_existing_cloudtrail
  # @option opts [String] :region Region
  # @return [RegistrationAWSAccountConsoleURL]
  describe 'get_cspm_aws_console_setup_urls test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_azure_account
  # Return information about Azure account registration
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids SubscriptionIDs of accounts to select for this status operation. If this is empty then all accounts are returned.
  # @option opts [Array<String>] :tenant_ids Tenant ids to filter azure accounts
  # @option opts [String] :scan_type Type of scan, dry or full, to perform on selected accounts
  # @option opts [String] :status Account status to filter results by.
  # @option opts [Integer] :limit The maximum records to return. Defaults to 100.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @return [RegistrationAzureAccountResponseV1]
  describe 'get_cspm_azure_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_azure_user_scripts_attachment
  # Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_id Tenant ID to generate script for. Defaults to most recently registered tenant.
  # @option opts [Array<String>] :subscription_ids Subscription IDs to generate script for. Defaults to all.
  # @option opts [String] :account_type
  # @option opts [String] :template Template to be rendered
  # @return [RegistrationAzureProvisionGetUserScriptResponseV1]
  describe 'get_cspm_azure_user_scripts_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_policies_details
  # Given an array of policy IDs, returns detailed policies information.
  # @param ids Policy IDs
  # @param [Hash] opts the optional parameters
  # @return [RegistrationPolicyResponseV1]
  describe 'get_cspm_policies_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_policy
  # Given a policy ID, returns detailed policy information.
  # @param ids Policy ID
  # @param [Hash] opts the optional parameters
  # @return [RegistrationPolicyResponseV1]
  describe 'get_cspm_policy test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_policy_settings
  # Returns information about current policy settings.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :service Service type to filter policy settings by.
  # @option opts [String] :policy_id Policy ID
  # @option opts [String] :cloud_platform Cloud Platform (e.g.: aws|azure|gcp)
  # @return [RegistrationPolicySettingsResponseV1]
  describe 'get_cspm_policy_settings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cspm_scan_schedule
  # Returns scan schedule configuration for one or more cloud platforms.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :cloud_platform Cloud Platform
  # @return [RegistrationScanScheduleResponseV1]
  describe 'get_cspm_scan_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_cspm_aws_account
  # Patches a existing account in our system for a customer.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationAWSAccountResponseV2]
  describe 'patch_cspm_aws_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cspm_azure_account_client_id
  # Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided
  # @param id ClientID to use for the Service Principal associated with the customer&#39;s Azure account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_id Tenant ID to update client ID for. Required if multiple tenants are registered.
  # @return [RegistrationAzureTenantConfigurationResponseV1]
  describe 'update_cspm_azure_account_client_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cspm_azure_tenant_default_subscription_id
  # Update an Azure default subscription_id in our system for given tenant_id
  # @param subscription_id Default Subscription ID to patch for all subscriptions belonged to a tenant.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tenant_id Tenant ID to update client ID for. Required if multiple tenants are registered.
  # @return [RegistrationAzureTenantDefaultSubscriptionIDResponseV1]
  describe 'update_cspm_azure_tenant_default_subscription_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cspm_policy_settings
  # Updates a policy setting - can be used to override policy severity or to disable a policy entirely.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationPolicySettingsResponseV1]
  describe 'update_cspm_policy_settings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cspm_scan_schedule
  # Updates scan schedule configuration for one or more cloud platforms.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [RegistrationScanScheduleResponseV1]
  describe 'update_cspm_scan_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
