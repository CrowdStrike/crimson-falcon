# Crimson Falcon - The CrowdStrike Falcon SDK for Ruby

*Empower* your Ruby applications with the robust capabilities of the CrowdStrike Falcon platform,
using the Crimson Falcon SDK. This sophisticated Ruby gem, designed to align with the CrowdStrike
API Specification, facilitates smooth and efficient interaction with a wide range of API endpoints
within your Falcon environment. Utilizing this SDK allows for seamless integration, operational
consistency, and enhanced functionality in your cybersecurity workflows.

## Installation

### From RubyGems (Coming Soon)

To install from RubyGems, use the following command:

```shell
gem install crimson-falcon
```

Add this to the Gemfile:

    gem 'crimson-falcon', '~> 0.1.1'

### From Source to Gem: Building the Ruby Code

To build the Ruby code into a gem:

```shell
gem build crimson-falcon.gemspec
```

Then install the gem locally:

```shell
gem install ./crimson-falcon-0.1.1.gem
```

Finally, add this to the Gemfile:

    gem 'crimson-falcon', '~> 0.1.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'crimson-falcon', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

## Getting Started

Eager to take flight? Follow the [installation](#installation) process, and then launch into the following code:

```ruby
# Load the gem
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = "Your_Client_ID"
  config.client_secret = "Your_Client_Secret"
  config.cloud = "Your_Cloud_Instance"
end

# Create a new API instance
api_instance = Falcon::AlertsApi.new
opts = {
  # Integer | The starting point for the return, `0` implies the latest detection.
  # The `offset` parameter assists in paginating results.
  offset: 0,
  # Integer | The maximum count of detections in this response (default: 100; max: 10000).
  # Works in tandem with the `offset` for pagination.
  limit: 25,
  # String | Sort detections in `asc` (ascending) or `desc` (descending) order.
  # Example: `status|asc` or `status|desc`.
  sort: 'Sort_Criteria',
  # String | Filter detections using a query in Falcon Query Language (FQL).
  # An asterisk wildcard `*` includes all results. See API docs for more details.
  filter: 'Filter_Criteria',
  # String | Search all detection metadata for the provided string
  q: 'Query_String'
}

begin
  # Retrieves all Alerts ids that match a given query
  result = api_instance.get_queries_alerts_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Exception when calling AlertsApi->get_queries_alerts_v1: #{e}"
end
```

Welcome aboard the Crimson Falcon! Fly high, code with grace.

## Documentation for API Endpoints

<table style="border-collapse: collapse; width: 100%;">
  <thead>
    <tr style="background-color: #f2f2f2;">
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; width: 100px;">Class</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; width: 150px;">Method</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; width: 200px;">HTTP request</th>
      <th style="border: 1px solid #ddd; padding: 8px; text-align: left; width: 500px;">Description</th>
    </tr>
  </thead>
  <tbody>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::AlertsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/AlertsApi.md#get_queries_alerts_v1" style="text-decoration: none;"><strong>get_queries_alerts_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /alerts/queries/alerts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">retrieves all Alerts ids that match a given query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::AlertsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/AlertsApi.md#patch_entities_alerts_v2" style="text-decoration: none;"><strong>patch_entities_alerts_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /alerts/entities/alerts/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform actions on detections identified by detection ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  </td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::AlertsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/AlertsApi.md#post_aggregates_alerts_v1" style="text-decoration: none;"><strong>post_aggregates_alerts_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /alerts/aggregates/alerts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">retrieves aggregates for Alerts across all CIDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::AlertsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/AlertsApi.md#post_entities_alerts_v1" style="text-decoration: none;"><strong>post_entities_alerts_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /alerts/entities/alerts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">retrieves all Alerts given their ids</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#create_or_update_aws_settings" style="text-decoration: none;"><strong>create_or_update_aws_settings</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-aws/entities/settings/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create or update Global Settings which are applicable to all provisioned AWS accounts</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#delete_aws_accounts" style="text-decoration: none;"><strong>delete_aws_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /cloud-connect-aws/entities/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of AWS Accounts by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#get_aws_accounts" style="text-decoration: none;"><strong>get_aws_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/entities/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of AWS Accounts by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#get_aws_settings" style="text-decoration: none;"><strong>get_aws_settings</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/combined/settings/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#provision_aws_accounts" style="text-decoration: none;"><strong>provision_aws_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-aws/entities/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provision AWS Accounts by specifying details about the accounts to provision</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#query_aws_accounts" style="text-decoration: none;"><strong>query_aws_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/combined/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#query_aws_accounts_for_ids" style="text-decoration: none;"><strong>query_aws_accounts_for_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/queries/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#update_aws_accounts" style="text-decoration: none;"><strong>update_aws_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /cloud-connect-aws/entities/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update AWS Accounts by specifying the ID of the account and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CloudConnectAwsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CloudConnectAwsApi.md#verify_aws_account_access" style="text-decoration: none;"><strong>verify_aws_account_access</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-aws/entities/verify-account-access/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Performs an Access Verification check on the specified AWS Account IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#azure_download_certificate" style="text-decoration: none;"><strong>azure_download_certificate</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-azure/entities/download-certificate/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns JSON object(s) that contain the base64 encoded certificate for a service principal.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#create_cspm_aws_account" style="text-decoration: none;"><strong>create_cspm_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-cspm-aws/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#create_cspm_azure_account" style="text-decoration: none;"><strong>create_cspm_azure_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-cspm-azure/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#delete_cspm_aws_account" style="text-decoration: none;"><strong>delete_cspm_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /cloud-connect-cspm-aws/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deletes an existing AWS account or organization in our system.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#delete_cspm_azure_account" style="text-decoration: none;"><strong>delete_cspm_azure_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /cloud-connect-cspm-azure/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deletes an Azure subscription from the system.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_behavior_detections" style="text-decoration: none;"><strong>get_behavior_detections</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /detects/entities/ioa/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get list of detected behaviors</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_configuration_detection_entities" style="text-decoration: none;"><strong>get_configuration_detection_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /detects/entities/iom/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_configuration_detection_ids_v2" style="text-decoration: none;"><strong>get_configuration_detection_ids_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /detects/queries/iom/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_configuration_detections" style="text-decoration: none;"><strong>get_configuration_detections</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /detects/entities/iom/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get list of active misconfigurations</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_aws_account" style="text-decoration: none;"><strong>get_cspm_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-aws/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns information about the current status of an AWS account.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_aws_account_scripts_attachment" style="text-decoration: none;"><strong>get_cspm_aws_account_scripts_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-aws/entities/user-scripts-download/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_aws_console_setup_urls" style="text-decoration: none;"><strong>get_cspm_aws_console_setup_urls</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-aws/entities/console-setup-urls/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_azure_account" style="text-decoration: none;"><strong>get_cspm_azure_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-azure/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return information about Azure account registration</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_azure_user_scripts_attachment" style="text-decoration: none;"><strong>get_cspm_azure_user_scripts_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-cspm-azure/entities/user-scripts-download/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_policies_details" style="text-decoration: none;"><strong>get_cspm_policies_details</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /settings/entities/policy-details/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Given an array of policy IDs, returns detailed policies information.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_policy" style="text-decoration: none;"><strong>get_cspm_policy</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /settings/entities/policy-details/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Given a policy ID, returns detailed policy information.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_policy_settings" style="text-decoration: none;"><strong>get_cspm_policy_settings</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /settings/entities/policy/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns information about current policy settings.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#get_cspm_scan_schedule" style="text-decoration: none;"><strong>get_cspm_scan_schedule</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /settings/scan-schedule/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns scan schedule configuration for one or more cloud platforms.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#patch_cspm_aws_account" style="text-decoration: none;"><strong>patch_cspm_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /cloud-connect-cspm-aws/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Patches a existing account in our system for a customer.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#update_cspm_azure_account_client_id" style="text-decoration: none;"><strong>update_cspm_azure_account_client_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /cloud-connect-cspm-azure/entities/client-id/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an Azure service account in our system by with the user-created client_id created with the public key we've provided</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#update_cspm_azure_tenant_default_subscription_id" style="text-decoration: none;"><strong>update_cspm_azure_tenant_default_subscription_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /cloud-connect-cspm-azure/entities/default-subscription-id/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an Azure default subscription_id in our system for given tenant_id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#update_cspm_policy_settings" style="text-decoration: none;"><strong>update_cspm_policy_settings</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /settings/entities/policy/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates a policy setting - can be used to override policy severity or to disable a policy entirely.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CspmRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CspmRegistrationApi.md#update_cspm_scan_schedule" style="text-decoration: none;"><strong>update_cspm_scan_schedule</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /settings/scan-schedule/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates scan schedule configuration for one or more cloud platforms.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#create_rule" style="text-decoration: none;"><strong>create_rule</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ioarules/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create a rule within a rule group. Returns the rule.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#create_rule_group_mixin0" style="text-decoration: none;"><strong>create_rule_group_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ioarules/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create a rule group for a platform with a name and an optional description. Returns the rule group.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#delete_rule_groups_mixin0" style="text-decoration: none;"><strong>delete_rule_groups_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /ioarules/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete rule groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#delete_rules" style="text-decoration: none;"><strong>delete_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /ioarules/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete rules from a rule group by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_patterns" style="text-decoration: none;"><strong>get_patterns</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/entities/pattern-severities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get pattern severities by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_platforms_mixin0" style="text-decoration: none;"><strong>get_platforms_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/entities/platforms/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get platforms by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_rule_groups_mixin0" style="text-decoration: none;"><strong>get_rule_groups_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rule groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_rule_types" style="text-decoration: none;"><strong>get_rule_types</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/entities/rule-types/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rule types by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_rules_get" style="text-decoration: none;"><strong>get_rules_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ioarules/entities/rules/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rules by ID and optionally with cid and/or version in the following format: `[cid:]ID[:version]`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#get_rules_mixin0_mixin65" style="text-decoration: none;"><strong>get_rules_mixin0_mixin65</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rules by ID and optionally with cid and/or version in the following format: `[cid:]ID[:version]`. The max number of IDs is constrained by URL size.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_patterns" style="text-decoration: none;"><strong>query_patterns</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/pattern-severities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get all pattern severity IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_platforms_mixin0" style="text-decoration: none;"><strong>query_platforms_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/platforms/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get all platform IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_rule_groups_full" style="text-decoration: none;"><strong>query_rule_groups_full</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/rule-groups-full/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all rule groups matching the query with optional filter.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_rule_groups_mixin0" style="text-decoration: none;"><strong>query_rule_groups_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Finds all rule group IDs matching the query with optional filter.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_rule_types" style="text-decoration: none;"><strong>query_rule_types</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/rule-types/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get all rule type IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#query_rules_mixin0_mixin65" style="text-decoration: none;"><strong>query_rules_mixin0_mixin65</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ioarules/queries/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Finds all rule IDs matching the query with optional filter.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#update_rule_group_mixin0" style="text-decoration: none;"><strong>update_rule_group_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /ioarules/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update a rule group. The following properties can be modified: name, description, enabled.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#update_rules" style="text-decoration: none;"><strong>update_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /ioarules/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update rules within a rule group. Return the updated rules.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::CustomIoaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/CustomIoaApi.md#validate" style="text-decoration: none;"><strong>validate</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ioarules/entities/rules/validate/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Validates field values and checks for matches if a test string is provided.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#create_d4_c_aws_account" style="text-decoration: none;"><strong>create_d4_c_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-aws/entities/account/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#create_d4_cgcp_account" style="text-decoration: none;"><strong>create_d4_cgcp_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-gcp/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#create_discover_cloud_azure_account" style="text-decoration: none;"><strong>create_discover_cloud_azure_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /cloud-connect-azure/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#delete_d4_c_aws_account" style="text-decoration: none;"><strong>delete_d4_c_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /cloud-connect-aws/entities/account/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deletes an existing AWS account or organization in our system.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#discover_cloud_azure_download_certificate" style="text-decoration: none;"><strong>discover_cloud_azure_download_certificate</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-azure/entities/download-certificate/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns JSON object(s) that contain the base64 encoded certificate for a service principal.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_d4_c_aws_account" style="text-decoration: none;"><strong>get_d4_c_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/entities/account/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns information about the current status of an AWS account.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_d4_c_aws_console_setup_urls" style="text-decoration: none;"><strong>get_d4_c_aws_console_setup_urls</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/entities/console-setup-urls/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_d4_caws_account_scripts_attachment" style="text-decoration: none;"><strong>get_d4_caws_account_scripts_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-aws/entities/user-scripts-download/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_d4_ccgp_account" style="text-decoration: none;"><strong>get_d4_ccgp_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-gcp/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns information about the current status of an GCP account.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_d4_cgcp_user_scripts" style="text-decoration: none;"><strong>get_d4_cgcp_user_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-gcp/entities/user-scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their GCP environment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_discover_cloud_azure_account" style="text-decoration: none;"><strong>get_discover_cloud_azure_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-azure/entities/account/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return information about Azure account registration</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_discover_cloud_azure_tenant_ids" style="text-decoration: none;"><strong>get_discover_cloud_azure_tenant_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-azure/entities/tenant-id/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return available tenant ids for discover for cloud</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts" style="text-decoration: none;"><strong>get_discover_cloud_azure_user_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-azure/entities/user-scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their Azure environment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts_attachment" style="text-decoration: none;"><strong>get_discover_cloud_azure_user_scripts_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /cloud-connect-azure/entities/user-scripts-download/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#get_horizon_d4_c_scripts" style="text-decoration: none;"><strong>get_horizon_d4_c_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /settings-discover/entities/gen/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns static install scripts for Horizon.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::D4cRegistrationApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/D4cRegistrationApi.md#update_discover_cloud_azure_account_client_id" style="text-decoration: none;"><strong>update_discover_cloud_azure_account_client_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /cloud-connect-azure/entities/client-id/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an Azure service account in our system by with the user-created client_id created with the public key we've provided</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DetectsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DetectsApi.md#get_aggregate_detects" style="text-decoration: none;"><strong>get_aggregate_detects</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /detects/aggregates/detects/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get detect aggregates as specified via json in request body.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DetectsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DetectsApi.md#get_detect_summaries" style="text-decoration: none;"><strong>get_detect_summaries</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /detects/entities/summaries/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">View information about detections</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DetectsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DetectsApi.md#query_detects" style="text-decoration: none;"><strong>query_detects</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /detects/queries/detects/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for detection IDs that match a given query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DetectsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DetectsApi.md#update_detects_by_ids_v2" style="text-decoration: none;"><strong>update_detects_by_ids_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /detects/entities/detects/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Modify the state, assignee, and visibility of detections</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#create_device_control_policies" style="text-decoration: none;"><strong>create_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Device Control Policies by specifying details about the policy to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#delete_device_control_policies" style="text-decoration: none;"><strong>delete_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Device Control Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#get_default_device_control_policies" style="text-decoration: none;"><strong>get_default_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/default-device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve the configuration for a Default Device Control Policy</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#get_device_control_policies" style="text-decoration: none;"><strong>get_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Device Control Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#perform_device_control_policies_action" style="text-decoration: none;"><strong>perform_device_control_policies_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/device-control-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Device Control Policies specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#query_combined_device_control_policies" style="text-decoration: none;"><strong>query_combined_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#query_combined_device_control_policy_members" style="text-decoration: none;"><strong>query_combined_device_control_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/device-control-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#query_device_control_policies" style="text-decoration: none;"><strong>query_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#query_device_control_policy_members" style="text-decoration: none;"><strong>query_device_control_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/device-control-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#set_device_control_policies_precedence" style="text-decoration: none;"><strong>set_device_control_policies_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/device-control-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#update_default_device_control_policies" style="text-decoration: none;"><strong>update_default_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/default-device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update the configuration for a Default Device Control Policy</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DeviceControlPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DeviceControlPoliciesApi.md#update_device_control_policies" style="text-decoration: none;"><strong>update_device_control_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/device-control/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Device Control Policies by specifying the ID of the policy and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#get_accounts" style="text-decoration: none;"><strong>get_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/entities/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on accounts by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#get_applications" style="text-decoration: none;"><strong>get_applications</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/entities/applications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on applications by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#get_hosts" style="text-decoration: none;"><strong>get_hosts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/entities/hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on assets by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#get_logins" style="text-decoration: none;"><strong>get_logins</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/entities/logins/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on logins by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_accounts" style="text-decoration: none;"><strong>query_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/accounts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_active_discovery_networks" style="text-decoration: none;"><strong>query_active_discovery_networks</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/active-discovery-networks/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_active_discovery_rules" style="text-decoration: none;"><strong>query_active_discovery_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/active-discovery-rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_active_discovery_scanners" style="text-decoration: none;"><strong>query_active_discovery_scanners</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/active-discovery-scanners/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_active_discovery_scans" style="text-decoration: none;"><strong>query_active_discovery_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/active-discovery-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_applications" style="text-decoration: none;"><strong>query_applications</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/applications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_hosts" style="text-decoration: none;"><strong>query_hosts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverApi.md#query_logins" style="text-decoration: none;"><strong>query_logins</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/logins/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverIotApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverIotApi.md#get_iot_hosts" style="text-decoration: none;"><strong>get_iot_hosts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/entities/iot-hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on IoT assets by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::DiscoverIotApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/DiscoverIotApi.md#query_iot_hosts" style="text-decoration: none;"><strong>query_iot_hosts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /discover/queries/iot-hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::EventSchemaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/EventSchemaApi.md#fdrschema_combined_event_get" style="text-decoration: none;"><strong>fdrschema_combined_event_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fdr/combined/schema-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Fetch combined schema</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::EventSchemaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/EventSchemaApi.md#fdrschema_entities_event_get" style="text-decoration: none;"><strong>fdrschema_entities_event_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fdr/entities/schema-events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Fetch event schema by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::EventSchemaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/EventSchemaApi.md#fdrschema_queries_event_get" style="text-decoration: none;"><strong>fdrschema_queries_event_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fdr/queries/schema-events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get list of event IDs given a particular query.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::EventStreamsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/EventStreamsApi.md#list_available_streams_o_auth2" style="text-decoration: none;"><strong>list_available_streams_o_auth2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/entities/datafeed/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Discover all event streams in your environment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::EventStreamsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/EventStreamsApi.md#refresh_active_stream_session" style="text-decoration: none;"><strong>refresh_active_stream_session</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /sensors/entities/datafeed-actions/v1/{partition}</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_allow_list" style="text-decoration: none;"><strong>aggregate_allow_list</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/allowlist/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate allowlist ticket values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_block_list" style="text-decoration: none;"><strong>aggregate_block_list</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/blocklist/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate blocklist ticket values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_detections" style="text-decoration: none;"><strong>aggregate_detections</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/detects/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate detection values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_device_count_collection" style="text-decoration: none;"><strong>aggregate_device_count_collection</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/devicecount-collections/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate host/devices count based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_escalations" style="text-decoration: none;"><strong>aggregate_escalations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/escalations/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate escalation ticket values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_fc_incidents" style="text-decoration: none;"><strong>aggregate_fc_incidents</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/incidents/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate incident values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#aggregate_remediations" style="text-decoration: none;"><strong>aggregate_remediations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falcon-complete-dashboards/aggregates/remediations/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate remediation ticket values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#get_device_count_collection_queries_by_filter" style="text-decoration: none;"><strong>get_device_count_collection_queries_by_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/devicecount-collections/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_allow_list_filter" style="text-decoration: none;"><strong>query_allow_list_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/allowlist/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_block_list_filter" style="text-decoration: none;"><strong>query_block_list_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/blocklist/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve block listtickets that match the provided filter criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_detection_ids_by_filter" style="text-decoration: none;"><strong>query_detection_ids_by_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/detects/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_escalations_filter" style="text-decoration: none;"><strong>query_escalations_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/escalations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve escalation tickets that match the provided filter criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_incident_ids_by_filter" style="text-decoration: none;"><strong>query_incident_ids_by_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/incidents/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve incidents that match the provided filter criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconCompleteDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconCompleteDashboardApi.md#query_remediations_filter" style="text-decoration: none;"><strong>query_remediations_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falcon-complete-dashboards/queries/remediations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve remediation tickets that match the provided filter criteria with scrolling enabled</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerApi.md#get_credentials" style="text-decoration: none;"><strong>get_credentials</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /container-security/entities/image-registry-credentials/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets the registry credentials</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerCliApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerCliApi.md#read_image_vulnerabilities" style="text-decoration: none;"><strong>read_image_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /image-assessment/combined/vulnerability-lookups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve known vulnerabilities for the provided image</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerImageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerImageApi.md#create_registry_entities" style="text-decoration: none;"><strong>create_registry_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /container-security/entities/registries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create a registry entity using the provided details</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerImageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerImageApi.md#delete_registry_entities" style="text-decoration: none;"><strong>delete_registry_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /container-security/entities/registries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete the registry entity identified by the entity UUID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerImageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerImageApi.md#read_registry_entities" style="text-decoration: none;"><strong>read_registry_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /container-security/queries/registries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve registry entities identified by the customer id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerImageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerImageApi.md#read_registry_entities_by_uuid" style="text-decoration: none;"><strong>read_registry_entities_by_uuid</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /container-security/entities/registries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve the registry entity identified by the entity UUID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconContainerImageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconContainerImageApi.md#update_registry_entities" style="text-decoration: none;"><strong>update_registry_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /container-security/entities/registries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update the registry entity, as identified by the entity UUID, using the provided details</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#delete_report" style="text-decoration: none;"><strong>delete_report</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /falconx/entities/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#delete_sample_v2" style="text-decoration: none;"><strong>delete_sample_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /samples/entities/samples/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Removes a sample, including file, meta and submissions from the collection</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_artifacts" style="text-decoration: none;"><strong>get_artifacts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/artifacts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_memory_dump" style="text-decoration: none;"><strong>get_memory_dump</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/memory-dump/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get memory dump content, as binary</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_memory_dump_extracted_strings" style="text-decoration: none;"><strong>get_memory_dump_extracted_strings</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/memory-dump/extracted-strings/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get extracted strings from a memory dump</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_memory_dump_hex_dump" style="text-decoration: none;"><strong>get_memory_dump_hex_dump</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/memory-dump/hex-dump/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get hex view of a memory dump</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_reports" style="text-decoration: none;"><strong>get_reports</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a full sandbox report.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_sample_v2" style="text-decoration: none;"><strong>get_sample_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /samples/entities/samples/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the file associated with the given ID (SHA256)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_submissions" style="text-decoration: none;"><strong>get_submissions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/submissions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#get_summary_reports" style="text-decoration: none;"><strong>get_summary_reports</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/entities/report-summaries/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a short summary version of a sandbox report.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#query_reports" style="text-decoration: none;"><strong>query_reports</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/queries/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#query_sample_v1" style="text-decoration: none;"><strong>query_sample_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /samples/queries/samples/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#query_submissions" style="text-decoration: none;"><strong>query_submissions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /falconx/queries/submissions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#submit" style="text-decoration: none;"><strong>submit</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /falconx/entities/submissions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FalconxSandboxApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FalconxSandboxApi.md#upload_sample_v2" style="text-decoration: none;"><strong>upload_sample_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /samples/entities/samples/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload a file for sandbox analysis. After uploading, use `/falconx/entities/submissions/v1` to start analyzing the file.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FieldSchemaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FieldSchemaApi.md#fdrschema_entities_field_get" style="text-decoration: none;"><strong>fdrschema_entities_field_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fdr/entities/schema-fields/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Fetch field schema by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FieldSchemaApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FieldSchemaApi.md#fdrschema_queries_field_get" style="text-decoration: none;"><strong>fdrschema_queries_field_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fdr/queries/schema-fields/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get list of field IDs given a particular query.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FilevantageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FilevantageApi.md#get_changes" style="text-decoration: none;"><strong>get_changes</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /filevantage/entities/changes/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve information on changes</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FilevantageApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FilevantageApi.md#query_changes" style="text-decoration: none;"><strong>query_changes</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /filevantage/queries/changes/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns one or more change IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#aggregate_events" style="text-decoration: none;"><strong>aggregate_events</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/aggregates/events/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Aggregate events for customer</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#aggregate_policy_rules" style="text-decoration: none;"><strong>aggregate_policy_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/aggregates/policy-rules/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Aggregate rules within a policy for customer</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#aggregate_rule_groups" style="text-decoration: none;"><strong>aggregate_rule_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/aggregates/rule-groups/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Aggregate rule groups for customer</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#aggregate_rules" style="text-decoration: none;"><strong>aggregate_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/aggregates/rules/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Aggregate rules for customer</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#create_network_locations" style="text-decoration: none;"><strong>create_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create new network locations provided, and return the ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#create_rule_group" style="text-decoration: none;"><strong>create_rule_group</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create new rule group on a platform for a customer with a name and description, and return the ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#create_rule_group_validation" style="text-decoration: none;"><strong>create_rule_group_validation</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/rule-groups/validation/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Validates the request of creating a new rule group on a platform for a customer with a name and description</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#delete_network_locations" style="text-decoration: none;"><strong>delete_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /fwmgr/entities/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete network location entities by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#delete_rule_groups" style="text-decoration: none;"><strong>delete_rule_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /fwmgr/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete rule group entities by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_events" style="text-decoration: none;"><strong>get_events</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get events entities by ID and optionally version</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_firewall_fields" style="text-decoration: none;"><strong>get_firewall_fields</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/firewall-fields/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the firewall field specifications by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_network_locations" style="text-decoration: none;"><strong>get_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a summary of network locations entities by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_network_locations_details" style="text-decoration: none;"><strong>get_network_locations_details</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/network-locations-details/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get network locations entities by ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_platforms" style="text-decoration: none;"><strong>get_platforms</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/platforms/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get platforms by ID, e.g., windows or mac or droid</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_policy_containers" style="text-decoration: none;"><strong>get_policy_containers</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/policies/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get policy container entities by policy ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_rule_groups" style="text-decoration: none;"><strong>get_rule_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#get_rules" style="text-decoration: none;"><strong>get_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_events" style="text-decoration: none;"><strong>query_events</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all event IDs matching the query with filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_firewall_fields" style="text-decoration: none;"><strong>query_firewall_fields</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/firewall-fields/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the firewall field specification IDs for the provided platform</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_network_locations" style="text-decoration: none;"><strong>query_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of network location IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_platforms" style="text-decoration: none;"><strong>query_platforms</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/platforms/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the list of platform names</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_policy_rules" style="text-decoration: none;"><strong>query_policy_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/policy-rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all firewall rule IDs matching the query with filter, and return them in precedence order</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_rule_groups" style="text-decoration: none;"><strong>query_rule_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all rule group IDs matching the query with filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#query_rules" style="text-decoration: none;"><strong>query_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /fwmgr/queries/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all rule IDs matching the query with filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_network_locations" style="text-decoration: none;"><strong>update_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /fwmgr/entities/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates the network locations provided, and return the ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_network_locations_metadata" style="text-decoration: none;"><strong>update_network_locations_metadata</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/network-locations-metadata/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates the network locations metadata such as polling_intervals for the cid</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_network_locations_precedence" style="text-decoration: none;"><strong>update_network_locations_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/network-locations-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates the network locations precedence according to the list of ids provided.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_policy_container" style="text-decoration: none;"><strong>update_policy_container</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PUT</strong> /fwmgr/entities/policies/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an identified policy container, including local logging functionality.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_policy_container_v1" style="text-decoration: none;"><strong>update_policy_container_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PUT</strong> /fwmgr/entities/policies/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_rule_group" style="text-decoration: none;"><strong>update_rule_group</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /fwmgr/entities/rule-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#update_rule_group_validation" style="text-decoration: none;"><strong>update_rule_group_validation</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /fwmgr/entities/rule-groups/validation/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#upsert_network_locations" style="text-decoration: none;"><strong>upsert_network_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PUT</strong> /fwmgr/entities/network-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates the network locations provided, and return the ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallManagementApi.md#validate_filepath_pattern" style="text-decoration: none;"><strong>validate_filepath_pattern</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /fwmgr/entities/rules/validate-filepath/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Validates that the test pattern matches the executable filepath glob pattern.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#create_firewall_policies" style="text-decoration: none;"><strong>create_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Firewall Policies by specifying details about the policy to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#delete_firewall_policies" style="text-decoration: none;"><strong>delete_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Firewall Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#get_firewall_policies" style="text-decoration: none;"><strong>get_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Firewall Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#perform_firewall_policies_action" style="text-decoration: none;"><strong>perform_firewall_policies_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/firewall-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Firewall Policies specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#query_combined_firewall_policies" style="text-decoration: none;"><strong>query_combined_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#query_combined_firewall_policy_members" style="text-decoration: none;"><strong>query_combined_firewall_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/firewall-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#query_firewall_policies" style="text-decoration: none;"><strong>query_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#query_firewall_policy_members" style="text-decoration: none;"><strong>query_firewall_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/firewall-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#set_firewall_policies_precedence" style="text-decoration: none;"><strong>set_firewall_policies_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/firewall-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::FirewallPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/FirewallPoliciesApi.md#update_firewall_policies" style="text-decoration: none;"><strong>update_firewall_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/firewall/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Firewall Policies by specifying the ID of the policy and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#create_host_groups" style="text-decoration: none;"><strong>create_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/entities/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Host Groups by specifying details about the group to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#delete_host_groups" style="text-decoration: none;"><strong>delete_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /devices/entities/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Host Groups by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#get_host_groups" style="text-decoration: none;"><strong>get_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/entities/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Host Groups by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#perform_group_action" style="text-decoration: none;"><strong>perform_group_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/entities/host-group-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Host Groups specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#query_combined_group_members" style="text-decoration: none;"><strong>query_combined_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/combined/host-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#query_combined_host_groups" style="text-decoration: none;"><strong>query_combined_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/combined/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#query_group_members" style="text-decoration: none;"><strong>query_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/queries/host-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#query_host_groups" style="text-decoration: none;"><strong>query_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/queries/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostGroupApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostGroupApi.md#update_host_groups" style="text-decoration: none;"><strong>update_host_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /devices/entities/host-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Host Groups by specifying the ID of the group and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#entities_perform_action" style="text-decoration: none;"><strong>entities_perform_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/entities/group-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Performs the specified action on the provided prevention policy IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#get_device_details" style="text-decoration: none;"><strong>get_device_details</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/entities/devices/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated: Please use new GET or POST /devices/entities/devices/v2 endpoints.  This endpoint will be removed on or sometime after February 9, 2023.  Get details on one or more hosts by providing agent IDs (AID). You can get a host's agent IDs (AIDs) from the /devices/queries/devices/v1 endpoint, the Falcon console or the Streaming API</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#get_device_details_v2" style="text-decoration: none;"><strong>get_device_details_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/entities/devices/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#get_online_state_v1" style="text-decoration: none;"><strong>get_online_state_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/entities/online-state/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a `state` of `online`, `offline`, or `unknown` for each host, identified by host `id`.  Make a `GET` request to `/devices/queries/devices/v1` to get a list of host IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#perform_action_v2" style="text-decoration: none;"><strong>perform_action_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/entities/devices-actions/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#post_device_details_v2" style="text-decoration: none;"><strong>post_device_details_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/entities/devices/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#query_device_login_history" style="text-decoration: none;"><strong>query_device_login_history</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/combined/devices/login-history/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve details about recent login sessions for a set of devices.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#query_devices_by_filter" style="text-decoration: none;"><strong>query_devices_by_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/queries/devices/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for hosts in your environment by platform, hostname, IP, and other criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#query_devices_by_filter_scroll" style="text-decoration: none;"><strong>query_devices_by_filter_scroll</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/queries/devices-scroll/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#query_get_network_address_history_v1" style="text-decoration: none;"><strong>query_get_network_address_history_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /devices/combined/devices/network-address-history/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve history of IP and MAC addresses of devices.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#query_hidden_devices" style="text-decoration: none;"><strong>query_hidden_devices</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /devices/queries/devices-hidden/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve hidden hosts that match the provided filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::HostsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/HostsApi.md#update_device_tags" style="text-decoration: none;"><strong>update_device_tags</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /devices/entities/devices/tags/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IdentityProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IdentityProtectionApi.md#api_preempt_proxy_post_graphql" style="text-decoration: none;"><strong>api_preempt_proxy_post_graphql</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /identity-protection/combined/graphql/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#crowd_score" style="text-decoration: none;"><strong>crowd_score</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /incidents/combined/crowdscores/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query environment wide CrowdScore and return the entity data</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#get_behaviors" style="text-decoration: none;"><strong>get_behaviors</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /incidents/entities/behaviors/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on behaviors by providing behavior IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#get_incidents" style="text-decoration: none;"><strong>get_incidents</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /incidents/entities/incidents/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on incidents by providing incident IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#perform_incident_action" style="text-decoration: none;"><strong>perform_incident_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /incidents/entities/incident-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#query_behaviors" style="text-decoration: none;"><strong>query_behaviors</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /incidents/queries/behaviors/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for behaviors by providing an FQL filter, sorting, and paging details</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IncidentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IncidentsApi.md#query_incidents" style="text-decoration: none;"><strong>query_incidents</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /incidents/queries/incidents/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for incidents by providing an FQL filter, sorting, and paging details</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#audit_events_query" style="text-decoration: none;"><strong>audit_events_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /installation-tokens/queries/audit-events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for audit events by providing an FQL filter and paging details.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#audit_events_read" style="text-decoration: none;"><strong>audit_events_read</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /installation-tokens/entities/audit-events/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets the details of one or more audit events by id.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#customer_settings_read" style="text-decoration: none;"><strong>customer_settings_read</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /installation-tokens/entities/customer-settings/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Check current installation token settings.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#tokens_create" style="text-decoration: none;"><strong>tokens_create</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /installation-tokens/entities/tokens/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a token.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#tokens_delete" style="text-decoration: none;"><strong>tokens_delete</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /installation-tokens/entities/tokens/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#tokens_query" style="text-decoration: none;"><strong>tokens_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /installation-tokens/queries/tokens/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for tokens by providing an FQL filter and paging details.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#tokens_read" style="text-decoration: none;"><strong>tokens_read</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /installation-tokens/entities/tokens/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets the details of one or more tokens by id.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensApi.md#tokens_update" style="text-decoration: none;"><strong>tokens_update</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /installation-tokens/entities/tokens/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::InstallationTokensSettingsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/InstallationTokensSettingsApi.md#customer_settings_update" style="text-decoration: none;"><strong>customer_settings_update</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /installation-tokens/entities/customer-settings/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update installation token settings.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_actor_entities" style="text-decoration: none;"><strong>get_intel_actor_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/actors/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve specific actors using their actor IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_indicator_entities" style="text-decoration: none;"><strong>get_intel_indicator_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /intel/entities/indicators/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve specific indicators using their indicator IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_report_entities" style="text-decoration: none;"><strong>get_intel_report_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve specific reports using their report IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_report_pdf" style="text-decoration: none;"><strong>get_intel_report_pdf</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/report-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Return a Report PDF attachment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_rule_entities" style="text-decoration: none;"><strong>get_intel_rule_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve details for rule sets for the specified ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_intel_rule_file" style="text-decoration: none;"><strong>get_intel_rule_file</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/rules-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download earlier rule sets.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_latest_intel_rule_file" style="text-decoration: none;"><strong>get_latest_intel_rule_file</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/rules-latest-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download the latest rule set.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_mitre_report" style="text-decoration: none;"><strong>get_mitre_report</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/entities/mitre-reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Export Mitre ATT&CK information for a given actor.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#get_vulnerabilities" style="text-decoration: none;"><strong>get_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /intel/entities/vulnerabilities/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get vulnerabilities</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#post_mitre_attacks" style="text-decoration: none;"><strong>post_mitre_attacks</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /intel/entities/mitre/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves report and observable IDs associated with the given actor and attacks</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_actor_entities" style="text-decoration: none;"><strong>query_intel_actor_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/combined/actors/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get info about actors that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_actor_ids" style="text-decoration: none;"><strong>query_intel_actor_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/actors/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get actor IDs that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_indicator_entities" style="text-decoration: none;"><strong>query_intel_indicator_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/combined/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get info about indicators that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_indicator_ids" style="text-decoration: none;"><strong>query_intel_indicator_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get indicators IDs that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_report_entities" style="text-decoration: none;"><strong>query_intel_report_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/combined/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get info about reports that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_report_ids" style="text-decoration: none;"><strong>query_intel_report_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get report IDs that match provided FQL filters.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_intel_rule_ids" style="text-decoration: none;"><strong>query_intel_rule_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for rule IDs that match provided filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_mitre_attacks" style="text-decoration: none;"><strong>query_mitre_attacks</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/mitre/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets MITRE tactics and techniques for the given actor</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IntelApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IntelApi.md#query_vulnerabilities" style="text-decoration: none;"><strong>query_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /intel/queries/vulnerabilities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get vulnerabilities IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IoaExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IoaExclusionsApi.md#create_ioa_exclusions_v1" style="text-decoration: none;"><strong>create_ioa_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/ioa-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create the IOA exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IoaExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IoaExclusionsApi.md#delete_ioa_exclusions_v1" style="text-decoration: none;"><strong>delete_ioa_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/ioa-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete the IOA exclusions by id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IoaExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IoaExclusionsApi.md#get_ioa_exclusions_v1" style="text-decoration: none;"><strong>get_ioa_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/ioa-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a set of IOA Exclusions by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IoaExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IoaExclusionsApi.md#query_ioa_exclusions_v1" style="text-decoration: none;"><strong>query_ioa_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/ioa-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for IOA exclusions.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IoaExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IoaExclusionsApi.md#update_ioa_exclusions_v1" style="text-decoration: none;"><strong>update_ioa_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/ioa-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update the IOA exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#action_get_v1" style="text-decoration: none;"><strong>action_get_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/entities/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Actions by ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#action_query_v1" style="text-decoration: none;"><strong>action_query_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/queries/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query Actions.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#get_indicators_report" style="text-decoration: none;"><strong>get_indicators_report</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /iocs/entities/indicators-reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Launch an indicators report creation job</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_aggregate_v1" style="text-decoration: none;"><strong>indicator_aggregate_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /iocs/aggregates/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Indicators aggregates as specified via json in the request body.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_combined_v1" style="text-decoration: none;"><strong>indicator_combined_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/combined/indicator/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Combined for Indicators.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_create_v1" style="text-decoration: none;"><strong>indicator_create_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /iocs/entities/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Indicators.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_delete_v1" style="text-decoration: none;"><strong>indicator_delete_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /iocs/entities/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete Indicators by ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_get_v1" style="text-decoration: none;"><strong>indicator_get_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/entities/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Indicators by ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_search_v1" style="text-decoration: none;"><strong>indicator_search_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/queries/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Indicators.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#indicator_update_v1" style="text-decoration: none;"><strong>indicator_update_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /iocs/entities/indicators/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Indicators.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#ioc_type_query_v1" style="text-decoration: none;"><strong>ioc_type_query_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/queries/ioc-types/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query IOC Types.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#platform_query_v1" style="text-decoration: none;"><strong>platform_query_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/queries/platforms/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query Platforms.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocApi.md#severity_query_v1" style="text-decoration: none;"><strong>severity_query_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /iocs/queries/severities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query Severities.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocsApi.md#devices_count" style="text-decoration: none;"><strong>devices_count</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /indicators/aggregates/devices-count/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Number of hosts in your customer account that have observed a given custom IOC</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocsApi.md#devices_ran_on" style="text-decoration: none;"><strong>devices_ran_on</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /indicators/queries/devices/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocsApi.md#entities_processes" style="text-decoration: none;"><strong>entities_processes</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /processes/entities/processes/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">For the provided ProcessID retrieve the process details</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::IocsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/IocsApi.md#processes_ran_on" style="text-decoration: none;"><strong>processes_ran_on</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /indicators/queries/processes/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for processes associated with a custom IOC</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#create_aws_account" style="text-decoration: none;"><strong>create_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /kubernetes-protection/entities/accounts/aws/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new AWS account in our system for a customer and generates the installation script</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#create_azure_subscription" style="text-decoration: none;"><strong>create_azure_subscription</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /kubernetes-protection/entities/accounts/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Creates a new Azure Subscription in our system</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#delete_aws_accounts_mixin0" style="text-decoration: none;"><strong>delete_aws_accounts_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /kubernetes-protection/entities/accounts/aws/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete AWS accounts.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#delete_azure_subscription" style="text-decoration: none;"><strong>delete_azure_subscription</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /kubernetes-protection/entities/accounts/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deletes a new Azure Subscription in our system</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_aws_accounts_mixin0" style="text-decoration: none;"><strong>get_aws_accounts_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/accounts/aws/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides a list of AWS accounts.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_azure_install_script" style="text-decoration: none;"><strong>get_azure_install_script</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/user-script/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides the script to run for a given tenant id and subscription IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_azure_tenant_config" style="text-decoration: none;"><strong>get_azure_tenant_config</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/config/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets the Azure tenant Config</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_azure_tenant_ids" style="text-decoration: none;"><strong>get_azure_tenant_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/tenants/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides all the azure subscriptions and tenants</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_clusters" style="text-decoration: none;"><strong>get_clusters</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/kubernetes/clusters/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides the clusters acknowledged by the Kubernetes Protection service</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_combined_cloud_clusters" style="text-decoration: none;"><strong>get_combined_cloud_clusters</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/cloud_cluster/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns a combined list of provisioned cloud accounts and known kubernetes clusters</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_helm_values_yaml" style="text-decoration: none;"><strong>get_helm_values_yaml</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/integration/agent/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_locations" style="text-decoration: none;"><strong>get_locations</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/cloud-locations/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides the cloud locations acknowledged by the Kubernetes Protection service</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#get_static_scripts" style="text-decoration: none;"><strong>get_static_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/gen/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Gets static bash scripts that are used during registration</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#list_azure_accounts" style="text-decoration: none;"><strong>list_azure_accounts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /kubernetes-protection/entities/accounts/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Provides the azure subscriptions registered to Kubernetes Protection</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#patch_azure_service_principal" style="text-decoration: none;"><strong>patch_azure_service_principal</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /kubernetes-protection/entities/service-principal/azure/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Adds the client ID for the given tenant ID to our system</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#regenerate_api_key" style="text-decoration: none;"><strong>regenerate_api_key</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /kubernetes-protection/entities/integration/api-key/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Regenerate API key for docker registry integrations</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#trigger_scan" style="text-decoration: none;"><strong>trigger_scan</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /kubernetes-protection/entities/scan/trigger/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Triggers a dry run or a full scan of a customer's kubernetes footprint</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::KubernetesProtectionApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/KubernetesProtectionApi.md#update_aws_account" style="text-decoration: none;"><strong>update_aws_account</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /kubernetes-protection/entities/accounts/aws/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Updates the AWS account per the query parameters provided</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#get_mal_query_download_v1" style="text-decoration: none;"><strong>get_mal_query_download_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /malquery/entities/download-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#get_mal_query_entities_samples_fetch_v1" style="text-decoration: none;"><strong>get_mal_query_entities_samples_fetch_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /malquery/entities/samples-fetch/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Fetch a zip archive with password 'infected' containing the samples. Call this once the /entities/samples-multidownload request has finished processing</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#get_mal_query_metadata_v1" style="text-decoration: none;"><strong>get_mal_query_metadata_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /malquery/entities/metadata/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve indexed files metadata by their hash</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#get_mal_query_quotas_v1" style="text-decoration: none;"><strong>get_mal_query_quotas_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /malquery/aggregates/quotas/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get information about search and download quotas in your environment</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#get_mal_query_request_v1" style="text-decoration: none;"><strong>get_mal_query_request_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /malquery/entities/requests/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#post_mal_query_entities_samples_multidownload_v1" style="text-decoration: none;"><strong>post_mal_query_entities_samples_multidownload_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /malquery/entities/samples-multidownload/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#post_mal_query_exact_search_v1" style="text-decoration: none;"><strong>post_mal_query_exact_search_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /malquery/queries/exact-search/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#post_mal_query_fuzzy_search_v1" style="text-decoration: none;"><strong>post_mal_query_fuzzy_search_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /malquery/combined/fuzzy-search/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MalqueryApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MalqueryApi.md#post_mal_query_hunt_v1" style="text-decoration: none;"><strong>post_mal_query_hunt_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /malquery/queries/hunt/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#aggregate_cases" style="text-decoration: none;"><strong>aggregate_cases</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/aggregates/cases/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve aggregate case values based on the matched filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#case_add_activity" style="text-decoration: none;"><strong>case_add_activity</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/case-activity/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Add an activity to case. Only activities of type comment are allowed via API</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#case_add_attachment" style="text-decoration: none;"><strong>case_add_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/case-attachment/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload an attachment for the case.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#case_download_attachment" style="text-decoration: none;"><strong>case_download_attachment</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /message-center/entities/case-attachment/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">retrieves an attachment for the case, given the attachment id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#create_case" style="text-decoration: none;"><strong>create_case</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/case/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">create a new case</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#create_case_v2" style="text-decoration: none;"><strong>create_case_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/case/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">create a new case</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#get_case_activity_by_ids" style="text-decoration: none;"><strong>get_case_activity_by_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/case-activities/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve activities for given id's</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#get_case_entities_by_ids" style="text-decoration: none;"><strong>get_case_entities_by_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /message-center/entities/cases/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve message center cases</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#query_activity_by_case_id" style="text-decoration: none;"><strong>query_activity_by_case_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /message-center/queries/case-activities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve activities id's for a case</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MessageCenterApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MessageCenterApi.md#query_cases_ids_by_filter" style="text-decoration: none;"><strong>query_cases_ids_by_filter</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /message-center/queries/cases/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve case id's that match the provided filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MlExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MlExclusionsApi.md#create_ml_exclusions_v1" style="text-decoration: none;"><strong>create_ml_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/ml-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create the ML exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MlExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MlExclusionsApi.md#delete_ml_exclusions_v1" style="text-decoration: none;"><strong>delete_ml_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/ml-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete the ML exclusions by id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MlExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MlExclusionsApi.md#get_ml_exclusions_v1" style="text-decoration: none;"><strong>get_ml_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/ml-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a set of ML Exclusions by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MlExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MlExclusionsApi.md#query_ml_exclusions_v1" style="text-decoration: none;"><strong>query_ml_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/ml-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for ML exclusions.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MlExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MlExclusionsApi.md#update_ml_exclusions_v1" style="text-decoration: none;"><strong>update_ml_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/ml-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update the ML exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MobileEnrollmentApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MobileEnrollmentApi.md#request_device_enrollment_v3" style="text-decoration: none;"><strong>request_device_enrollment_v3</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /enrollments/entities/details/v3</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Trigger on-boarding process for a mobile device</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#add_cid_group_members" style="text-decoration: none;"><strong>add_cid_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/cid-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Add new CID group member.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#add_role" style="text-decoration: none;"><strong>add_role</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/mssp-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. </td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#add_user_group_members" style="text-decoration: none;"><strong>add_user_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/user-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Add new user group member. Maximum 500 members allowed per user group.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#create_cid_groups" style="text-decoration: none;"><strong>create_cid_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/cid-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#create_user_groups" style="text-decoration: none;"><strong>create_user_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/user-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#delete_cid_group_members" style="text-decoration: none;"><strong>delete_cid_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /mssp/entities/cid-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete CID group members.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#delete_cid_groups" style="text-decoration: none;"><strong>delete_cid_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /mssp/entities/cid-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete CID groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#delete_user_group_members" style="text-decoration: none;"><strong>delete_user_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /mssp/entities/user-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete user group members entry.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#delete_user_groups" style="text-decoration: none;"><strong>delete_user_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /mssp/entities/user-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete user groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#deleted_roles" style="text-decoration: none;"><strong>deleted_roles</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /mssp/entities/mssp-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_children" style="text-decoration: none;"><strong>get_children</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/children/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get link to child customer by child CID(s)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_children_v2" style="text-decoration: none;"><strong>get_children_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /mssp/entities/children/GET/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get link to child customer by child CID(s)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_cid_group_by_id" style="text-decoration: none;"><strong>get_cid_group_by_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/cid-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_cid_group_by_id_v2" style="text-decoration: none;"><strong>get_cid_group_by_id_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/cid-groups/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get CID Groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_cid_group_members_by" style="text-decoration: none;"><strong>get_cid_group_members_by</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/cid-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_cid_group_members_by_v2" style="text-decoration: none;"><strong>get_cid_group_members_by_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/cid-group-members/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get CID group members by CID Group ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_roles_by_id" style="text-decoration: none;"><strong>get_roles_by_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/mssp-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_user_group_members_by_id" style="text-decoration: none;"><strong>get_user_group_members_by_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/user-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_user_group_members_by_idv2" style="text-decoration: none;"><strong>get_user_group_members_by_idv2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/user-group-members/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get user group members by user group ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_user_groups_by_id" style="text-decoration: none;"><strong>get_user_groups_by_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/user-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#get_user_groups_by_idv2" style="text-decoration: none;"><strong>get_user_groups_by_idv2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/entities/user-groups/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get user groups by ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_children" style="text-decoration: none;"><strong>query_children</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/children/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query for customers linked as children</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_cid_group_members" style="text-decoration: none;"><strong>query_cid_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/cid-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query a CID groups members by associated CID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_cid_groups" style="text-decoration: none;"><strong>query_cid_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/cid-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query CID groups.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_roles" style="text-decoration: none;"><strong>query_roles</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/mssp-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_user_group_members" style="text-decoration: none;"><strong>query_user_group_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/user-group-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query user group member by user UUID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#query_user_groups" style="text-decoration: none;"><strong>query_user_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /mssp/queries/user-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query user groups.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#update_cid_groups" style="text-decoration: none;"><strong>update_cid_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /mssp/entities/cid-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::MsspApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/MsspApi.md#update_user_groups" style="text-decoration: none;"><strong>update_user_groups</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /mssp/entities/user-groups/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::Oauth2Api</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/Oauth2Api.md#oauth2_access_token" style="text-decoration: none;"><strong>oauth2_access_token</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /oauth2/token</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Generate an OAuth2 access token</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::Oauth2Api</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/Oauth2Api.md#oauth2_revoke_token" style="text-decoration: none;"><strong>oauth2_revoke_token</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /oauth2/revoke</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#aggregate_query_scan_host_metadata" style="text-decoration: none;"><strong>aggregate_query_scan_host_metadata</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/aggregates/scan-hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get aggregates on ODS scan-hosts data.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#aggregate_scans" style="text-decoration: none;"><strong>aggregate_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/aggregates/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get aggregates on ODS scan data.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#aggregate_scheduled_scans" style="text-decoration: none;"><strong>aggregate_scheduled_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/aggregates/scheduled-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get aggregates on ODS scheduled-scan data.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#cancel_scans" style="text-decoration: none;"><strong>cancel_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/entities/scan-control-actions/cancel/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Cancel ODS scans for the given scan ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#create_scan" style="text-decoration: none;"><strong>create_scan</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/entities/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create ODS scan and start or schedule scan for the given scan request.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#delete_scheduled_scans" style="text-decoration: none;"><strong>delete_scheduled_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /ods/entities/scheduled-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete ODS scheduled-scans for the given scheduled-scan ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#get_malicious_files_by_ids" style="text-decoration: none;"><strong>get_malicious_files_by_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/entities/malicious-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get malicious files by ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#get_scan_host_metadata_by_ids" style="text-decoration: none;"><strong>get_scan_host_metadata_by_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/entities/scan-hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get scan hosts by ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#get_scans_by_scan_ids" style="text-decoration: none;"><strong>get_scans_by_scan_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/entities/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Scans by IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#get_scheduled_scans_by_scan_ids" style="text-decoration: none;"><strong>get_scheduled_scans_by_scan_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/entities/scheduled-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get ScheduledScans by IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#query_malicious_files" style="text-decoration: none;"><strong>query_malicious_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/queries/malicious-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query malicious files.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#query_scan_host_metadata" style="text-decoration: none;"><strong>query_scan_host_metadata</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/queries/scan-hosts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query scan hosts.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#query_scans" style="text-decoration: none;"><strong>query_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/queries/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query Scans.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#query_scheduled_scans" style="text-decoration: none;"><strong>query_scheduled_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ods/queries/scheduled-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query ScheduledScans.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OdsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OdsApi.md#schedule_scan" style="text-decoration: none;"><strong>schedule_scan</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ods/entities/scheduled-scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create ODS scan and start or schedule scan for the given scan request.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OverwatchDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OverwatchDashboardApi.md#aggregates_detections_global_counts" style="text-decoration: none;"><strong>aggregates_detections_global_counts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /overwatch-dashboards/aggregates/detections-global-counts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the total number of detections pushed across all customers</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OverwatchDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OverwatchDashboardApi.md#aggregates_events" style="text-decoration: none;"><strong>aggregates_events</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /overwatch-dashboards/aggregates/events/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get aggregate OverWatch detection event info by providing an aggregate query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OverwatchDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OverwatchDashboardApi.md#aggregates_events_collections" style="text-decoration: none;"><strong>aggregates_events_collections</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /overwatch-dashboards/aggregates/events-collections/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get OverWatch detection event collection info by providing an aggregate query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OverwatchDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OverwatchDashboardApi.md#aggregates_incidents_global_counts" style="text-decoration: none;"><strong>aggregates_incidents_global_counts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /overwatch-dashboards/aggregates/incidents-global-counts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the total number of incidents pushed across all customers</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::OverwatchDashboardApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/OverwatchDashboardApi.md#aggregates_ow_events_global_counts" style="text-decoration: none;"><strong>aggregates_ow_events_global_counts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /overwatch-dashboards/aggregates/ow-events-global-counts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the total number of OverWatch events across all customers</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#create_prevention_policies" style="text-decoration: none;"><strong>create_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Prevention Policies by specifying details about the policy to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#delete_prevention_policies" style="text-decoration: none;"><strong>delete_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Prevention Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#get_prevention_policies" style="text-decoration: none;"><strong>get_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Prevention Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#perform_prevention_policies_action" style="text-decoration: none;"><strong>perform_prevention_policies_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/prevention-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Prevention Policies specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#query_combined_prevention_policies" style="text-decoration: none;"><strong>query_combined_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#query_combined_prevention_policy_members" style="text-decoration: none;"><strong>query_combined_prevention_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/prevention-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#query_prevention_policies" style="text-decoration: none;"><strong>query_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#query_prevention_policy_members" style="text-decoration: none;"><strong>query_prevention_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/prevention-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#set_prevention_policies_precedence" style="text-decoration: none;"><strong>set_prevention_policies_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/prevention-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PreventionPoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PreventionPoliciesApi.md#update_prevention_policies" style="text-decoration: none;"><strong>update_prevention_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/prevention/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Prevention Policies by specifying the ID of the policy and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::PublicAssessmentsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/PublicAssessmentsApi.md#get_combined_assessments_query" style="text-decoration: none;"><strong>get_combined_assessments_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /configuration-assessment/combined/assessments/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#action_update_count" style="text-decoration: none;"><strong>action_update_count</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /quarantine/aggregates/action-update-count/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Returns count of potentially affected quarantined files for each action.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#get_aggregate_files" style="text-decoration: none;"><strong>get_aggregate_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /quarantine/aggregates/quarantined-files/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get quarantine file aggregates as specified via json in request body.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#get_quarantine_files" style="text-decoration: none;"><strong>get_quarantine_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /quarantine/entities/quarantined-files/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get quarantine file metadata for specified ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#query_quarantine_files" style="text-decoration: none;"><strong>query_quarantine_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /quarantine/queries/quarantined-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get quarantine file ids that match the provided filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#update_qf_by_query" style="text-decoration: none;"><strong>update_qf_by_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /quarantine/queries/quarantined-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Apply quarantine file actions by query.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuarantineApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuarantineApi.md#update_quarantined_detects_by_ids" style="text-decoration: none;"><strong>update_quarantined_detects_by_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /quarantine/entities/quarantined-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Apply action by quarantine file ids</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuickScanApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuickScanApi.md#get_scans" style="text-decoration: none;"><strong>get_scans</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /scanner/entities/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuickScanApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuickScanApi.md#get_scans_aggregates" style="text-decoration: none;"><strong>get_scans_aggregates</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /scanner/aggregates/scans/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get scans aggregations as specified via json in request body.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuickScanApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuickScanApi.md#query_submissions_mixin0" style="text-decoration: none;"><strong>query_submissions_mixin0</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /scanner/queries/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::QuickScanApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/QuickScanApi.md#scan_samples" style="text-decoration: none;"><strong>scan_samples</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /scanner/entities/scans/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_active_responder_cmd" style="text-decoration: none;"><strong>batch_active_responder_cmd</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-active-responder-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_cmd" style="text-decoration: none;"><strong>batch_cmd</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch executes a RTR read-only command across the hosts mapped to the given batch ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_get_cmd" style="text-decoration: none;"><strong>batch_get_cmd</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-get-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch executes `get` command across hosts to retrieve files. After this call is made `GET /real-time-response/combined/batch-get-command/v1` is used to query for the results.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_get_cmd_status" style="text-decoration: none;"><strong>batch_get_cmd_status</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/combined/batch-get-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_init_sessions" style="text-decoration: none;"><strong>batch_init_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-init-session/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#batch_refresh_sessions" style="text-decoration: none;"><strong>batch_refresh_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-refresh-session/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_aggregate_sessions" style="text-decoration: none;"><strong>r_tr_aggregate_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/aggregates/sessions/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get aggregates on session data.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_check_active_responder_command_status" style="text-decoration: none;"><strong>r_tr_check_active_responder_command_status</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/active-responder-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get status of an executed active-responder command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_check_command_status" style="text-decoration: none;"><strong>r_tr_check_command_status</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get status of an executed command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_delete_file" style="text-decoration: none;"><strong>r_tr_delete_file</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/file/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a RTR session file.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_delete_file_v2" style="text-decoration: none;"><strong>r_tr_delete_file_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/file/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a RTR session file.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_delete_queued_session" style="text-decoration: none;"><strong>r_tr_delete_queued_session</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/queued-sessions/command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a queued session command</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_delete_session" style="text-decoration: none;"><strong>r_tr_delete_session</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/sessions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a session.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_execute_active_responder_command" style="text-decoration: none;"><strong>r_tr_execute_active_responder_command</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/active-responder-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Execute an active responder command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_execute_command" style="text-decoration: none;"><strong>r_tr_execute_command</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Execute a command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_get_extracted_file_contents" style="text-decoration: none;"><strong>r_tr_get_extracted_file_contents</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/extracted-file-contents/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get RTR extracted file contents for specified session and sha256.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_init_session" style="text-decoration: none;"><strong>r_tr_init_session</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/sessions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Initialize a new session with the RTR cloud.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_list_all_sessions" style="text-decoration: none;"><strong>r_tr_list_all_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/queries/sessions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of session_ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_list_files" style="text-decoration: none;"><strong>r_tr_list_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/file/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of files for the specified RTR session.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_list_files_v2" style="text-decoration: none;"><strong>r_tr_list_files_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/file/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of files for the specified RTR session.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_list_queued_sessions" style="text-decoration: none;"><strong>r_tr_list_queued_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/queued-sessions/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get queued session metadata by session ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_list_sessions" style="text-decoration: none;"><strong>r_tr_list_sessions</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/sessions/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get session metadata by session id.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseApi.md#r_tr_pulse_session" style="text-decoration: none;"><strong>r_tr_pulse_session</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/refresh-session/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Refresh a session timeout on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#batch_admin_cmd" style="text-decoration: none;"><strong>batch_admin_cmd</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/combined/batch-admin-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Batch executes a RTR administrator command across the hosts mapped to the given batch ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_check_admin_command_status" style="text-decoration: none;"><strong>r_tr_check_admin_command_status</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/admin-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get status of an executed RTR administrator command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_create_put_files" style="text-decoration: none;"><strong>r_tr_create_put_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/put-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload a new put-file to use for the RTR `put` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_create_scripts" style="text-decoration: none;"><strong>r_tr_create_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload a new custom-script to use for the RTR `runscript` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_delete_put_files" style="text-decoration: none;"><strong>r_tr_delete_put_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/put-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a put-file based on the ID given.  Can only delete one file at a time.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_delete_scripts" style="text-decoration: none;"><strong>r_tr_delete_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /real-time-response/entities/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a custom-script based on the ID given.  Can only delete one script at a time.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_execute_admin_command" style="text-decoration: none;"><strong>r_tr_execute_admin_command</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /real-time-response/entities/admin-command/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Execute a RTR administrator command on a single host.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_get_put_files" style="text-decoration: none;"><strong>r_tr_get_put_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/put-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get put-files based on the ID's given. These are used for the RTR `put` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_get_put_files_v2" style="text-decoration: none;"><strong>r_tr_get_put_files_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/put-files/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get put-files based on the ID's given. These are used for the RTR `put` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_get_scripts" style="text-decoration: none;"><strong>r_tr_get_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_get_scripts_v2" style="text-decoration: none;"><strong>r_tr_get_scripts_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/entities/scripts/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_list_put_files" style="text-decoration: none;"><strong>r_tr_list_put_files</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/queries/put-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of put-file ID's that are available to the user for the `put` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_list_scripts" style="text-decoration: none;"><strong>r_tr_list_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /real-time-response/queries/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a list of custom-script ID's that are available to the user for the `runscript` command.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::RealTimeResponseAdminApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/RealTimeResponseAdminApi.md#r_tr_update_scripts" style="text-decoration: none;"><strong>r_tr_update_scripts</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /real-time-response/entities/scripts/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload a new scripts to replace an existing one.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#aggregate_notifications_exposed_data_records_v1" style="text-decoration: none;"><strong>aggregate_notifications_exposed_data_records_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/aggregates/notifications-exposed-data-records/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name]</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#aggregate_notifications_v1" style="text-decoration: none;"><strong>aggregate_notifications_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/aggregates/notifications/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get notification aggregates as specified via JSON in request body.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#create_actions_v1" style="text-decoration: none;"><strong>create_actions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/entities/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#create_export_jobs_v1" style="text-decoration: none;"><strong>create_export_jobs_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/entities/exports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#create_rules_v1" style="text-decoration: none;"><strong>create_rules_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create monitoring rules.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#delete_action_v1" style="text-decoration: none;"><strong>delete_action_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /recon/entities/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete an action from a monitoring rule based on the action ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#delete_export_jobs_v1" style="text-decoration: none;"><strong>delete_export_jobs_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /recon/entities/exports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete export jobs (and their associated file(s)) based on their IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#delete_notifications_v1" style="text-decoration: none;"><strong>delete_notifications_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /recon/entities/notifications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#delete_rules_v1" style="text-decoration: none;"><strong>delete_rules_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /recon/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete monitoring rules.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_actions_v1" style="text-decoration: none;"><strong>get_actions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_export_jobs_v1" style="text-decoration: none;"><strong>get_export_jobs_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/exports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_file_content_for_export_jobs_v1" style="text-decoration: none;"><strong>get_file_content_for_export_jobs_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/export-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download the file associated with a job ID.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_notifications_detailed_translated_v1" style="text-decoration: none;"><strong>get_notifications_detailed_translated_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/notifications-detailed-translated/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_notifications_detailed_v1" style="text-decoration: none;"><strong>get_notifications_detailed_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/notifications-detailed/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_notifications_exposed_data_records_v1" style="text-decoration: none;"><strong>get_notifications_exposed_data_records_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/notifications-exposed-data-records/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_notifications_translated_v1" style="text-decoration: none;"><strong>get_notifications_translated_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/notifications-translated/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_notifications_v1" style="text-decoration: none;"><strong>get_notifications_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/notifications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#get_rules_v1" style="text-decoration: none;"><strong>get_rules_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#preview_rule_v1" style="text-decoration: none;"><strong>preview_rule_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /recon/aggregates/rules-preview/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Preview rules notification count and distribution. This will return aggregations on: channel, count, site.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#query_actions_v1" style="text-decoration: none;"><strong>query_actions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/queries/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#query_notifications_exposed_data_records_v1" style="text-decoration: none;"><strong>query_notifications_exposed_data_records_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/queries/notifications-exposed-data-records/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#query_notifications_v1" style="text-decoration: none;"><strong>query_notifications_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/queries/notifications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#query_rules_v1" style="text-decoration: none;"><strong>query_rules_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /recon/queries/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#update_action_v1" style="text-decoration: none;"><strong>update_action_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /recon/entities/actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update an action for a monitoring rule.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#update_notifications_v1" style="text-decoration: none;"><strong>update_notifications_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /recon/entities/notifications/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update notification status or assignee. Accepts bulk requests</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReconApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReconApi.md#update_rules_v1" style="text-decoration: none;"><strong>update_rules_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /recon/entities/rules/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update monitoring rules.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReportExecutionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReportExecutionsApi.md#report_executions_download_get" style="text-decoration: none;"><strong>report_executions_download_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /reports/entities/report-executions-download/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get report entity download</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReportExecutionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReportExecutionsApi.md#report_executions_get" style="text-decoration: none;"><strong>report_executions_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /reports/entities/report-executions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve report details for the provided report IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReportExecutionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReportExecutionsApi.md#report_executions_query" style="text-decoration: none;"><strong>report_executions_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /reports/queries/report-executions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all report execution IDs matching the query with filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ReportExecutionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ReportExecutionsApi.md#report_executions_retry" style="text-decoration: none;"><strong>report_executions_retry</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /reports/entities/report-executions-retry/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">This endpoint will be used to retry report executions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#create_rt_response_policies" style="text-decoration: none;"><strong>create_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Response Policies by specifying details about the policy to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#delete_rt_response_policies" style="text-decoration: none;"><strong>delete_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Response Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#get_rt_response_policies" style="text-decoration: none;"><strong>get_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Response Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#perform_rt_response_policies_action" style="text-decoration: none;"><strong>perform_rt_response_policies_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/response-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Response Policies specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#query_combined_rt_response_policies" style="text-decoration: none;"><strong>query_combined_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#query_combined_rt_response_policy_members" style="text-decoration: none;"><strong>query_combined_rt_response_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/response-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#query_rt_response_policies" style="text-decoration: none;"><strong>query_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#query_rt_response_policy_members" style="text-decoration: none;"><strong>query_rt_response_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/response-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#set_rt_response_policies_precedence" style="text-decoration: none;"><strong>set_rt_response_policies_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/response-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ResponsePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ResponsePoliciesApi.md#update_rt_response_policies" style="text-decoration: none;"><strong>update_rt_response_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/response/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Response Policies by specifying the ID of the policy and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#archive_delete_v1" style="text-decoration: none;"><strong>archive_delete_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /archives/entities/archives/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete an archive that was uploaded previously</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#archive_get_v1" style="text-decoration: none;"><strong>archive_get_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /archives/entities/archives/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the archives upload operation statuses. Status `done` means that archive was processed successfully. Status `error` means that archive was not processed successfully.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#archive_list_v1" style="text-decoration: none;"><strong>archive_list_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /archives/entities/archive-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the archives files in chunks.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#archive_upload_v1" style="text-decoration: none;"><strong>archive_upload_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /archives/entities/archives/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of `/archives/entities/archives/v2`</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#archive_upload_v2" style="text-decoration: none;"><strong>archive_upload_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /archives/entities/archives/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Uploads an archive and extracts files list from it. Operation is asynchronous use `/archives/entities/archives/v1` to check the status. After uploading, use `/archives/entities/extractions/v1` to copy the file to internal storage making it available for content analysis.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#delete_sample_v3" style="text-decoration: none;"><strong>delete_sample_v3</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /samples/entities/samples/v3</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Removes a sample, including file, meta and submissions from the collection</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#extraction_create_v1" style="text-decoration: none;"><strong>extraction_create_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /archives/entities/extractions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#extraction_get_v1" style="text-decoration: none;"><strong>extraction_get_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /archives/entities/extractions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the files extraction operation statuses. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#extraction_list_v1" style="text-decoration: none;"><strong>extraction_list_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /archives/entities/extraction-files/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the files extractions in chunks. Status `done` means that all files were processed successfully. Status `error` means that at least one of the file could not be processed.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#get_sample_v3" style="text-decoration: none;"><strong>get_sample_v3</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /samples/entities/samples/v3</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieves the file associated with the given ID (SHA256)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SampleUploadsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SampleUploadsApi.md#upload_sample_v3" style="text-decoration: none;"><strong>upload_sample_v3</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /samples/entities/samples/v3</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ScheduledReportsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ScheduledReportsApi.md#scheduled_reports_get" style="text-decoration: none;"><strong>scheduled_reports_get</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /reports/entities/scheduled-reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve scheduled reports for the provided report IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ScheduledReportsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ScheduledReportsApi.md#scheduled_reports_launch" style="text-decoration: none;"><strong>scheduled_reports_launch</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /reports/entities/scheduled-reports/execution/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Launch scheduled reports executions for the provided report IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ScheduledReportsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ScheduledReportsApi.md#scheduled_reports_query" style="text-decoration: none;"><strong>scheduled_reports_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /reports/queries/scheduled-reports/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Find all report IDs matching the query with filter</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorDownloadApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorDownloadApi.md#download_sensor_installer_by_id" style="text-decoration: none;"><strong>download_sensor_installer_by_id</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/entities/download-installer/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Download sensor installer by SHA256 ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorDownloadApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorDownloadApi.md#get_combined_sensor_installers_by_query" style="text-decoration: none;"><strong>get_combined_sensor_installers_by_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/combined/installers/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get sensor installer details by provided query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorDownloadApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorDownloadApi.md#get_sensor_installers_by_query" style="text-decoration: none;"><strong>get_sensor_installers_by_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/queries/installers/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get sensor installer IDs by provided query</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorDownloadApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorDownloadApi.md#get_sensor_installers_ccidby_query" style="text-decoration: none;"><strong>get_sensor_installers_ccidby_query</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/queries/installers/ccid/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get CCID to use with sensor installers</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorDownloadApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorDownloadApi.md#get_sensor_installers_entities" style="text-decoration: none;"><strong>get_sensor_installers_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /sensors/entities/installers/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get sensor installer details by provided SHA256 IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#create_sensor_update_policies" style="text-decoration: none;"><strong>create_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Sensor Update Policies by specifying details about the policy to create</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#create_sensor_update_policies_v2" style="text-decoration: none;"><strong>create_sensor_update_policies_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/sensor-update/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#delete_sensor_update_policies" style="text-decoration: none;"><strong>delete_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a set of Sensor Update Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#get_sensor_update_policies" style="text-decoration: none;"><strong>get_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Sensor Update Policies by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#get_sensor_update_policies_v2" style="text-decoration: none;"><strong>get_sensor_update_policies_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/sensor-update/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#perform_sensor_update_policies_action" style="text-decoration: none;"><strong>perform_sensor_update_policies_action</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/sensor-update-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Perform the specified action on the Sensor Update Policies specified in the request</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_builds" style="text-decoration: none;"><strong>query_combined_sensor_update_builds</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/sensor-update-builds/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve available builds for use with Sensor Update Policies</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_kernels" style="text-decoration: none;"><strong>query_combined_sensor_update_kernels</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/sensor-update-kernels/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve kernel compatibility info for Sensor Update Builds</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies" style="text-decoration: none;"><strong>query_combined_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies_v2" style="text-decoration: none;"><strong>query_combined_sensor_update_policies_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/sensor-update/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policy_members" style="text-decoration: none;"><strong>query_combined_sensor_update_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/combined/sensor-update-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_sensor_update_kernels_distinct" style="text-decoration: none;"><strong>query_sensor_update_kernels_distinct</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/sensor-update-kernels/{distinct-field}/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Retrieve kernel compatibility info for Sensor Update Builds</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_sensor_update_policies" style="text-decoration: none;"><strong>query_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#query_sensor_update_policy_members" style="text-decoration: none;"><strong>query_sensor_update_policy_members</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/sensor-update-members/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#reveal_uninstall_token" style="text-decoration: none;"><strong>reveal_uninstall_token</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/combined/reveal-uninstall-token/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value 'MAINTENANCE' as the value for 'device_id'</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#set_sensor_update_policies_precedence" style="text-decoration: none;"><strong>set_sensor_update_policies_precedence</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/sensor-update-precedence/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#update_sensor_update_policies" style="text-decoration: none;"><strong>update_sensor_update_policies</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/sensor-update/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Sensor Update Policies by specifying the ID of the policy and details to update</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorUpdatePoliciesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorUpdatePoliciesApi.md#update_sensor_update_policies_v2" style="text-decoration: none;"><strong>update_sensor_update_policies_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/sensor-update/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorVisibilityExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorVisibilityExclusionsApi.md#create_sv_exclusions_v1" style="text-decoration: none;"><strong>create_sv_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /policy/entities/sv-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create the sensor visibility exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorVisibilityExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorVisibilityExclusionsApi.md#delete_sensor_visibility_exclusions_v1" style="text-decoration: none;"><strong>delete_sensor_visibility_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /policy/entities/sv-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete the sensor visibility exclusions by id</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorVisibilityExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorVisibilityExclusionsApi.md#get_sensor_visibility_exclusions_v1" style="text-decoration: none;"><strong>get_sensor_visibility_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/entities/sv-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get a set of Sensor Visibility Exclusions by specifying their IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorVisibilityExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorVisibilityExclusionsApi.md#query_sensor_visibility_exclusions_v1" style="text-decoration: none;"><strong>query_sensor_visibility_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /policy/queries/sv-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for sensor visibility exclusions.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SensorVisibilityExclusionsApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SensorVisibilityExclusionsApi.md#update_sensor_visibility_exclusions_v1" style="text-decoration: none;"><strong>update_sensor_visibility_exclusions_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /policy/entities/sv-exclusions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Update the sensor visibility exclusions</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightEvaluationLogicApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightEvaluationLogicApi.md#combined_query_evaluation_logic" style="text-decoration: none;"><strong>combined_query_evaluation_logic</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/combined/evaluation-logic/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightEvaluationLogicApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightEvaluationLogicApi.md#get_evaluation_logic" style="text-decoration: none;"><strong>get_evaluation_logic</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/entities/evaluation-logic/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on evaluation logic items by providing one or more IDs.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightEvaluationLogicApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightEvaluationLogicApi.md#query_evaluation_logic" style="text-decoration: none;"><strong>query_evaluation_logic</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/queries/evaluation-logic/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightVulnerabilitiesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightVulnerabilitiesApi.md#combined_query_vulnerabilities" style="text-decoration: none;"><strong>combined_query_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/combined/vulnerabilities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightVulnerabilitiesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightVulnerabilitiesApi.md#get_remediations_v2" style="text-decoration: none;"><strong>get_remediations_v2</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/entities/remediations/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on remediation by providing one or more IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightVulnerabilitiesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightVulnerabilitiesApi.md#get_vulnerabilities" style="text-decoration: none;"><strong>get_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/entities/vulnerabilities/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get details on vulnerabilities by providing one or more IDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::SpotlightVulnerabilitiesApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/SpotlightVulnerabilitiesApi.md#query_vulnerabilities" style="text-decoration: none;"><strong>query_vulnerabilities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /spotlight/queries/vulnerabilities/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::TailoredIntelligenceApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/TailoredIntelligenceApi.md#get_events_body" style="text-decoration: none;"><strong>get_events_body</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ti/events/entities/events-full-body/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get event body for the provided event ID</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::TailoredIntelligenceApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/TailoredIntelligenceApi.md#get_events_entities" style="text-decoration: none;"><strong>get_events_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ti/events/entities/events/GET/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get events entities for specified ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::TailoredIntelligenceApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/TailoredIntelligenceApi.md#get_rules_entities" style="text-decoration: none;"><strong>get_rules_entities</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /ti/rules/entities/rules/GET/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rules entities for specified ids.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::TailoredIntelligenceApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/TailoredIntelligenceApi.md#query_events" style="text-decoration: none;"><strong>query_events</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ti/events/queries/events/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get events ids that match the provided filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::TailoredIntelligenceApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/TailoredIntelligenceApi.md#query_rules" style="text-decoration: none;"><strong>query_rules</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /ti/rules/queries/rules/v2</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get rules ids that match the provided filter criteria.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#combined_user_roles_v1" style="text-decoration: none;"><strong>combined_user_roles_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-management/combined/user-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#create_user" style="text-decoration: none;"><strong>create_user</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /users/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#create_user_v1" style="text-decoration: none;"><strong>create_user_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /user-management/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Create a new user. After creating a user, assign one or more roles with POST '/user-management/entities/user-role-actions/v1'</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#delete_user" style="text-decoration: none;"><strong>delete_user</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /users/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#delete_user_v1" style="text-decoration: none;"><strong>delete_user_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /user-management/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Delete a user permanently.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#entities_roles_v1" style="text-decoration: none;"><strong>entities_roles_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-management/entities/roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get info about a role</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#get_available_role_ids" style="text-decoration: none;"><strong>get_available_role_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-roles/queries/user-role-ids-by-cid/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#get_roles" style="text-decoration: none;"><strong>get_roles</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-roles/entities/user-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#get_user_role_ids" style="text-decoration: none;"><strong>get_user_role_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-roles/queries/user-role-ids-by-user-uuid/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to `/customer/entities/roles/v1`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#grant_user_role_ids" style="text-decoration: none;"><strong>grant_user_role_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /user-roles/entities/user-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#queries_roles_v1" style="text-decoration: none;"><strong>queries_roles_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-management/queries/roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to `/user-management/entities/roles/v1`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#query_user_v1" style="text-decoration: none;"><strong>query_user_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /user-management/queries/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/user-management/entities/users/GET/v1`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#retrieve_emails_by_cid" style="text-decoration: none;"><strong>retrieve_emails_by_cid</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /users/queries/emails-by-cid/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#retrieve_user" style="text-decoration: none;"><strong>retrieve_user</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /users/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#retrieve_user_uuid" style="text-decoration: none;"><strong>retrieve_user_uuid</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /users/queries/user-uuids-by-email/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /user-management/queries/users/v1. Get a user's ID by providing a username (usually an email address)</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#retrieve_user_uuids_by_cid" style="text-decoration: none;"><strong>retrieve_user_uuids_by_cid</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /users/queries/user-uuids-by-cid/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to `/users/entities/user/v1`.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#retrieve_users_getv1" style="text-decoration: none;"><strong>retrieve_users_getv1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /user-management/entities/users/GET/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get info about users including their name, UID and CID by providing user UUIDs</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#revoke_user_role_ids" style="text-decoration: none;"><strong>revoke_user_role_ids</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>DELETE</strong> /user-roles/entities/user-roles/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#update_user" style="text-decoration: none;"><strong>update_user</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /users/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user's first or last name</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#update_user_v1" style="text-decoration: none;"><strong>update_user_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>PATCH</strong> /user-management/entities/users/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Modify an existing user's first or last name.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#user_action_v1" style="text-decoration: none;"><strong>user_action_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /user-management/entities/user-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in `ids` param as part of request payload.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::UserManagementApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/UserManagementApi.md#user_roles_action_v1" style="text-decoration: none;"><strong>user_roles_action_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>POST</strong> /user-management/entities/user-role-actions/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ZeroTrustAssessmentApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ZeroTrustAssessmentApi.md#get_assessment_v1" style="text-decoration: none;"><strong>get_assessment_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /zero-trust-assessment/entities/assessments/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ZeroTrustAssessmentApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ZeroTrustAssessmentApi.md#get_assessments_by_score_v1" style="text-decoration: none;"><strong>get_assessments_by_score_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /zero-trust-assessment/queries/assessments/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.</td>
    </tr>
    
    <tr>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Falcon::ZeroTrustAssessmentApi</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><a href="docs/ZeroTrustAssessmentApi.md#get_audit_v1" style="text-decoration: none;"><strong>get_audit_v1</strong></a></td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;"><strong>GET</strong> /zero-trust-assessment/entities/audit/v1</td>
      <td style="border: 1px solid #ddd; padding: 8px; text-align: left;">Get the Zero Trust Assessment audit report for one customer ID (CID).</td>
    </tr>
    
  </tbody>
</table>
