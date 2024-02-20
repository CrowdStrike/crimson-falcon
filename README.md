# Crimson Falcon - The CrowdStrike Falcon SDK for Ruby

[![Gem Version](https://badge.fury.io/rb/crimson-falcon.svg)](https://badge.fury.io/rb/crimson-falcon)

Welcome to Crimson Falcon, the Ruby SDK for the CrowdStrike Falcon Platform. This is where the power of the CrowdStrike Falcon Platform meets the elegance and simplicity of Ruby.

"Why Ruby?" you might ask.

Well, Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write. It's unique balance of simplicity, productivity, and just sheer fun, makes coding feel less like a task and more like a hobby. It's like your favorite pair of comfy shoes - familiar, comfortable, and always reliable. :wink:

That's what we aim to achieve with Crimson Falcon - a tool that brings together the robust capabilities of CrowdStrike Falcon with the friendly charm of Ruby.

Ready to bring some fun to your cybersecurity game with Ruby and Crimson Falcon? Let's jump right in!

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Contribute to Crimson Falcon](#contribute-to-crimson-falcon)
- [Crimson Falcon API Docs](#crimson-falcon-api-docs)

## Installation

### From RubyGems (*This is the way*)

To install from RubyGems, use the following command:

```shell
gem install crimson-falcon
```

Add this to the Gemfile:
<!-- x-release-please-start-version -->
```ruby
    gem 'crimson-falcon', '~> 0.4.1'
```
<!-- x-release-please-end -->
### From Source to Gem: Building the Ruby Code

To build the Ruby code into a gem:

```shell
gem build crimson-falcon.gemspec
```

Then install the gem locally:
<!-- x-release-please-start-version -->
```shell
gem install ./crimson-falcon-0.4.1.gem
```
<!-- x-release-please-end -->
Finally, add this to the Gemfile:
<!-- x-release-please-start-version -->
```ruby
    gem 'crimson-falcon', '~> 0.4.1'
```
<!-- x-release-please-end -->
### Install from Git

If the Ruby gem is hosted at a git repository: <https://github.com/GIT_USER_ID/GIT_REPO_ID>, then add the following in the Gemfile:

```ruby
    # Example
    gem 'crimson-falcon', :git => 'https://github.com/CrowdStrike/crimson-falcon.git'
```

## Getting Started

### Samples

We have a collection of sample code that demonstrates how to use the Crimson Falcon SDK.
These samples are a great way to get started with the SDK. You can find the samples in the [samples](./samples) directory.

### Take Flight

Eager to take flight? Follow the [installation](#installation) process, and then launch into the following code:

```ruby
# Load the gem
require 'crimson-falcon'

# Setup authorization
Falcon.configure do |config|
  config.client_id = ENV["FALCON_CLIENT_ID"]
  config.client_secret = ENV["FALCON_CLIENT_SECRET"]
  config.cloud = "us-2" # or "us-2", "eu-1", "us-gov1"
end

# Create a new API instance
api_instance = Falcon::SensorDownloadApi.new

begin
  # Get CCID to use with sensor installers
  result = api_instance.get_sensor_installers_ccidby_query
  p result.resources
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownloadApi->get_sensor_installers_ccidby_query: #{e}"
end
```

Welcome aboard the Crimson Falcon! Fly high, code with grace.

## Contribute to Crimson Falcon

We are always excited to have contributions from the community! It's what makes open source truly powerful. If you are looking to help out, that's awesome and we thank you in advance.

To get started, please read our [Contributing Guide](./CONTRIBUTING.md) that explains the development process, the project structure, how to propose bugfixes and improvements, and how to build and test your changes to the project. It's a set of directions that will help establish a baseline of expectation for any contributions.

Please make sure you also follow our [Code of Conduct](./CODE_OF_CONDUCT.md). It outlines our expectations for participant behavior as well as the steps for reporting unacceptable behavior.

We appreciate your interest in our project and look forward to collaborating with you!

## Crimson Falcon API Docs

> :recycle: ***API Docs are automatically generated from the CrowdStrike API specification.*** :recycle:

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**get_queries_alerts_v1**](docs/AlertsApi.md#get_queries_alerts_v1)
- **GET**: /alerts/queries/alerts/v1
- **Description**: retrieves all Alerts ids that match a given query

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**get_queries_alerts_v2**](docs/AlertsApi.md#get_queries_alerts_v2)
- **GET**: /alerts/queries/alerts/v2
- **Description**: retrieves all Alerts ids that match a given query

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**patch_entities_alerts_v2**](docs/AlertsApi.md#patch_entities_alerts_v2)
- **PATCH**: /alerts/entities/alerts/v2
- **Description**: Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**patch_entities_alerts_v3**](docs/AlertsApi.md#patch_entities_alerts_v3)
- **PATCH**: /alerts/entities/alerts/v3
- **Description**: Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**post_aggregates_alerts_v1**](docs/AlertsApi.md#post_aggregates_alerts_v1)
- **POST**: /alerts/aggregates/alerts/v1
- **Description**: retrieves aggregate values for Alerts across all CIDs

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**post_aggregates_alerts_v2**](docs/AlertsApi.md#post_aggregates_alerts_v2)
- **POST**: /alerts/aggregates/alerts/v2
- **Description**: retrieves aggregate values for Alerts across all CIDs

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**post_entities_alerts_v1**](docs/AlertsApi.md#post_entities_alerts_v1)
- **POST**: /alerts/entities/alerts/v1
- **Description**: retrieves all Alerts given their ids

---

**Class**: `Falcon::AlertsApi`

- **Operation**: [**post_entities_alerts_v2**](docs/AlertsApi.md#post_entities_alerts_v2)
- **POST**: /alerts/entities/alerts/v2
- **Description**: retrieves all Alerts given their composite ids

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**create_or_update_aws_settings**](docs/CloudConnectAwsApi.md#create_or_update_aws_settings)
- **POST**: /cloud-connect-aws/entities/settings/v1
- **Description**: Create or update Global Settings which are applicable to all provisioned AWS accounts

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**delete_aws_accounts**](docs/CloudConnectAwsApi.md#delete_aws_accounts)
- **DELETE**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Delete a set of AWS Accounts by specifying their IDs

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**get_aws_accounts**](docs/CloudConnectAwsApi.md#get_aws_accounts)
- **GET**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Retrieve a set of AWS Accounts by specifying their IDs

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**get_aws_settings**](docs/CloudConnectAwsApi.md#get_aws_settings)
- **GET**: /cloud-connect-aws/combined/settings/v1
- **Description**: Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**provision_aws_accounts**](docs/CloudConnectAwsApi.md#provision_aws_accounts)
- **POST**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Provision AWS Accounts by specifying details about the accounts to provision

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**query_aws_accounts**](docs/CloudConnectAwsApi.md#query_aws_accounts)
- **GET**: /cloud-connect-aws/combined/accounts/v1
- **Description**: Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**query_aws_accounts_for_ids**](docs/CloudConnectAwsApi.md#query_aws_accounts_for_ids)
- **GET**: /cloud-connect-aws/queries/accounts/v1
- **Description**: Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**update_aws_accounts**](docs/CloudConnectAwsApi.md#update_aws_accounts)
- **PATCH**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Update AWS Accounts by specifying the ID of the account and details to update

---

**Class**: `Falcon::CloudConnectAwsApi`

- **Operation**: [**verify_aws_account_access**](docs/CloudConnectAwsApi.md#verify_aws_account_access)
- **POST**: /cloud-connect-aws/entities/verify-account-access/v1
- **Description**: Performs an Access Verification check on the specified AWS Account IDs

---

**Class**: `Falcon::CloudSnapshotsApi`

- **Operation**: [**register_cspm_snapshot_account**](docs/CloudSnapshotsApi.md#register_cspm_snapshot_account)
- **POST**: /snapshots/entities/accounts/v1
- **Description**: Register customer cloud account for snapshot scanning

---

**Class**: `Falcon::ConfigurationAssessmentApi`

- **Operation**: [**get_combined_assessments_query**](docs/ConfigurationAssessmentApi.md#get_combined_assessments_query)
- **GET**: /configuration-assessment/combined/assessments/v1
- **Description**: Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria

---

**Class**: `Falcon::ConfigurationAssessmentApi`

- **Operation**: [**get_rule_details**](docs/ConfigurationAssessmentApi.md#get_rule_details)
- **GET**: /configuration-assessment/entities/rule-details/v1
- **Description**: Get rules details for provided one or more rule IDs

---

**Class**: `Falcon::ConfigurationAssessmentEvaluationLogicApi`

- **Operation**: [**get_evaluation_logic_mixin0**](docs/ConfigurationAssessmentEvaluationLogicApi.md#get_evaluation_logic_mixin0)
- **GET**: /configuration-assessment/entities/evaluation-logic/v1
- **Description**: Get details on evaluation logic items by providing one or more finding IDs.

---

**Class**: `Falcon::ContainerAlertsApi`

- **Operation**: [**read_container_alerts_count**](docs/ContainerAlertsApi.md#read_container_alerts_count)
- **GET**: /container-security/aggregates/container-alerts/count/v1
- **Description**: Search Container Alerts by the provided search criteria

---

**Class**: `Falcon::ContainerAlertsApi`

- **Operation**: [**read_container_alerts_count_by_severity**](docs/ContainerAlertsApi.md#read_container_alerts_count_by_severity)
- **GET**: /container-security/aggregates/container-alerts/count-by-severity/v1
- **Description**: Get Container Alerts counts by severity

---

**Class**: `Falcon::ContainerAlertsApi`

- **Operation**: [**search_and_read_container_alerts**](docs/ContainerAlertsApi.md#search_and_read_container_alerts)
- **GET**: /container-security/combined/container-alerts/v1
- **Description**: Search Container Alerts by the provided search criteria

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**read_combined_detections**](docs/ContainerDetectionsApi.md#read_combined_detections)
- **GET**: /container-security/combined/detections/v1
- **Description**: Retrieve image assessment detections identified by the provided filter criteria

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**read_detections**](docs/ContainerDetectionsApi.md#read_detections)
- **GET**: /container-security/entities/detections/v1
- **Description**: Retrieve image assessment detection entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**read_detections_count**](docs/ContainerDetectionsApi.md#read_detections_count)
- **GET**: /container-security/aggregates/detections/count/v1
- **Description**: Aggregate count of detections

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**read_detections_count_by_severity**](docs/ContainerDetectionsApi.md#read_detections_count_by_severity)
- **GET**: /container-security/aggregates/detections/count-by-severity/v1
- **Description**: Aggregate counts of detections by severity

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**read_detections_count_by_type**](docs/ContainerDetectionsApi.md#read_detections_count_by_type)
- **GET**: /container-security/aggregates/detections/count-by-type/v1
- **Description**: Aggregate counts of detections by detection type

---

**Class**: `Falcon::ContainerDetectionsApi`

- **Operation**: [**search_detections**](docs/ContainerDetectionsApi.md#search_detections)
- **GET**: /container-security/queries/detections/v1
- **Description**: Retrieve image assessment detection entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**aggregate_image_assessment_history**](docs/ContainerImagesApi.md#aggregate_image_assessment_history)
- **GET**: /container-security/aggregates/images/assessment-history/v1
- **Description**: Image assessment history

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**aggregate_image_count**](docs/ContainerImagesApi.md#aggregate_image_count)
- **GET**: /container-security/aggregates/images/count/v1
- **Description**: Aggregate count of images

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**aggregate_image_count_by_base_os**](docs/ContainerImagesApi.md#aggregate_image_count_by_base_os)
- **GET**: /container-security/aggregates/images/count-by-os-distribution/v1
- **Description**: Aggregate count of images grouped by Base OS distribution

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**aggregate_image_count_by_state**](docs/ContainerImagesApi.md#aggregate_image_count_by_state)
- **GET**: /container-security/aggregates/images/count-by-state/v1
- **Description**: Aggregate count of images grouped by state

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**combined_image_by_vulnerability_count**](docs/ContainerImagesApi.md#combined_image_by_vulnerability_count)
- **GET**: /container-security/combined/images/by-vulnerability-count/v1
- **Description**: Retrieve top x images with the most vulnerabilities

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**combined_image_detail**](docs/ContainerImagesApi.md#combined_image_detail)
- **GET**: /container-security/combined/images/detail/v1
- **Description**: Retrieve image entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**combined_image_issues_summary**](docs/ContainerImagesApi.md#combined_image_issues_summary)
- **GET**: /container-security/combined/images/issues-summary/v1
- **Description**: Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**combined_image_vulnerability_summary**](docs/ContainerImagesApi.md#combined_image_vulnerability_summary)
- **GET**: /container-security/combined/images/vulnerabilities-summary/v1
- **Description**: aggregates information about vulnerabilities for an image

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**get_combined_images**](docs/ContainerImagesApi.md#get_combined_images)
- **GET**: /container-security/combined/image-assessment/images/v1
- **Description**: Get image assessment results by providing an FQL filter and paging details

---

**Class**: `Falcon::ContainerImagesApi`

- **Operation**: [**read_combined_images_export**](docs/ContainerImagesApi.md#read_combined_images_export)
- **GET**: /container-security/combined/images/export/v1
- **Description**: Retrieve images with an option to expand aggregated vulnerabilities/detections

---

**Class**: `Falcon::ContainerPackagesApi`

- **Operation**: [**read_packages_by_fixable_vuln_count**](docs/ContainerPackagesApi.md#read_packages_by_fixable_vuln_count)
- **GET**: /container-security/combined/packages/app-by-fixable-vulnerability-count/v1
- **Description**: Retrieve top x app packages with the most fixable vulnerabilities

---

**Class**: `Falcon::ContainerPackagesApi`

- **Operation**: [**read_packages_by_vuln_count**](docs/ContainerPackagesApi.md#read_packages_by_vuln_count)
- **GET**: /container-security/combined/packages/by-vulnerability-count/v1
- **Description**: Retrieve top x packages with the most vulnerabilities

---

**Class**: `Falcon::ContainerPackagesApi`

- **Operation**: [**read_packages_combined**](docs/ContainerPackagesApi.md#read_packages_combined)
- **GET**: /container-security/combined/packages/v1
- **Description**: Retrieve packages identified by the provided filter criteria

---

**Class**: `Falcon::ContainerPackagesApi`

- **Operation**: [**read_packages_combined_export**](docs/ContainerPackagesApi.md#read_packages_combined_export)
- **GET**: /container-security/combined/packages/export/v1
- **Description**: Retrieve packages identified by the provided filter criteria for the purpose of export

---

**Class**: `Falcon::ContainerPackagesApi`

- **Operation**: [**read_packages_count_by_zero_day**](docs/ContainerPackagesApi.md#read_packages_count_by_zero_day)
- **GET**: /container-security/aggregates/packages/count-by-zero-day/v1
- **Description**: Retrieve packages count affected by zero day vulnerabilities

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_combined_vulnerabilities**](docs/ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities)
- **GET**: /container-security/combined/vulnerabilities/v1
- **Description**: Retrieve vulnerability and aggregate data filtered by the provided FQL

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_combined_vulnerabilities_details**](docs/ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities_details)
- **GET**: /container-security/combined/vulnerabilities/details/v1
- **Description**: Retrieve vulnerability details related to an image

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_combined_vulnerabilities_info**](docs/ContainerVulnerabilitiesApi.md#read_combined_vulnerabilities_info)
- **GET**: /container-security/combined/vulnerabilities/info/v1
- **Description**: Retrieve vulnerability and package related info for this customer

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerabilities_by_image_count**](docs/ContainerVulnerabilitiesApi.md#read_vulnerabilities_by_image_count)
- **GET**: /container-security/combined/vulnerabilities/by-image-count/v1
- **Description**: Retrieve top x vulnerabilities with the most impacted images

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerabilities_publication_date**](docs/ContainerVulnerabilitiesApi.md#read_vulnerabilities_publication_date)
- **GET**: /container-security/combined/vulnerabilities/by-published-date/v1
- **Description**: Retrieve top x vulnerabilities with the most recent publication date

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerability_count**](docs/ContainerVulnerabilitiesApi.md#read_vulnerability_count)
- **GET**: /container-security/aggregates/vulnerabilities/count/v1
- **Description**: Aggregate count of vulnerabilities

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerability_count_by_actively_exploited**](docs/ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_actively_exploited)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-actively-exploited/v1
- **Description**: Aggregate count of vulnerabilities grouped by actively exploited

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerability_count_by_cps_rating**](docs/ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_cps_rating)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-cps-rating/v1
- **Description**: Aggregate count of vulnerabilities grouped by csp_rating

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerability_count_by_cvss_score**](docs/ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_cvss_score)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-cvss-score/v1
- **Description**: Aggregate count of vulnerabilities grouped by cvss score

---

**Class**: `Falcon::ContainerVulnerabilitiesApi`

- **Operation**: [**read_vulnerability_count_by_severity**](docs/ContainerVulnerabilitiesApi.md#read_vulnerability_count_by_severity)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-severity/v1
- **Description**: Aggregate count of vulnerabilities grouped by severity

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**azure_download_certificate**](docs/CspmRegistrationApi.md#azure_download_certificate)
- **GET**: /cloud-connect-cspm-azure/entities/download-certificate/v1
- **Description**: Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**connect_cspmgcp_account**](docs/CspmRegistrationApi.md#connect_cspmgcp_account)
- **POST**: /cloud-connect-cspm-gcp/entities/account/v2
- **Description**: Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**create_cspm_aws_account**](docs/CspmRegistrationApi.md#create_cspm_aws_account)
- **POST**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**create_cspm_azure_account**](docs/CspmRegistrationApi.md#create_cspm_azure_account)
- **POST**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**create_cspm_azure_management_group**](docs/CspmRegistrationApi.md#create_cspm_azure_management_group)
- **POST**: /cloud-connect-cspm-azure/entities/management-group/v1
- **Description**: Creates a new management group in our system for a customer.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**create_cspmgcp_account**](docs/CspmRegistrationApi.md#create_cspmgcp_account)
- **POST**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**delete_cspm_aws_account**](docs/CspmRegistrationApi.md#delete_cspm_aws_account)
- **DELETE**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Deletes an existing AWS account or organization in our system.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**delete_cspm_azure_account**](docs/CspmRegistrationApi.md#delete_cspm_azure_account)
- **DELETE**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Deletes an Azure subscription from the system.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**delete_cspmgcp_account**](docs/CspmRegistrationApi.md#delete_cspmgcp_account)
- **DELETE**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Deletes a GCP account from the system.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_behavior_detections**](docs/CspmRegistrationApi.md#get_behavior_detections)
- **GET**: /detects/entities/ioa/v1
- **Description**: Get list of detected behaviors

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_configuration_detection_entities**](docs/CspmRegistrationApi.md#get_configuration_detection_entities)
- **GET**: /detects/entities/iom/v2
- **Description**: Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_configuration_detection_ids_v2**](docs/CspmRegistrationApi.md#get_configuration_detection_ids_v2)
- **GET**: /detects/queries/iom/v2
- **Description**: Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_configuration_detections**](docs/CspmRegistrationApi.md#get_configuration_detections)
- **GET**: /detects/entities/iom/v1
- **Description**: Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_aws_account**](docs/CspmRegistrationApi.md#get_cspm_aws_account)
- **GET**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Returns information about the current status of an AWS account.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_aws_account_scripts_attachment**](docs/CspmRegistrationApi.md#get_cspm_aws_account_scripts_attachment)
- **GET**: /cloud-connect-cspm-aws/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_aws_console_setup_urls**](docs/CspmRegistrationApi.md#get_cspm_aws_console_setup_urls)
- **GET**: /cloud-connect-cspm-aws/entities/console-setup-urls/v1
- **Description**: Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_azure_account**](docs/CspmRegistrationApi.md#get_cspm_azure_account)
- **GET**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Return information about Azure account registration

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_azure_management_group**](docs/CspmRegistrationApi.md#get_cspm_azure_management_group)
- **GET**: /cloud-connect-cspm-azure/entities/management-group/v1
- **Description**: Return information about Azure management group registration

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_azure_user_scripts_attachment**](docs/CspmRegistrationApi.md#get_cspm_azure_user_scripts_attachment)
- **GET**: /cloud-connect-cspm-azure/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_policies_details**](docs/CspmRegistrationApi.md#get_cspm_policies_details)
- **GET**: /settings/entities/policy-details/v2
- **Description**: Given an array of policy IDs, returns detailed policies information.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_policy**](docs/CspmRegistrationApi.md#get_cspm_policy)
- **GET**: /settings/entities/policy-details/v1
- **Description**: Given a policy ID, returns detailed policy information.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_policy_settings**](docs/CspmRegistrationApi.md#get_cspm_policy_settings)
- **GET**: /settings/entities/policy/v1
- **Description**: Returns information about current policy settings.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspm_scan_schedule**](docs/CspmRegistrationApi.md#get_cspm_scan_schedule)
- **GET**: /settings/scan-schedule/v1
- **Description**: Returns scan schedule configuration for one or more cloud platforms.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspmcgp_account**](docs/CspmRegistrationApi.md#get_cspmcgp_account)
- **GET**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Returns information about the current status of an GCP account.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspmgcp_service_accounts_ext**](docs/CspmRegistrationApi.md#get_cspmgcp_service_accounts_ext)
- **GET**: /cloud-connect-cspm-gcp/entities/service-accounts/v1
- **Description**: Returns the service account id and client email for external clients.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**get_cspmgcp_user_scripts_attachment**](docs/CspmRegistrationApi.md#get_cspmgcp_user_scripts_attachment)
- **GET**: /cloud-connect-cspm-gcp/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**patch_cspm_aws_account**](docs/CspmRegistrationApi.md#patch_cspm_aws_account)
- **PATCH**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspm_azure_account**](docs/CspmRegistrationApi.md#update_cspm_azure_account)
- **PATCH**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspm_azure_account_client_id**](docs/CspmRegistrationApi.md#update_cspm_azure_account_client_id)
- **PATCH**: /cloud-connect-cspm-azure/entities/client-id/v1
- **Description**: Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspm_azure_tenant_default_subscription_id**](docs/CspmRegistrationApi.md#update_cspm_azure_tenant_default_subscription_id)
- **PATCH**: /cloud-connect-cspm-azure/entities/default-subscription-id/v1
- **Description**: Update an Azure default subscription_id in our system for given tenant_id

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspm_policy_settings**](docs/CspmRegistrationApi.md#update_cspm_policy_settings)
- **PATCH**: /settings/entities/policy/v1
- **Description**: Updates a policy setting - can be used to override policy severity or to disable a policy entirely.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspm_scan_schedule**](docs/CspmRegistrationApi.md#update_cspm_scan_schedule)
- **POST**: /settings/scan-schedule/v1
- **Description**: Updates scan schedule configuration for one or more cloud platforms.

---

**Class**: `Falcon::CspmRegistrationApi`

- **Operation**: [**update_cspmgcp_account**](docs/CspmRegistrationApi.md#update_cspmgcp_account)
- **PATCH**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**create_rule**](docs/CustomIoaApi.md#create_rule)
- **POST**: /ioarules/entities/rules/v1
- **Description**: Create a rule within a rule group. Returns the rule.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**create_rule_group_mixin0**](docs/CustomIoaApi.md#create_rule_group_mixin0)
- **POST**: /ioarules/entities/rule-groups/v1
- **Description**: Create a rule group for a platform with a name and an optional description. Returns the rule group.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**delete_rule_groups_mixin0**](docs/CustomIoaApi.md#delete_rule_groups_mixin0)
- **DELETE**: /ioarules/entities/rule-groups/v1
- **Description**: Delete rule groups by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**delete_rules**](docs/CustomIoaApi.md#delete_rules)
- **DELETE**: /ioarules/entities/rules/v1
- **Description**: Delete rules from a rule group by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_patterns**](docs/CustomIoaApi.md#get_patterns)
- **GET**: /ioarules/entities/pattern-severities/v1
- **Description**: Get pattern severities by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_platforms_mixin0**](docs/CustomIoaApi.md#get_platforms_mixin0)
- **GET**: /ioarules/entities/platforms/v1
- **Description**: Get platforms by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_rule_groups_mixin0**](docs/CustomIoaApi.md#get_rule_groups_mixin0)
- **GET**: /ioarules/entities/rule-groups/v1
- **Description**: Get rule groups by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_rule_types**](docs/CustomIoaApi.md#get_rule_types)
- **GET**: /ioarules/entities/rule-types/v1
- **Description**: Get rule types by ID.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_rules_get**](docs/CustomIoaApi.md#get_rules_get)
- **POST**: /ioarules/entities/rules/GET/v1
- **Description**: Get rules by ID and optionally with cid and/or version in the following format: &#x60;[cid:]ID[:version]&#x60;.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**get_rules_mixin0**](docs/CustomIoaApi.md#get_rules_mixin0)
- **GET**: /ioarules/entities/rules/v1
- **Description**: Get rules by ID and optionally with cid and/or version in the following format: &#x60;[cid:]ID[:version]&#x60;. The max number of IDs is constrained by URL size.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_patterns**](docs/CustomIoaApi.md#query_patterns)
- **GET**: /ioarules/queries/pattern-severities/v1
- **Description**: Get all pattern severity IDs.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_platforms_mixin0**](docs/CustomIoaApi.md#query_platforms_mixin0)
- **GET**: /ioarules/queries/platforms/v1
- **Description**: Get all platform IDs.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_rule_groups_full**](docs/CustomIoaApi.md#query_rule_groups_full)
- **GET**: /ioarules/queries/rule-groups-full/v1
- **Description**: Find all rule groups matching the query with optional filter.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_rule_groups_mixin0**](docs/CustomIoaApi.md#query_rule_groups_mixin0)
- **GET**: /ioarules/queries/rule-groups/v1
- **Description**: Finds all rule group IDs matching the query with optional filter.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_rule_types**](docs/CustomIoaApi.md#query_rule_types)
- **GET**: /ioarules/queries/rule-types/v1
- **Description**: Get all rule type IDs.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**query_rules_mixin0**](docs/CustomIoaApi.md#query_rules_mixin0)
- **GET**: /ioarules/queries/rules/v1
- **Description**: Finds all rule IDs matching the query with optional filter.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**update_rule_group_mixin0**](docs/CustomIoaApi.md#update_rule_group_mixin0)
- **PATCH**: /ioarules/entities/rule-groups/v1
- **Description**: Update a rule group. The following properties can be modified: name, description, enabled.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**update_rules**](docs/CustomIoaApi.md#update_rules)
- **PATCH**: /ioarules/entities/rules/v1
- **Description**: Update rules within a rule group. Return the updated rules.

---

**Class**: `Falcon::CustomIoaApi`

- **Operation**: [**validate**](docs/CustomIoaApi.md#validate)
- **POST**: /ioarules/entities/rules/validate/v1
- **Description**: Validates field values and checks for matches if a test string is provided.

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**delete_object**](docs/CustomStorageApi.md#delete_object)
- **DELETE**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Delete the specified object

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**get_object**](docs/CustomStorageApi.md#get_object)
- **GET**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Get the bytes for the specified object

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**get_object_metadata**](docs/CustomStorageApi.md#get_object_metadata)
- **GET**: /customobjects/v1/collections/{collection_name}/objects/{object_key}/metadata
- **Description**: Get the metadata for the specified object

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**list_objects**](docs/CustomStorageApi.md#list_objects)
- **GET**: /customobjects/v1/collections/{collection_name}/objects
- **Description**: List the object keys in the specified collection in alphabetical order

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**put_object**](docs/CustomStorageApi.md#put_object)
- **PUT**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Put the specified new object at the given key or overwrite an existing object at the given key

---

**Class**: `Falcon::CustomStorageApi`

- **Operation**: [**search_objects**](docs/CustomStorageApi.md#search_objects)
- **POST**: /customobjects/v1/collections/{collection_name}/objects
- **Description**: Search for objects that match the specified filter criteria (returns metadata, not actual objects)

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**connect_d4_cgcp_account**](docs/D4cRegistrationApi.md#connect_d4_cgcp_account)
- **POST**: /cloud-connect-gcp/entities/account/v2
- **Description**: Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**create_d4_c_aws_account**](docs/D4cRegistrationApi.md#create_d4_c_aws_account)
- **POST**: /cloud-connect-aws/entities/account/v2
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**create_d4_cgcp_account**](docs/D4cRegistrationApi.md#create_d4_cgcp_account)
- **POST**: /cloud-connect-gcp/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**create_discover_cloud_azure_account**](docs/D4cRegistrationApi.md#create_discover_cloud_azure_account)
- **POST**: /cloud-connect-azure/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**delete_d4_c_aws_account**](docs/D4cRegistrationApi.md#delete_d4_c_aws_account)
- **DELETE**: /cloud-connect-aws/entities/account/v2
- **Description**: Deletes an existing AWS account or organization in our system.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**delete_d4_cgcp_account**](docs/D4cRegistrationApi.md#delete_d4_cgcp_account)
- **DELETE**: /cloud-connect-gcp/entities/account/v1
- **Description**: Deletes a GCP account from the system.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**discover_cloud_azure_download_certificate**](docs/D4cRegistrationApi.md#discover_cloud_azure_download_certificate)
- **GET**: /cloud-connect-azure/entities/download-certificate/v1
- **Description**: Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_c_aws_account**](docs/D4cRegistrationApi.md#get_d4_c_aws_account)
- **GET**: /cloud-connect-aws/entities/account/v2
- **Description**: Returns information about the current status of an AWS account.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_c_aws_console_setup_urls**](docs/D4cRegistrationApi.md#get_d4_c_aws_console_setup_urls)
- **GET**: /cloud-connect-aws/entities/console-setup-urls/v1
- **Description**: Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_caws_account_scripts_attachment**](docs/D4cRegistrationApi.md#get_d4_caws_account_scripts_attachment)
- **GET**: /cloud-connect-aws/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_ccgp_account**](docs/D4cRegistrationApi.md#get_d4_ccgp_account)
- **GET**: /cloud-connect-gcp/entities/account/v1
- **Description**: Returns information about the current status of an GCP account.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_cgcp_service_accounts_ext**](docs/D4cRegistrationApi.md#get_d4_cgcp_service_accounts_ext)
- **GET**: /cloud-connect-gcp/entities/service-accounts/v1
- **Description**: Returns the service account id and client email for external clients.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_cgcp_user_scripts**](docs/D4cRegistrationApi.md#get_d4_cgcp_user_scripts)
- **GET**: /cloud-connect-gcp/entities/user-scripts/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_d4_cgcp_user_scripts_attachment**](docs/D4cRegistrationApi.md#get_d4_cgcp_user_scripts_attachment)
- **GET**: /cloud-connect-gcp/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_discover_cloud_azure_account**](docs/D4cRegistrationApi.md#get_discover_cloud_azure_account)
- **GET**: /cloud-connect-azure/entities/account/v1
- **Description**: Return information about Azure account registration

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_discover_cloud_azure_tenant_ids**](docs/D4cRegistrationApi.md#get_discover_cloud_azure_tenant_ids)
- **GET**: /cloud-connect-azure/entities/tenant-id/v1
- **Description**: Return available tenant ids for discover for cloud

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_discover_cloud_azure_user_scripts**](docs/D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts)
- **GET**: /cloud-connect-azure/entities/user-scripts/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_discover_cloud_azure_user_scripts_attachment**](docs/D4cRegistrationApi.md#get_discover_cloud_azure_user_scripts_attachment)
- **GET**: /cloud-connect-azure/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**get_horizon_d4_c_scripts**](docs/D4cRegistrationApi.md#get_horizon_d4_c_scripts)
- **GET**: /settings-discover/entities/gen/scripts/v1
- **Description**: Returns static install scripts for Horizon.

---

**Class**: `Falcon::D4cRegistrationApi`

- **Operation**: [**update_discover_cloud_azure_account_client_id**](docs/D4cRegistrationApi.md#update_discover_cloud_azure_account_client_id)
- **PATCH**: /cloud-connect-azure/entities/client-id/v1
- **Description**: Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided

---

**Class**: `Falcon::DetectsApi`

- **Operation**: [**get_aggregate_detects**](docs/DetectsApi.md#get_aggregate_detects)
- **POST**: /detects/aggregates/detects/GET/v1
- **Description**: Get detect aggregates as specified via json in request body.

---

**Class**: `Falcon::DetectsApi`

- **Operation**: [**get_detect_summaries**](docs/DetectsApi.md#get_detect_summaries)
- **POST**: /detects/entities/summaries/GET/v1
- **Description**: View information about detections

---

**Class**: `Falcon::DetectsApi`

- **Operation**: [**query_detects**](docs/DetectsApi.md#query_detects)
- **GET**: /detects/queries/detects/v1
- **Description**: Search for detection IDs that match a given query

---

**Class**: `Falcon::DetectsApi`

- **Operation**: [**update_detects_by_ids_v2**](docs/DetectsApi.md#update_detects_by_ids_v2)
- **PATCH**: /detects/entities/detects/v2
- **Description**: Modify the state, assignee, and visibility of detections

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**create_device_control_policies**](docs/DeviceControlPoliciesApi.md#create_device_control_policies)
- **POST**: /policy/entities/device-control/v1
- **Description**: Create Device Control Policies by specifying details about the policy to create

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**delete_device_control_policies**](docs/DeviceControlPoliciesApi.md#delete_device_control_policies)
- **DELETE**: /policy/entities/device-control/v1
- **Description**: Delete a set of Device Control Policies by specifying their IDs

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**get_default_device_control_policies**](docs/DeviceControlPoliciesApi.md#get_default_device_control_policies)
- **GET**: /policy/entities/default-device-control/v1
- **Description**: Retrieve the configuration for a Default Device Control Policy

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**get_device_control_policies**](docs/DeviceControlPoliciesApi.md#get_device_control_policies)
- **GET**: /policy/entities/device-control/v1
- **Description**: Retrieve a set of Device Control Policies by specifying their IDs

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**perform_device_control_policies_action**](docs/DeviceControlPoliciesApi.md#perform_device_control_policies_action)
- **POST**: /policy/entities/device-control-actions/v1
- **Description**: Perform the specified action on the Device Control Policies specified in the request

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**query_combined_device_control_policies**](docs/DeviceControlPoliciesApi.md#query_combined_device_control_policies)
- **GET**: /policy/combined/device-control/v1
- **Description**: Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**query_combined_device_control_policy_members**](docs/DeviceControlPoliciesApi.md#query_combined_device_control_policy_members)
- **GET**: /policy/combined/device-control-members/v1
- **Description**: Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**query_device_control_policies**](docs/DeviceControlPoliciesApi.md#query_device_control_policies)
- **GET**: /policy/queries/device-control/v1
- **Description**: Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**query_device_control_policy_members**](docs/DeviceControlPoliciesApi.md#query_device_control_policy_members)
- **GET**: /policy/queries/device-control-members/v1
- **Description**: Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**set_device_control_policies_precedence**](docs/DeviceControlPoliciesApi.md#set_device_control_policies_precedence)
- **POST**: /policy/entities/device-control-precedence/v1
- **Description**: Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**update_default_device_control_policies**](docs/DeviceControlPoliciesApi.md#update_default_device_control_policies)
- **PATCH**: /policy/entities/default-device-control/v1
- **Description**: Update the configuration for a Default Device Control Policy

---

**Class**: `Falcon::DeviceControlPoliciesApi`

- **Operation**: [**update_device_control_policies**](docs/DeviceControlPoliciesApi.md#update_device_control_policies)
- **PATCH**: /policy/entities/device-control/v1
- **Description**: Update Device Control Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**get_accounts**](docs/DiscoverApi.md#get_accounts)
- **GET**: /discover/entities/accounts/v1
- **Description**: Get details on accounts by providing one or more IDs.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**get_applications**](docs/DiscoverApi.md#get_applications)
- **GET**: /discover/entities/applications/v1
- **Description**: Get details on applications by providing one or more IDs.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**get_hosts**](docs/DiscoverApi.md#get_hosts)
- **GET**: /discover/entities/hosts/v1
- **Description**: Get details on assets by providing one or more IDs.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**get_logins**](docs/DiscoverApi.md#get_logins)
- **GET**: /discover/entities/logins/v1
- **Description**: Get details on logins by providing one or more IDs.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**query_accounts**](docs/DiscoverApi.md#query_accounts)
- **GET**: /discover/queries/accounts/v1
- **Description**: Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**query_applications**](docs/DiscoverApi.md#query_applications)
- **GET**: /discover/queries/applications/v1
- **Description**: Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**query_hosts**](docs/DiscoverApi.md#query_hosts)
- **GET**: /discover/queries/hosts/v1
- **Description**: Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverApi`

- **Operation**: [**query_logins**](docs/DiscoverApi.md#query_logins)
- **GET**: /discover/queries/logins/v1
- **Description**: Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverIotApi`

- **Operation**: [**get_iot_hosts**](docs/DiscoverIotApi.md#get_iot_hosts)
- **GET**: /discover/entities/iot-hosts/v1
- **Description**: Get details on IoT assets by providing one or more IDs.

---

**Class**: `Falcon::DiscoverIotApi`

- **Operation**: [**query_iot_hosts**](docs/DiscoverIotApi.md#query_iot_hosts)
- **GET**: /discover/queries/iot-hosts/v1
- **Description**: Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

---

**Class**: `Falcon::DriftIndicatorsApi`

- **Operation**: [**get_drift_indicators_values_by_date**](docs/DriftIndicatorsApi.md#get_drift_indicators_values_by_date)
- **GET**: /container-security/aggregates/drift-indicators/count-by-date/v1
- **Description**: Returns the count of Drift Indicators by the date. by default it&#39;s for 7 days.

---

**Class**: `Falcon::DriftIndicatorsApi`

- **Operation**: [**read_drift_indicator_entities**](docs/DriftIndicatorsApi.md#read_drift_indicator_entities)
- **GET**: /container-security/entities/drift-indicators/v1
- **Description**: Retrieve Drift Indicator entities identified by the provided IDs

---

**Class**: `Falcon::DriftIndicatorsApi`

- **Operation**: [**read_drift_indicators_count**](docs/DriftIndicatorsApi.md#read_drift_indicators_count)
- **GET**: /container-security/aggregates/drift-indicators/count/v1
- **Description**: Returns the total count of Drift indicators over a time period

---

**Class**: `Falcon::DriftIndicatorsApi`

- **Operation**: [**search_and_read_drift_indicator_entities**](docs/DriftIndicatorsApi.md#search_and_read_drift_indicator_entities)
- **GET**: /container-security/combined/drift-indicators/v1
- **Description**: Retrieve Drift Indicators by the provided search criteria

---

**Class**: `Falcon::DriftIndicatorsApi`

- **Operation**: [**search_drift_indicators**](docs/DriftIndicatorsApi.md#search_drift_indicators)
- **GET**: /container-security/queries/drift-indicators/v1
- **Description**: Retrieve all drift indicators that match the given query

---

**Class**: `Falcon::EventSchemaApi`

- **Operation**: [**fdrschema_combined_event_get**](docs/EventSchemaApi.md#fdrschema_combined_event_get)
- **GET**: /fdr/combined/schema-members/v1
- **Description**: Fetch combined schema

---

**Class**: `Falcon::EventSchemaApi`

- **Operation**: [**fdrschema_entities_event_get**](docs/EventSchemaApi.md#fdrschema_entities_event_get)
- **GET**: /fdr/entities/schema-events/v1
- **Description**: Fetch event schema by ID

---

**Class**: `Falcon::EventSchemaApi`

- **Operation**: [**fdrschema_queries_event_get**](docs/EventSchemaApi.md#fdrschema_queries_event_get)
- **GET**: /fdr/queries/schema-events/v1
- **Description**: Get list of event IDs given a particular query.

---

**Class**: `Falcon::EventStreamsApi`

- **Operation**: [**list_available_streams_o_auth2**](docs/EventStreamsApi.md#list_available_streams_o_auth2)
- **GET**: /sensors/entities/datafeed/v2
- **Description**: Discover all event streams in your environment

---

**Class**: `Falcon::EventStreamsApi`

- **Operation**: [**refresh_active_stream_session**](docs/EventStreamsApi.md#refresh_active_stream_session)
- **POST**: /sensors/entities/datafeed-actions/v1/{partition}
- **Description**: Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_alerts**](docs/FalconCompleteDashboardApi.md#aggregate_alerts)
- **POST**: /falcon-complete-dashboards/aggregates/alerts/GET/v1
- **Description**: Retrieve aggregate alerts values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_allow_list**](docs/FalconCompleteDashboardApi.md#aggregate_allow_list)
- **POST**: /falcon-complete-dashboards/aggregates/allowlist/GET/v1
- **Description**: Retrieve aggregate allowlist ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_block_list**](docs/FalconCompleteDashboardApi.md#aggregate_block_list)
- **POST**: /falcon-complete-dashboards/aggregates/blocklist/GET/v1
- **Description**: Retrieve aggregate blocklist ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_detections**](docs/FalconCompleteDashboardApi.md#aggregate_detections)
- **POST**: /falcon-complete-dashboards/aggregates/detects/GET/v1
- **Description**: Retrieve aggregate detection values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_device_count_collection**](docs/FalconCompleteDashboardApi.md#aggregate_device_count_collection)
- **POST**: /falcon-complete-dashboards/aggregates/devicecount-collections/GET/v1
- **Description**: Retrieve aggregate host/devices count based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_escalations**](docs/FalconCompleteDashboardApi.md#aggregate_escalations)
- **POST**: /falcon-complete-dashboards/aggregates/escalations/GET/v1
- **Description**: Retrieve aggregate escalation ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_fc_incidents**](docs/FalconCompleteDashboardApi.md#aggregate_fc_incidents)
- **POST**: /falcon-complete-dashboards/aggregates/incidents/GET/v1
- **Description**: Retrieve aggregate incident values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_prevention_policy**](docs/FalconCompleteDashboardApi.md#aggregate_prevention_policy)
- **POST**: /falcon-complete-dashboards/aggregates/prevention-policies/v1
- **Description**: Retrieve prevention policies aggregate values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_remediations**](docs/FalconCompleteDashboardApi.md#aggregate_remediations)
- **POST**: /falcon-complete-dashboards/aggregates/remediations/GET/v1
- **Description**: Retrieve aggregate remediation ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_sensor_update_policy**](docs/FalconCompleteDashboardApi.md#aggregate_sensor_update_policy)
- **POST**: /falcon-complete-dashboards/aggregates/sensor-update-policies/v1
- **Description**: Retrieve sensor update policies aggregate values

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**aggregate_total_device_counts**](docs/FalconCompleteDashboardApi.md#aggregate_total_device_counts)
- **POST**: /falcon-complete-dashboards/aggregates/total-device-counts/v1
- **Description**: Retrieve aggregate total host/devices based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**get_device_count_collection_queries_by_filter**](docs/FalconCompleteDashboardApi.md#get_device_count_collection_queries_by_filter)
- **GET**: /falcon-complete-dashboards/queries/devicecount-collections/v1
- **Description**: Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_alert_ids_by_filter**](docs/FalconCompleteDashboardApi.md#query_alert_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/alerts/v1
- **Description**: Retrieve Alerts Ids that match the provided FQL filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_allow_list_filter**](docs/FalconCompleteDashboardApi.md#query_allow_list_filter)
- **GET**: /falcon-complete-dashboards/queries/allowlist/v1
- **Description**: Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_block_list_filter**](docs/FalconCompleteDashboardApi.md#query_block_list_filter)
- **GET**: /falcon-complete-dashboards/queries/blocklist/v1
- **Description**: Retrieve block listtickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_detection_ids_by_filter**](docs/FalconCompleteDashboardApi.md#query_detection_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/detects/v1
- **Description**: Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_escalations_filter**](docs/FalconCompleteDashboardApi.md#query_escalations_filter)
- **GET**: /falcon-complete-dashboards/queries/escalations/v1
- **Description**: Retrieve escalation tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_incident_ids_by_filter**](docs/FalconCompleteDashboardApi.md#query_incident_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/incidents/v1
- **Description**: Retrieve incidents that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboardApi`

- **Operation**: [**query_remediations_filter**](docs/FalconCompleteDashboardApi.md#query_remediations_filter)
- **GET**: /falcon-complete-dashboards/queries/remediations/v1
- **Description**: Retrieve remediation tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconContainerApi`

- **Operation**: [**get_credentials**](docs/FalconContainerApi.md#get_credentials)
- **GET**: /container-security/entities/image-registry-credentials/v1
- **Description**: Gets the registry credentials

---

**Class**: `Falcon::FalconContainerCliApi`

- **Operation**: [**read_image_vulnerabilities**](docs/FalconContainerCliApi.md#read_image_vulnerabilities)
- **POST**: /image-assessment/combined/vulnerability-lookups/v1
- **Description**: Retrieve known vulnerabilities for the provided image

---

**Class**: `Falcon::FalconContainerImageApi`

- **Operation**: [**create_registry_entities**](docs/FalconContainerImageApi.md#create_registry_entities)
- **POST**: /container-security/entities/registries/v1
- **Description**: Create a registry entity using the provided details

---

**Class**: `Falcon::FalconContainerImageApi`

- **Operation**: [**delete_registry_entities**](docs/FalconContainerImageApi.md#delete_registry_entities)
- **DELETE**: /container-security/entities/registries/v1
- **Description**: Delete the registry entity identified by the entity UUID

---

**Class**: `Falcon::FalconContainerImageApi`

- **Operation**: [**read_registry_entities**](docs/FalconContainerImageApi.md#read_registry_entities)
- **GET**: /container-security/queries/registries/v1
- **Description**: Retrieve registry entities identified by the customer id

---

**Class**: `Falcon::FalconContainerImageApi`

- **Operation**: [**read_registry_entities_by_uuid**](docs/FalconContainerImageApi.md#read_registry_entities_by_uuid)
- **GET**: /container-security/entities/registries/v1
- **Description**: Retrieve the registry entity identified by the entity UUID

---

**Class**: `Falcon::FalconContainerImageApi`

- **Operation**: [**update_registry_entities**](docs/FalconContainerImageApi.md#update_registry_entities)
- **PATCH**: /container-security/entities/registries/v1
- **Description**: Update the registry entity, as identified by the entity UUID, using the provided details

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**delete_report**](docs/FalconxSandboxApi.md#delete_report)
- **DELETE**: /falconx/entities/reports/v1
- **Description**: Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**delete_sample_v2**](docs/FalconxSandboxApi.md#delete_sample_v2)
- **DELETE**: /samples/entities/samples/v2
- **Description**: Removes a sample, including file, meta and submissions from the collection

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_artifacts**](docs/FalconxSandboxApi.md#get_artifacts)
- **GET**: /falconx/entities/artifacts/v1
- **Description**: Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_memory_dump**](docs/FalconxSandboxApi.md#get_memory_dump)
- **GET**: /falconx/entities/memory-dump/v1
- **Description**: Get memory dump content, as binary

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_memory_dump_extracted_strings**](docs/FalconxSandboxApi.md#get_memory_dump_extracted_strings)
- **GET**: /falconx/entities/memory-dump/extracted-strings/v1
- **Description**: Get extracted strings from a memory dump

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_memory_dump_hex_dump**](docs/FalconxSandboxApi.md#get_memory_dump_hex_dump)
- **GET**: /falconx/entities/memory-dump/hex-dump/v1
- **Description**: Get hex view of a memory dump

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_reports**](docs/FalconxSandboxApi.md#get_reports)
- **GET**: /falconx/entities/reports/v1
- **Description**: Get a full sandbox report.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_sample_v2**](docs/FalconxSandboxApi.md#get_sample_v2)
- **GET**: /samples/entities/samples/v2
- **Description**: Retrieves the file associated with the given ID (SHA256)

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_submissions**](docs/FalconxSandboxApi.md#get_submissions)
- **GET**: /falconx/entities/submissions/v1
- **Description**: Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**get_summary_reports**](docs/FalconxSandboxApi.md#get_summary_reports)
- **GET**: /falconx/entities/report-summaries/v1
- **Description**: Get a short summary version of a sandbox report.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**query_reports**](docs/FalconxSandboxApi.md#query_reports)
- **GET**: /falconx/queries/reports/v1
- **Description**: Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**query_sample_v1**](docs/FalconxSandboxApi.md#query_sample_v1)
- **POST**: /samples/queries/samples/GET/v1
- **Description**: Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**query_submissions**](docs/FalconxSandboxApi.md#query_submissions)
- **GET**: /falconx/queries/submissions/v1
- **Description**: Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**submit**](docs/FalconxSandboxApi.md#submit)
- **POST**: /falconx/entities/submissions/v1
- **Description**: Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

---

**Class**: `Falcon::FalconxSandboxApi`

- **Operation**: [**upload_sample_v2**](docs/FalconxSandboxApi.md#upload_sample_v2)
- **POST**: /samples/entities/samples/v2
- **Description**: Upload a file for sandbox analysis. After uploading, use &#x60;/falconx/entities/submissions/v1&#x60; to start analyzing the file.

---

**Class**: `Falcon::FieldSchemaApi`

- **Operation**: [**fdrschema_entities_field_get**](docs/FieldSchemaApi.md#fdrschema_entities_field_get)
- **GET**: /fdr/entities/schema-fields/v1
- **Description**: Fetch field schema by ID

---

**Class**: `Falcon::FieldSchemaApi`

- **Operation**: [**fdrschema_queries_field_get**](docs/FieldSchemaApi.md#fdrschema_queries_field_get)
- **GET**: /fdr/queries/schema-fields/v1
- **Description**: Get list of field IDs given a particular query.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**create_policies**](docs/FilevantageApi.md#create_policies)
- **POST**: /filevantage/entities/policies/v1
- **Description**: Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**create_rule_groups**](docs/FilevantageApi.md#create_rule_groups)
- **POST**: /filevantage/entities/rule-groups/v1
- **Description**: Creates a new rule group of the specified type.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**create_rules**](docs/FilevantageApi.md#create_rules)
- **POST**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Creates a new rule configuration within the specified rule group.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**create_scheduled_exclusions**](docs/FilevantageApi.md#create_scheduled_exclusions)
- **POST**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Creates a new scheduled exclusion configuration for the provided policy id.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**delete_policies**](docs/FilevantageApi.md#delete_policies)
- **DELETE**: /filevantage/entities/policies/v1
- **Description**: Deletes 1 or more policies.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**delete_rule_groups**](docs/FilevantageApi.md#delete_rule_groups)
- **DELETE**: /filevantage/entities/rule-groups/v1
- **Description**: Deletes 1 or more rule groups 

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**delete_rules**](docs/FilevantageApi.md#delete_rules)
- **DELETE**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Deletes 1 or more rules from the specified rule group.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**delete_scheduled_exclusions**](docs/FilevantageApi.md#delete_scheduled_exclusions)
- **DELETE**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Deletes 1 or more scheduled exclusions from the provided policy id.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**get_changes**](docs/FilevantageApi.md#get_changes)
- **GET**: /filevantage/entities/changes/v2
- **Description**: Retrieve information on changes

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**get_policies**](docs/FilevantageApi.md#get_policies)
- **GET**: /filevantage/entities/policies/v1
- **Description**: Retrieves the configuration for 1 or more policies.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**get_rule_groups**](docs/FilevantageApi.md#get_rule_groups)
- **GET**: /filevantage/entities/rule-groups/v1
- **Description**: Retrieves the rule group details for 1 or more rule groups.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**get_rules**](docs/FilevantageApi.md#get_rules)
- **GET**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Retrieves the configuration for 1 or more rules.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**get_scheduled_exclusions**](docs/FilevantageApi.md#get_scheduled_exclusions)
- **GET**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**high_volume_query_changes**](docs/FilevantageApi.md#high_volume_query_changes)
- **GET**: /filevantage/queries/changes/v3
- **Description**: Returns 1 or more change ids

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**query_changes**](docs/FilevantageApi.md#query_changes)
- **GET**: /filevantage/queries/changes/v2
- **Description**: Returns 1 or more change ids

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**query_policies**](docs/FilevantageApi.md#query_policies)
- **GET**: /filevantage/queries/policies/v1
- **Description**: Retrieve the ids of all policies that are assigned the provided policy type.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**query_rule_groups**](docs/FilevantageApi.md#query_rule_groups)
- **GET**: /filevantage/queries/rule-groups/v1
- **Description**: Retrieve the ids of all rule groups that are of the provided rule group type.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**query_scheduled_exclusions**](docs/FilevantageApi.md#query_scheduled_exclusions)
- **GET**: /filevantage/queries/policy-scheduled-exclusions/v1
- **Description**: Retrieve the ids of all scheduled exclusions contained within the provided policy id.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_policies**](docs/FilevantageApi.md#update_policies)
- **PATCH**: /filevantage/entities/policies/v1
- **Description**: Updates the general information of the provided policy.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_policy_host_groups**](docs/FilevantageApi.md#update_policy_host_groups)
- **PATCH**: /filevantage/entities/policies-host-groups/v1
- **Description**: Manage host groups assigned to a policy.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_policy_precedence**](docs/FilevantageApi.md#update_policy_precedence)
- **PATCH**: /filevantage/entities/policies-precedence/v1
- **Description**: Updates the policy precedence for all policies of a specific type.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_policy_rule_groups**](docs/FilevantageApi.md#update_policy_rule_groups)
- **PATCH**: /filevantage/entities/policies-rule-groups/v1
- **Description**: Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_rule_group_precedence**](docs/FilevantageApi.md#update_rule_group_precedence)
- **PATCH**: /filevantage/entities/rule-groups-rule-precedence/v1
- **Description**: Updates the rule precedence for all rules in the identified rule group.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_rule_groups**](docs/FilevantageApi.md#update_rule_groups)
- **PATCH**: /filevantage/entities/rule-groups/v1
- **Description**: Updates the provided rule group.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_rules**](docs/FilevantageApi.md#update_rules)
- **PATCH**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Updates the provided rule configuration within the specified rule group.

---

**Class**: `Falcon::FilevantageApi`

- **Operation**: [**update_scheduled_exclusions**](docs/FilevantageApi.md#update_scheduled_exclusions)
- **PATCH**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Updates the provided scheduled exclusion configuration within the provided policy.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**aggregate_events**](docs/FirewallManagementApi.md#aggregate_events)
- **POST**: /fwmgr/aggregates/events/GET/v1
- **Description**: Aggregate events for customer

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**aggregate_policy_rules**](docs/FirewallManagementApi.md#aggregate_policy_rules)
- **POST**: /fwmgr/aggregates/policy-rules/GET/v1
- **Description**: Aggregate rules within a policy for customer

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**aggregate_rule_groups**](docs/FirewallManagementApi.md#aggregate_rule_groups)
- **POST**: /fwmgr/aggregates/rule-groups/GET/v1
- **Description**: Aggregate rule groups for customer

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**aggregate_rules**](docs/FirewallManagementApi.md#aggregate_rules)
- **POST**: /fwmgr/aggregates/rules/GET/v1
- **Description**: Aggregate rules for customer

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**create_network_locations**](docs/FirewallManagementApi.md#create_network_locations)
- **POST**: /fwmgr/entities/network-locations/v1
- **Description**: Create new network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**create_rule_group**](docs/FirewallManagementApi.md#create_rule_group)
- **POST**: /fwmgr/entities/rule-groups/v1
- **Description**: Create new rule group on a platform for a customer with a name and description, and return the ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**create_rule_group_validation**](docs/FirewallManagementApi.md#create_rule_group_validation)
- **POST**: /fwmgr/entities/rule-groups/validation/v1
- **Description**: Validates the request of creating a new rule group on a platform for a customer with a name and description

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**delete_network_locations**](docs/FirewallManagementApi.md#delete_network_locations)
- **DELETE**: /fwmgr/entities/network-locations/v1
- **Description**: Delete network location entities by ID.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**delete_rule_groups**](docs/FirewallManagementApi.md#delete_rule_groups)
- **DELETE**: /fwmgr/entities/rule-groups/v1
- **Description**: Delete rule group entities by ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_events**](docs/FirewallManagementApi.md#get_events)
- **GET**: /fwmgr/entities/events/v1
- **Description**: Get events entities by ID and optionally version

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_firewall_fields**](docs/FirewallManagementApi.md#get_firewall_fields)
- **GET**: /fwmgr/entities/firewall-fields/v1
- **Description**: Get the firewall field specifications by ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_network_locations**](docs/FirewallManagementApi.md#get_network_locations)
- **GET**: /fwmgr/entities/network-locations/v1
- **Description**: Get a summary of network locations entities by ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_network_locations_details**](docs/FirewallManagementApi.md#get_network_locations_details)
- **GET**: /fwmgr/entities/network-locations-details/v1
- **Description**: Get network locations entities by ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_platforms**](docs/FirewallManagementApi.md#get_platforms)
- **GET**: /fwmgr/entities/platforms/v1
- **Description**: Get platforms by ID, e.g., windows or mac or droid

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_policy_containers**](docs/FirewallManagementApi.md#get_policy_containers)
- **GET**: /fwmgr/entities/policies/v1
- **Description**: Get policy container entities by policy ID

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_rule_groups**](docs/FirewallManagementApi.md#get_rule_groups)
- **GET**: /fwmgr/entities/rule-groups/v1
- **Description**: Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**get_rules**](docs/FirewallManagementApi.md#get_rules)
- **GET**: /fwmgr/entities/rules/v1
- **Description**: Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_events**](docs/FirewallManagementApi.md#query_events)
- **GET**: /fwmgr/queries/events/v1
- **Description**: Find all event IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_firewall_fields**](docs/FirewallManagementApi.md#query_firewall_fields)
- **GET**: /fwmgr/queries/firewall-fields/v1
- **Description**: Get the firewall field specification IDs for the provided platform

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_network_locations**](docs/FirewallManagementApi.md#query_network_locations)
- **GET**: /fwmgr/queries/network-locations/v1
- **Description**: Get a list of network location IDs

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_platforms**](docs/FirewallManagementApi.md#query_platforms)
- **GET**: /fwmgr/queries/platforms/v1
- **Description**: Get the list of platform names

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_policy_rules**](docs/FirewallManagementApi.md#query_policy_rules)
- **GET**: /fwmgr/queries/policy-rules/v1
- **Description**: Find all firewall rule IDs matching the query with filter, and return them in precedence order

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_rule_groups**](docs/FirewallManagementApi.md#query_rule_groups)
- **GET**: /fwmgr/queries/rule-groups/v1
- **Description**: Find all rule group IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**query_rules**](docs/FirewallManagementApi.md#query_rules)
- **GET**: /fwmgr/queries/rules/v1
- **Description**: Find all rule IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_network_locations**](docs/FirewallManagementApi.md#update_network_locations)
- **PATCH**: /fwmgr/entities/network-locations/v1
- **Description**: Updates the network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_network_locations_metadata**](docs/FirewallManagementApi.md#update_network_locations_metadata)
- **POST**: /fwmgr/entities/network-locations-metadata/v1
- **Description**: Updates the network locations metadata such as polling_intervals for the cid

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_network_locations_precedence**](docs/FirewallManagementApi.md#update_network_locations_precedence)
- **POST**: /fwmgr/entities/network-locations-precedence/v1
- **Description**: Updates the network locations precedence according to the list of ids provided.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_policy_container**](docs/FirewallManagementApi.md#update_policy_container)
- **PUT**: /fwmgr/entities/policies/v2
- **Description**: Update an identified policy container, including local logging functionality.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_policy_container_v1**](docs/FirewallManagementApi.md#update_policy_container_v1)
- **PUT**: /fwmgr/entities/policies/v1
- **Description**: Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_rule_group**](docs/FirewallManagementApi.md#update_rule_group)
- **PATCH**: /fwmgr/entities/rule-groups/v1
- **Description**: Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**update_rule_group_validation**](docs/FirewallManagementApi.md#update_rule_group_validation)
- **PATCH**: /fwmgr/entities/rule-groups/validation/v1
- **Description**: Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**upsert_network_locations**](docs/FirewallManagementApi.md#upsert_network_locations)
- **PUT**: /fwmgr/entities/network-locations/v1
- **Description**: Updates the network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagementApi`

- **Operation**: [**validate_filepath_pattern**](docs/FirewallManagementApi.md#validate_filepath_pattern)
- **POST**: /fwmgr/entities/rules/validate-filepath/v1
- **Description**: Validates that the test pattern matches the executable filepath glob pattern.

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**create_firewall_policies**](docs/FirewallPoliciesApi.md#create_firewall_policies)
- **POST**: /policy/entities/firewall/v1
- **Description**: Create Firewall Policies by specifying details about the policy to create

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**delete_firewall_policies**](docs/FirewallPoliciesApi.md#delete_firewall_policies)
- **DELETE**: /policy/entities/firewall/v1
- **Description**: Delete a set of Firewall Policies by specifying their IDs

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**get_firewall_policies**](docs/FirewallPoliciesApi.md#get_firewall_policies)
- **GET**: /policy/entities/firewall/v1
- **Description**: Retrieve a set of Firewall Policies by specifying their IDs

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**perform_firewall_policies_action**](docs/FirewallPoliciesApi.md#perform_firewall_policies_action)
- **POST**: /policy/entities/firewall-actions/v1
- **Description**: Perform the specified action on the Firewall Policies specified in the request

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**query_combined_firewall_policies**](docs/FirewallPoliciesApi.md#query_combined_firewall_policies)
- **GET**: /policy/combined/firewall/v1
- **Description**: Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**query_combined_firewall_policy_members**](docs/FirewallPoliciesApi.md#query_combined_firewall_policy_members)
- **GET**: /policy/combined/firewall-members/v1
- **Description**: Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**query_firewall_policies**](docs/FirewallPoliciesApi.md#query_firewall_policies)
- **GET**: /policy/queries/firewall/v1
- **Description**: Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**query_firewall_policy_members**](docs/FirewallPoliciesApi.md#query_firewall_policy_members)
- **GET**: /policy/queries/firewall-members/v1
- **Description**: Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**set_firewall_policies_precedence**](docs/FirewallPoliciesApi.md#set_firewall_policies_precedence)
- **POST**: /policy/entities/firewall-precedence/v1
- **Description**: Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::FirewallPoliciesApi`

- **Operation**: [**update_firewall_policies**](docs/FirewallPoliciesApi.md#update_firewall_policies)
- **PATCH**: /policy/entities/firewall/v1
- **Description**: Update Firewall Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_dynamic_execute_alt_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_dynamic_execute_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-dynamic-execute/v1
- **Description**: Execute a dynamic saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_dynamic_execute_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_dynamic_execute_v1)
- **POST**: /loggingapi/entities/saved-searches/execute-dynamic/v1
- **Description**: Execute a dynamic saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_execute_alt_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_execute_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-execute/v1
- **Description**: Execute a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_execute_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_execute_v1)
- **POST**: /loggingapi/entities/saved-searches/execute/v1
- **Description**: Execute a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_ingest_alt_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_ingest_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-ingest/v1
- **Description**: Populate a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**create_saved_searches_ingest_v1**](docs/FoundryLogscaleApi.md#create_saved_searches_ingest_v1)
- **POST**: /loggingapi/entities/saved-searches/ingest/v1
- **Description**: Populate a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**get_saved_searches_execute_alt_v1**](docs/FoundryLogscaleApi.md#get_saved_searches_execute_alt_v1)
- **GET**: /loggingapi/entities/saved-searches-execute/v1
- **Description**: Get the results of a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**get_saved_searches_execute_v1**](docs/FoundryLogscaleApi.md#get_saved_searches_execute_v1)
- **GET**: /loggingapi/entities/saved-searches/execute/v1
- **Description**: Get the results of a saved search

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**get_saved_searches_job_results_download_alt_v1**](docs/FoundryLogscaleApi.md#get_saved_searches_job_results_download_alt_v1)
- **GET**: /loggingapi/entities/saved-searches-job-results-download/v1
- **Description**: Get the results of a saved search as a file

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**get_saved_searches_job_results_download_v1**](docs/FoundryLogscaleApi.md#get_saved_searches_job_results_download_v1)
- **GET**: /loggingapi/entities/saved-searches/job-results-download/v1
- **Description**: Get the results of a saved search as a file

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**ingest_data_v1**](docs/FoundryLogscaleApi.md#ingest_data_v1)
- **POST**: /loggingapi/entities/data-ingestion/ingest/v1
- **Description**: Ingest data into the application repository

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**list_repos_v1**](docs/FoundryLogscaleApi.md#list_repos_v1)
- **GET**: /loggingapi/combined/repos/v1
- **Description**: Lists available repositories and views

---

**Class**: `Falcon::FoundryLogscaleApi`

- **Operation**: [**list_view_v1**](docs/FoundryLogscaleApi.md#list_view_v1)
- **GET**: /loggingapi/entities/views/v1
- **Description**: List views

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**create_host_groups**](docs/HostGroupApi.md#create_host_groups)
- **POST**: /devices/entities/host-groups/v1
- **Description**: Create Host Groups by specifying details about the group to create

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**delete_host_groups**](docs/HostGroupApi.md#delete_host_groups)
- **DELETE**: /devices/entities/host-groups/v1
- **Description**: Delete a set of Host Groups by specifying their IDs

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**get_host_groups**](docs/HostGroupApi.md#get_host_groups)
- **GET**: /devices/entities/host-groups/v1
- **Description**: Retrieve a set of Host Groups by specifying their IDs

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**perform_group_action**](docs/HostGroupApi.md#perform_group_action)
- **POST**: /devices/entities/host-group-actions/v1
- **Description**: Perform the specified action on the Host Groups specified in the request

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**query_combined_group_members**](docs/HostGroupApi.md#query_combined_group_members)
- **GET**: /devices/combined/host-group-members/v1
- **Description**: Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**query_combined_host_groups**](docs/HostGroupApi.md#query_combined_host_groups)
- **GET**: /devices/combined/host-groups/v1
- **Description**: Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**query_group_members**](docs/HostGroupApi.md#query_group_members)
- **GET**: /devices/queries/host-group-members/v1
- **Description**: Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**query_host_groups**](docs/HostGroupApi.md#query_host_groups)
- **GET**: /devices/queries/host-groups/v1
- **Description**: Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria

---

**Class**: `Falcon::HostGroupApi`

- **Operation**: [**update_host_groups**](docs/HostGroupApi.md#update_host_groups)
- **PATCH**: /devices/entities/host-groups/v1
- **Description**: Update Host Groups by specifying the ID of the group and details to update

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**entities_perform_action**](docs/HostsApi.md#entities_perform_action)
- **POST**: /devices/entities/group-actions/v1
- **Description**: Performs the specified action on the provided group IDs.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**get_device_details_v2**](docs/HostsApi.md#get_device_details_v2)
- **GET**: /devices/entities/devices/v2
- **Description**: Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**get_online_state_v1**](docs/HostsApi.md#get_online_state_v1)
- **GET**: /devices/entities/online-state/v1
- **Description**: Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a &#x60;state&#x60; of &#x60;online&#x60;, &#x60;offline&#x60;, or &#x60;unknown&#x60; for each host, identified by host &#x60;id&#x60;.  Make a &#x60;GET&#x60; request to &#x60;/devices/queries/devices/v1&#x60; to get a list of host IDs.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**perform_action_v2**](docs/HostsApi.md#perform_action_v2)
- **POST**: /devices/entities/devices-actions/v2
- **Description**: Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**post_device_details_v2**](docs/HostsApi.md#post_device_details_v2)
- **POST**: /devices/entities/devices/v2
- **Description**: Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_device_login_history**](docs/HostsApi.md#query_device_login_history)
- **POST**: /devices/combined/devices/login-history/v1
- **Description**: Retrieve details about recent login sessions for a set of devices.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_device_login_history_v2**](docs/HostsApi.md#query_device_login_history_v2)
- **POST**: /devices/combined/devices/login-history/v2
- **Description**: Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_devices_by_filter**](docs/HostsApi.md#query_devices_by_filter)
- **GET**: /devices/queries/devices/v1
- **Description**: Search for hosts in your environment by platform, hostname, IP, and other criteria.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_devices_by_filter_scroll**](docs/HostsApi.md#query_devices_by_filter_scroll)
- **GET**: /devices/queries/devices-scroll/v1
- **Description**: Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_get_network_address_history_v1**](docs/HostsApi.md#query_get_network_address_history_v1)
- **POST**: /devices/combined/devices/network-address-history/v1
- **Description**: Retrieve history of IP and MAC addresses of devices.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**query_hidden_devices**](docs/HostsApi.md#query_hidden_devices)
- **GET**: /devices/queries/devices-hidden/v1
- **Description**: Retrieve hidden hosts that match the provided filter criteria.

---

**Class**: `Falcon::HostsApi`

- **Operation**: [**update_device_tags**](docs/HostsApi.md#update_device_tags)
- **PATCH**: /devices/entities/devices/tags/v1
- **Description**: Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/

---

**Class**: `Falcon::IdentityEntitiesApi`

- **Operation**: [**get_sensor_aggregates**](docs/IdentityEntitiesApi.md#get_sensor_aggregates)
- **POST**: /identity-protection/aggregates/devices/GET/v1
- **Description**: Get sensor aggregates as specified via json in request body.

---

**Class**: `Falcon::IdentityEntitiesApi`

- **Operation**: [**get_sensor_details**](docs/IdentityEntitiesApi.md#get_sensor_details)
- **POST**: /identity-protection/entities/devices/GET/v1
- **Description**: Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.

---

**Class**: `Falcon::IdentityEntitiesApi`

- **Operation**: [**query_sensors_by_filter**](docs/IdentityEntitiesApi.md#query_sensors_by_filter)
- **GET**: /identity-protection/queries/devices/v1
- **Description**: Search for sensors in your environment by hostname, IP, and other criteria.

---

**Class**: `Falcon::IdentityProtectionApi`

- **Operation**: [**api_preempt_proxy_post_graphql**](docs/IdentityProtectionApi.md#api_preempt_proxy_post_graphql)
- **POST**: /identity-protection/combined/graphql/v1
- **Description**: Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**create_policies**](docs/ImageAssessmentPoliciesApi.md#create_policies)
- **POST**: /container-security/entities/image-assessment-policies/v1
- **Description**: Create Image Assessment policies

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**create_policy_groups**](docs/ImageAssessmentPoliciesApi.md#create_policy_groups)
- **POST**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Create Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**delete_policy**](docs/ImageAssessmentPoliciesApi.md#delete_policy)
- **DELETE**: /container-security/entities/image-assessment-policies/v1
- **Description**: Delete Image Assessment Policy by policy UUID

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**delete_policy_group**](docs/ImageAssessmentPoliciesApi.md#delete_policy_group)
- **DELETE**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Delete Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**read_policies**](docs/ImageAssessmentPoliciesApi.md#read_policies)
- **GET**: /container-security/entities/image-assessment-policies/v1
- **Description**: Get all Image Assessment policies

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**read_policy_exclusions**](docs/ImageAssessmentPoliciesApi.md#read_policy_exclusions)
- **GET**: /container-security/entities/image-assessment-policy-exclusions/v1
- **Description**: Retrieve Image Assessment Policy Exclusion entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**read_policy_groups**](docs/ImageAssessmentPoliciesApi.md#read_policy_groups)
- **GET**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Retrieve Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**update_policies**](docs/ImageAssessmentPoliciesApi.md#update_policies)
- **PATCH**: /container-security/entities/image-assessment-policies/v1
- **Description**: Update Image Assessment Policy entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**update_policy_exclusions**](docs/ImageAssessmentPoliciesApi.md#update_policy_exclusions)
- **POST**: /container-security/entities/image-assessment-policy-exclusions/v1
- **Description**: Update Image Assessment Policy Exclusion entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**update_policy_groups**](docs/ImageAssessmentPoliciesApi.md#update_policy_groups)
- **PATCH**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Update Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPoliciesApi`

- **Operation**: [**update_policy_precedence**](docs/ImageAssessmentPoliciesApi.md#update_policy_precedence)
- **POST**: /container-security/entities/image-assessment-policy-precedence/v1
- **Description**: Update Image Assessment Policy precedence

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**crowd_score**](docs/IncidentsApi.md#crowd_score)
- **GET**: /incidents/combined/crowdscores/v1
- **Description**: Query environment wide CrowdScore and return the entity data

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**get_behaviors**](docs/IncidentsApi.md#get_behaviors)
- **POST**: /incidents/entities/behaviors/GET/v1
- **Description**: Get details on behaviors by providing behavior IDs

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**get_incidents**](docs/IncidentsApi.md#get_incidents)
- **POST**: /incidents/entities/incidents/GET/v1
- **Description**: Get details on incidents by providing incident IDs

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**perform_incident_action**](docs/IncidentsApi.md#perform_incident_action)
- **POST**: /incidents/entities/incident-actions/v1
- **Description**: Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**query_behaviors**](docs/IncidentsApi.md#query_behaviors)
- **GET**: /incidents/queries/behaviors/v1
- **Description**: Search for behaviors by providing an FQL filter, sorting, and paging details

---

**Class**: `Falcon::IncidentsApi`

- **Operation**: [**query_incidents**](docs/IncidentsApi.md#query_incidents)
- **GET**: /incidents/queries/incidents/v1
- **Description**: Search for incidents by providing an FQL filter, sorting, and paging details

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**audit_events_query**](docs/InstallationTokensApi.md#audit_events_query)
- **GET**: /installation-tokens/queries/audit-events/v1
- **Description**: Search for audit events by providing an FQL filter and paging details.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**audit_events_read**](docs/InstallationTokensApi.md#audit_events_read)
- **GET**: /installation-tokens/entities/audit-events/v1
- **Description**: Gets the details of one or more audit events by id.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**customer_settings_read**](docs/InstallationTokensApi.md#customer_settings_read)
- **GET**: /installation-tokens/entities/customer-settings/v1
- **Description**: Check current installation token settings.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**tokens_create**](docs/InstallationTokensApi.md#tokens_create)
- **POST**: /installation-tokens/entities/tokens/v1
- **Description**: Creates a token.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**tokens_delete**](docs/InstallationTokensApi.md#tokens_delete)
- **DELETE**: /installation-tokens/entities/tokens/v1
- **Description**: Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**tokens_query**](docs/InstallationTokensApi.md#tokens_query)
- **GET**: /installation-tokens/queries/tokens/v1
- **Description**: Search for tokens by providing an FQL filter and paging details.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**tokens_read**](docs/InstallationTokensApi.md#tokens_read)
- **GET**: /installation-tokens/entities/tokens/v1
- **Description**: Gets the details of one or more tokens by id.

---

**Class**: `Falcon::InstallationTokensApi`

- **Operation**: [**tokens_update**](docs/InstallationTokensApi.md#tokens_update)
- **PATCH**: /installation-tokens/entities/tokens/v1
- **Description**: Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.

---

**Class**: `Falcon::InstallationTokensSettingsApi`

- **Operation**: [**customer_settings_update**](docs/InstallationTokensSettingsApi.md#customer_settings_update)
- **PATCH**: /installation-tokens/entities/customer-settings/v1
- **Description**: Update installation token settings.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_actor_entities**](docs/IntelApi.md#get_intel_actor_entities)
- **GET**: /intel/entities/actors/v1
- **Description**: Retrieve specific actors using their actor IDs.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_indicator_entities**](docs/IntelApi.md#get_intel_indicator_entities)
- **POST**: /intel/entities/indicators/GET/v1
- **Description**: Retrieve specific indicators using their indicator IDs.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_report_entities**](docs/IntelApi.md#get_intel_report_entities)
- **GET**: /intel/entities/reports/v1
- **Description**: Retrieve specific reports using their report IDs.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_report_pdf**](docs/IntelApi.md#get_intel_report_pdf)
- **GET**: /intel/entities/report-files/v1
- **Description**: Return a Report PDF attachment

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_rule_entities**](docs/IntelApi.md#get_intel_rule_entities)
- **GET**: /intel/entities/rules/v1
- **Description**: Retrieve details for rule sets for the specified ids.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_intel_rule_file**](docs/IntelApi.md#get_intel_rule_file)
- **GET**: /intel/entities/rules-files/v1
- **Description**: Download earlier rule sets.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_latest_intel_rule_file**](docs/IntelApi.md#get_latest_intel_rule_file)
- **GET**: /intel/entities/rules-latest-files/v1
- **Description**: Download the latest rule set.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_mitre_report**](docs/IntelApi.md#get_mitre_report)
- **GET**: /intel/entities/mitre-reports/v1
- **Description**: Export Mitre ATT&amp;CK information for a given actor.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**get_vulnerabilities**](docs/IntelApi.md#get_vulnerabilities)
- **POST**: /intel/entities/vulnerabilities/GET/v1
- **Description**: Get vulnerabilities

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**post_mitre_attacks**](docs/IntelApi.md#post_mitre_attacks)
- **POST**: /intel/entities/mitre/v1
- **Description**: Retrieves report and observable IDs associated with the given actor and attacks

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_actor_entities**](docs/IntelApi.md#query_intel_actor_entities)
- **GET**: /intel/combined/actors/v1
- **Description**: Get info about actors that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_actor_ids**](docs/IntelApi.md#query_intel_actor_ids)
- **GET**: /intel/queries/actors/v1
- **Description**: Get actor IDs that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_indicator_entities**](docs/IntelApi.md#query_intel_indicator_entities)
- **GET**: /intel/combined/indicators/v1
- **Description**: Get info about indicators that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_indicator_ids**](docs/IntelApi.md#query_intel_indicator_ids)
- **GET**: /intel/queries/indicators/v1
- **Description**: Get indicators IDs that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_report_entities**](docs/IntelApi.md#query_intel_report_entities)
- **GET**: /intel/combined/reports/v1
- **Description**: Get info about reports that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_report_ids**](docs/IntelApi.md#query_intel_report_ids)
- **GET**: /intel/queries/reports/v1
- **Description**: Get report IDs that match provided FQL filters.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_intel_rule_ids**](docs/IntelApi.md#query_intel_rule_ids)
- **GET**: /intel/queries/rules/v1
- **Description**: Search for rule IDs that match provided filter criteria.

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_mitre_attacks**](docs/IntelApi.md#query_mitre_attacks)
- **GET**: /intel/queries/mitre/v1
- **Description**: Gets MITRE tactics and techniques for the given actor, returning concatenation of id and tactic and technique ids, example: fancy-bear_TA0011_T1071

---

**Class**: `Falcon::IntelApi`

- **Operation**: [**query_vulnerabilities**](docs/IntelApi.md#query_vulnerabilities)
- **GET**: /intel/queries/vulnerabilities/v1
- **Description**: Get vulnerabilities IDs

---

**Class**: `Falcon::IoaExclusionsApi`

- **Operation**: [**create_ioa_exclusions_v1**](docs/IoaExclusionsApi.md#create_ioa_exclusions_v1)
- **POST**: /policy/entities/ioa-exclusions/v1
- **Description**: Create the IOA exclusions

---

**Class**: `Falcon::IoaExclusionsApi`

- **Operation**: [**delete_ioa_exclusions_v1**](docs/IoaExclusionsApi.md#delete_ioa_exclusions_v1)
- **DELETE**: /policy/entities/ioa-exclusions/v1
- **Description**: Delete the IOA exclusions by id

---

**Class**: `Falcon::IoaExclusionsApi`

- **Operation**: [**get_ioa_exclusions_v1**](docs/IoaExclusionsApi.md#get_ioa_exclusions_v1)
- **GET**: /policy/entities/ioa-exclusions/v1
- **Description**: Get a set of IOA Exclusions by specifying their IDs

---

**Class**: `Falcon::IoaExclusionsApi`

- **Operation**: [**query_ioa_exclusions_v1**](docs/IoaExclusionsApi.md#query_ioa_exclusions_v1)
- **GET**: /policy/queries/ioa-exclusions/v1
- **Description**: Search for IOA exclusions.

---

**Class**: `Falcon::IoaExclusionsApi`

- **Operation**: [**update_ioa_exclusions_v1**](docs/IoaExclusionsApi.md#update_ioa_exclusions_v1)
- **PATCH**: /policy/entities/ioa-exclusions/v1
- **Description**: Update the IOA exclusions

---

**Class**: `Falcon::IocApi`

- **Operation**: [**action_get_v1**](docs/IocApi.md#action_get_v1)
- **GET**: /iocs/entities/actions/v1
- **Description**: Get Actions by ids.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**action_query_v1**](docs/IocApi.md#action_query_v1)
- **GET**: /iocs/queries/actions/v1
- **Description**: Query Actions.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**get_indicators_report**](docs/IocApi.md#get_indicators_report)
- **POST**: /iocs/entities/indicators-reports/v1
- **Description**: Launch an indicators report creation job

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_aggregate_v1**](docs/IocApi.md#indicator_aggregate_v1)
- **POST**: /iocs/aggregates/indicators/v1
- **Description**: Get Indicators aggregates as specified via json in the request body.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_combined_v1**](docs/IocApi.md#indicator_combined_v1)
- **GET**: /iocs/combined/indicator/v1
- **Description**: Get Combined for Indicators.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_create_v1**](docs/IocApi.md#indicator_create_v1)
- **POST**: /iocs/entities/indicators/v1
- **Description**: Create Indicators.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_delete_v1**](docs/IocApi.md#indicator_delete_v1)
- **DELETE**: /iocs/entities/indicators/v1
- **Description**: Delete Indicators by ids.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_get_device_count_v1**](docs/IocApi.md#indicator_get_device_count_v1)
- **GET**: /iocs/aggregates/indicators/device-count/v1
- **Description**: Get the number of devices the indicator has run on

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_get_devices_ran_on_v1**](docs/IocApi.md#indicator_get_devices_ran_on_v1)
- **GET**: /iocs/queries/indicators/devices/v1
- **Description**: Get the IDs of devices the indicator has run on

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_get_processes_ran_on_v1**](docs/IocApi.md#indicator_get_processes_ran_on_v1)
- **GET**: /iocs/queries/indicators/processes/v1
- **Description**: Get the number of processes the indicator has run on

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_get_v1**](docs/IocApi.md#indicator_get_v1)
- **GET**: /iocs/entities/indicators/v1
- **Description**: Get Indicators by ids.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_search_v1**](docs/IocApi.md#indicator_search_v1)
- **GET**: /iocs/queries/indicators/v1
- **Description**: Search for Indicators.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**indicator_update_v1**](docs/IocApi.md#indicator_update_v1)
- **PATCH**: /iocs/entities/indicators/v1
- **Description**: Update Indicators.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**ioc_type_query_v1**](docs/IocApi.md#ioc_type_query_v1)
- **GET**: /iocs/queries/ioc-types/v1
- **Description**: Query IOC Types.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**platform_query_v1**](docs/IocApi.md#platform_query_v1)
- **GET**: /iocs/queries/platforms/v1
- **Description**: Query Platforms.

---

**Class**: `Falcon::IocApi`

- **Operation**: [**severity_query_v1**](docs/IocApi.md#severity_query_v1)
- **GET**: /iocs/queries/severities/v1
- **Description**: Query Severities.

---

**Class**: `Falcon::IocsApi`

- **Operation**: [**devices_count**](docs/IocsApi.md#devices_count)
- **GET**: /indicators/aggregates/devices-count/v1
- **Description**: Number of hosts in your customer account that have observed a given custom IOC

---

**Class**: `Falcon::IocsApi`

- **Operation**: [**devices_ran_on**](docs/IocsApi.md#devices_ran_on)
- **GET**: /indicators/queries/devices/v1
- **Description**: Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1

---

**Class**: `Falcon::IocsApi`

- **Operation**: [**entities_processes**](docs/IocsApi.md#entities_processes)
- **GET**: /processes/entities/processes/v1
- **Description**: For the provided ProcessID retrieve the process details

---

**Class**: `Falcon::IocsApi`

- **Operation**: [**processes_ran_on**](docs/IocsApi.md#processes_ran_on)
- **GET**: /indicators/queries/processes/v1
- **Description**: Search for processes associated with a custom IOC

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**create_aws_account**](docs/KubernetesProtectionApi.md#create_aws_account)
- **POST**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Creates a new AWS account in our system for a customer and generates the installation script

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**create_azure_subscription**](docs/KubernetesProtectionApi.md#create_azure_subscription)
- **POST**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Creates a new Azure Subscription in our system

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**delete_aws_accounts_mixin0**](docs/KubernetesProtectionApi.md#delete_aws_accounts_mixin0)
- **DELETE**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Delete AWS accounts.

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**delete_azure_subscription**](docs/KubernetesProtectionApi.md#delete_azure_subscription)
- **DELETE**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Deletes a new Azure Subscription in our system

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**find_containers_by_container_run_time_version**](docs/KubernetesProtectionApi.md#find_containers_by_container_run_time_version)
- **GET**: /container-security/aggregates/containers/find-by-runtimeversion/v1
- **Description**: Retrieve containers by container_runtime_version

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**find_containers_count_affected_by_zero_day_vulnerabilities**](docs/KubernetesProtectionApi.md#find_containers_count_affected_by_zero_day_vulnerabilities)
- **GET**: /container-security/aggregates/containers/count-by-zero-day/v1
- **Description**: Retrieve containers count affected by zero day vulnerabilities

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_aws_accounts_mixin0**](docs/KubernetesProtectionApi.md#get_aws_accounts_mixin0)
- **GET**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Provides a list of AWS accounts.

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_azure_install_script**](docs/KubernetesProtectionApi.md#get_azure_install_script)
- **GET**: /kubernetes-protection/entities/user-script/azure/v1
- **Description**: Provides the script to run for a given tenant id and subscription IDs

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_azure_tenant_config**](docs/KubernetesProtectionApi.md#get_azure_tenant_config)
- **GET**: /kubernetes-protection/entities/config/azure/v1
- **Description**: Gets the Azure tenant Config

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_azure_tenant_ids**](docs/KubernetesProtectionApi.md#get_azure_tenant_ids)
- **GET**: /kubernetes-protection/entities/tenants/azure/v1
- **Description**: Provides all the azure subscriptions and tenants

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_clusters**](docs/KubernetesProtectionApi.md#get_clusters)
- **GET**: /kubernetes-protection/entities/kubernetes/clusters/v1
- **Description**: Provides the clusters acknowledged by the Kubernetes Protection service

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_combined_cloud_clusters**](docs/KubernetesProtectionApi.md#get_combined_cloud_clusters)
- **GET**: /kubernetes-protection/entities/cloud_cluster/v1
- **Description**: Returns a combined list of provisioned cloud accounts and known kubernetes clusters

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_helm_values_yaml**](docs/KubernetesProtectionApi.md#get_helm_values_yaml)
- **GET**: /kubernetes-protection/entities/integration/agent/v1
- **Description**: Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_locations**](docs/KubernetesProtectionApi.md#get_locations)
- **GET**: /kubernetes-protection/entities/cloud-locations/v1
- **Description**: Provides the cloud locations acknowledged by the Kubernetes Protection service

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**get_static_scripts**](docs/KubernetesProtectionApi.md#get_static_scripts)
- **GET**: /kubernetes-protection/entities/gen/scripts/v1
- **Description**: Gets static bash scripts that are used during registration

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**group_containers_by_managed**](docs/KubernetesProtectionApi.md#group_containers_by_managed)
- **GET**: /container-security/aggregates/containers/group-by-managed/v1
- **Description**: Group the containers by Managed

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**list_azure_accounts**](docs/KubernetesProtectionApi.md#list_azure_accounts)
- **GET**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Provides the azure subscriptions registered to Kubernetes Protection

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**patch_azure_service_principal**](docs/KubernetesProtectionApi.md#patch_azure_service_principal)
- **PATCH**: /kubernetes-protection/entities/service-principal/azure/v1
- **Description**: Adds the client ID for the given tenant ID to our system

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_cluster_combined**](docs/KubernetesProtectionApi.md#read_cluster_combined)
- **GET**: /container-security/combined/clusters/v1
- **Description**: Retrieve kubernetes clusters identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_cluster_count**](docs/KubernetesProtectionApi.md#read_cluster_count)
- **GET**: /container-security/aggregates/clusters/count/v1
- **Description**: Retrieve cluster counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_cluster_enrichment**](docs/KubernetesProtectionApi.md#read_cluster_enrichment)
- **GET**: /container-security/aggregates/enrichment/clusters/entities/v1
- **Description**: Retrieve cluster enrichment data

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_clusters_by_date_range_count**](docs/KubernetesProtectionApi.md#read_clusters_by_date_range_count)
- **GET**: /container-security/aggregates/clusters/count-by-date/v1
- **Description**: Retrieve clusters by date range counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_clusters_by_kubernetes_version_count**](docs/KubernetesProtectionApi.md#read_clusters_by_kubernetes_version_count)
- **GET**: /container-security/aggregates/clusters/count-by-kubernetes-version/v1
- **Description**: Bucket clusters by kubernetes version

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_clusters_by_status_count**](docs/KubernetesProtectionApi.md#read_clusters_by_status_count)
- **GET**: /container-security/aggregates/clusters/count-by-status/v1
- **Description**: Bucket clusters by status

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_combined**](docs/KubernetesProtectionApi.md#read_container_combined)
- **GET**: /container-security/combined/containers/v1
- **Description**: Retrieve containers identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_count**](docs/KubernetesProtectionApi.md#read_container_count)
- **GET**: /container-security/aggregates/containers/count/v1
- **Description**: Retrieve container counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_count_by_registry**](docs/KubernetesProtectionApi.md#read_container_count_by_registry)
- **GET**: /container-security/aggregates/containers/count-by-registry/v1
- **Description**: Retrieve top container image registries

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_enrichment**](docs/KubernetesProtectionApi.md#read_container_enrichment)
- **GET**: /container-security/aggregates/enrichment/containers/entities/v1
- **Description**: Retrieve container enrichment data

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_image_detections_count_by_date**](docs/KubernetesProtectionApi.md#read_container_image_detections_count_by_date)
- **GET**: /container-security/aggregates/containers/image-detections-count-by-date/v1
- **Description**: Retrieve count of image assessment detections on running containers over a period of time

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_images_by_most_used**](docs/KubernetesProtectionApi.md#read_container_images_by_most_used)
- **GET**: /container-security/aggregates/images/most-used/v1
- **Description**: Bucket container by image-digest

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_images_by_state**](docs/KubernetesProtectionApi.md#read_container_images_by_state)
- **GET**: /container-security/aggregates/containers/images-by-state/v1
- **Description**: Retrieve count of image states running on containers

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_container_vulnerabilities_by_severity_count**](docs/KubernetesProtectionApi.md#read_container_vulnerabilities_by_severity_count)
- **GET**: /container-security/aggregates/containers/vulnerability-count-by-severity/v1
- **Description**: Retrieve container vulnerabilities by severity counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_containers_by_date_range_count**](docs/KubernetesProtectionApi.md#read_containers_by_date_range_count)
- **GET**: /container-security/aggregates/containers/count-by-date/v1
- **Description**: Retrieve containers by date range counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_containers_sensor_coverage**](docs/KubernetesProtectionApi.md#read_containers_sensor_coverage)
- **GET**: /container-security/aggregates/containers/sensor-coverage/v1
- **Description**: Bucket containers by agent type and calculate sensor coverage

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_deployment_combined**](docs/KubernetesProtectionApi.md#read_deployment_combined)
- **GET**: /container-security/combined/deployments/v1
- **Description**: Retrieve kubernetes deployments identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_deployment_count**](docs/KubernetesProtectionApi.md#read_deployment_count)
- **GET**: /container-security/aggregates/deployments/count/v1
- **Description**: Retrieve deployment counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_deployment_enrichment**](docs/KubernetesProtectionApi.md#read_deployment_enrichment)
- **GET**: /container-security/aggregates/enrichment/deployments/entities/v1
- **Description**: Retrieve deployment enrichment data

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_deployments_by_date_range_count**](docs/KubernetesProtectionApi.md#read_deployments_by_date_range_count)
- **GET**: /container-security/aggregates/deployments/count-by-date/v1
- **Description**: Retrieve deployments by date range counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_distinct_container_image_count**](docs/KubernetesProtectionApi.md#read_distinct_container_image_count)
- **GET**: /container-security/aggregates/images/count-by-distinct/v1
- **Description**: Retrieve count of distinct images running on containers

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_kubernetes_iom_by_date_range**](docs/KubernetesProtectionApi.md#read_kubernetes_iom_by_date_range)
- **GET**: /container-security/aggregates/kubernetes-ioms/count-by-date/v1
- **Description**: Returns the count of Kubernetes IOMs by the date. by default it&#39;s for 7 days.

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_kubernetes_iom_count**](docs/KubernetesProtectionApi.md#read_kubernetes_iom_count)
- **GET**: /container-security/aggregates/kubernetes-ioms/count/v1
- **Description**: Returns the total count of Kubernetes IOMs over the past seven days

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_kubernetes_iom_entities**](docs/KubernetesProtectionApi.md#read_kubernetes_iom_entities)
- **GET**: /container-security/entities/kubernetes-ioms/v1
- **Description**: Retrieve Kubernetes IOM entities identified by the provided IDs

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_node_combined**](docs/KubernetesProtectionApi.md#read_node_combined)
- **GET**: /container-security/combined/nodes/v1
- **Description**: Retrieve kubernetes nodes identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_node_count**](docs/KubernetesProtectionApi.md#read_node_count)
- **GET**: /container-security/aggregates/nodes/count/v1
- **Description**: Retrieve node counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_node_enrichment**](docs/KubernetesProtectionApi.md#read_node_enrichment)
- **GET**: /container-security/aggregates/enrichment/nodes/entities/v1
- **Description**: Retrieve node enrichment data

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_nodes_by_cloud_count**](docs/KubernetesProtectionApi.md#read_nodes_by_cloud_count)
- **GET**: /container-security/aggregates/nodes/count-by-cloud/v1
- **Description**: Bucket nodes by cloud providers

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_nodes_by_container_engine_version_count**](docs/KubernetesProtectionApi.md#read_nodes_by_container_engine_version_count)
- **GET**: /container-security/aggregates/nodes/count-by-container-engine-version/v1
- **Description**: Bucket nodes by their container engine version

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_nodes_by_date_range_count**](docs/KubernetesProtectionApi.md#read_nodes_by_date_range_count)
- **GET**: /container-security/aggregates/nodes/count-by-date/v1
- **Description**: Retrieve nodes by date range counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_pod_combined**](docs/KubernetesProtectionApi.md#read_pod_combined)
- **GET**: /container-security/combined/pods/v1
- **Description**: Retrieve kubernetes pods identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_pod_count**](docs/KubernetesProtectionApi.md#read_pod_count)
- **GET**: /container-security/aggregates/pods/count/v1
- **Description**: Retrieve pod counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_pod_enrichment**](docs/KubernetesProtectionApi.md#read_pod_enrichment)
- **GET**: /container-security/aggregates/enrichment/pods/entities/v1
- **Description**: Retrieve pod enrichment data

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_pods_by_date_range_count**](docs/KubernetesProtectionApi.md#read_pods_by_date_range_count)
- **GET**: /container-security/aggregates/pods/count-by-date/v1
- **Description**: Retrieve pods by date range counts

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_running_container_images**](docs/KubernetesProtectionApi.md#read_running_container_images)
- **GET**: /container-security/combined/container-images/v1
- **Description**: Retrieve images on running containers

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**read_vulnerable_container_image_count**](docs/KubernetesProtectionApi.md#read_vulnerable_container_image_count)
- **GET**: /container-security/aggregates/containers/count-vulnerable-images/v1
- **Description**: Retrieve count of vulnerable images running on containers

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**regenerate_api_key**](docs/KubernetesProtectionApi.md#regenerate_api_key)
- **POST**: /kubernetes-protection/entities/integration/api-key/v1
- **Description**: Regenerate API key for docker registry integrations

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**search_and_read_kubernetes_iom_entities**](docs/KubernetesProtectionApi.md#search_and_read_kubernetes_iom_entities)
- **GET**: /container-security/combined/kubernetes-ioms/v1
- **Description**: Search Kubernetes IOM by the provided search criteria

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**search_kubernetes_ioms**](docs/KubernetesProtectionApi.md#search_kubernetes_ioms)
- **GET**: /container-security/queries/kubernetes-ioms/v1
- **Description**: Search Kubernetes IOMs by the provided search criteria. this endpoint returns a list of Kubernetes IOM UUIDs matching the query

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**trigger_scan**](docs/KubernetesProtectionApi.md#trigger_scan)
- **POST**: /kubernetes-protection/entities/scan/trigger/v1
- **Description**: Triggers a dry run or a full scan of a customer&#39;s kubernetes footprint

---

**Class**: `Falcon::KubernetesProtectionApi`

- **Operation**: [**update_aws_account**](docs/KubernetesProtectionApi.md#update_aws_account)
- **PATCH**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Updates the AWS account per the query parameters provided

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**get_mal_query_download_v1**](docs/MalqueryApi.md#get_mal_query_download_v1)
- **GET**: /malquery/entities/download-files/v1
- **Description**: Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**get_mal_query_entities_samples_fetch_v1**](docs/MalqueryApi.md#get_mal_query_entities_samples_fetch_v1)
- **GET**: /malquery/entities/samples-fetch/v1
- **Description**: Fetch a zip archive with password &#39;infected&#39; containing the samples. Call this once the /entities/samples-multidownload request has finished processing

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**get_mal_query_metadata_v1**](docs/MalqueryApi.md#get_mal_query_metadata_v1)
- **GET**: /malquery/entities/metadata/v1
- **Description**: Retrieve indexed files metadata by their hash

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**get_mal_query_quotas_v1**](docs/MalqueryApi.md#get_mal_query_quotas_v1)
- **GET**: /malquery/aggregates/quotas/v1
- **Description**: Get information about search and download quotas in your environment

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**get_mal_query_request_v1**](docs/MalqueryApi.md#get_mal_query_request_v1)
- **GET**: /malquery/entities/requests/v1
- **Description**: Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**post_mal_query_entities_samples_multidownload_v1**](docs/MalqueryApi.md#post_mal_query_entities_samples_multidownload_v1)
- **POST**: /malquery/entities/samples-multidownload/v1
- **Description**: Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**post_mal_query_exact_search_v1**](docs/MalqueryApi.md#post_mal_query_exact_search_v1)
- **POST**: /malquery/queries/exact-search/v1
- **Description**: Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**post_mal_query_fuzzy_search_v1**](docs/MalqueryApi.md#post_mal_query_fuzzy_search_v1)
- **POST**: /malquery/combined/fuzzy-search/v1
- **Description**: Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.

---

**Class**: `Falcon::MalqueryApi`

- **Operation**: [**post_mal_query_hunt_v1**](docs/MalqueryApi.md#post_mal_query_hunt_v1)
- **POST**: /malquery/queries/hunt/v1
- **Description**: Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**aggregate_cases**](docs/MessageCenterApi.md#aggregate_cases)
- **POST**: /message-center/aggregates/cases/GET/v1
- **Description**: Retrieve aggregate case values based on the matched filter

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**case_add_activity**](docs/MessageCenterApi.md#case_add_activity)
- **POST**: /message-center/entities/case-activity/v1
- **Description**: Add an activity to case. Only activities of type comment are allowed via API

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**case_add_attachment**](docs/MessageCenterApi.md#case_add_attachment)
- **POST**: /message-center/entities/case-attachment/v1
- **Description**: Upload an attachment for the case.

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**case_download_attachment**](docs/MessageCenterApi.md#case_download_attachment)
- **GET**: /message-center/entities/case-attachment/v1
- **Description**: retrieves an attachment for the case, given the attachment id

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**create_case**](docs/MessageCenterApi.md#create_case)
- **POST**: /message-center/entities/case/v1
- **Description**: create a new case

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**create_case_v2**](docs/MessageCenterApi.md#create_case_v2)
- **POST**: /message-center/entities/case/v2
- **Description**: create a new case

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**get_case_activity_by_ids**](docs/MessageCenterApi.md#get_case_activity_by_ids)
- **POST**: /message-center/entities/case-activities/GET/v1
- **Description**: Retrieve activities for given id&#39;s

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**get_case_entities_by_ids**](docs/MessageCenterApi.md#get_case_entities_by_ids)
- **POST**: /message-center/entities/cases/GET/v1
- **Description**: Retrieve message center cases

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**query_activity_by_case_id**](docs/MessageCenterApi.md#query_activity_by_case_id)
- **GET**: /message-center/queries/case-activities/v1
- **Description**: Retrieve activities id&#39;s for a case

---

**Class**: `Falcon::MessageCenterApi`

- **Operation**: [**query_cases_ids_by_filter**](docs/MessageCenterApi.md#query_cases_ids_by_filter)
- **GET**: /message-center/queries/cases/v1
- **Description**: Retrieve case id&#39;s that match the provided filter criteria

---

**Class**: `Falcon::MlExclusionsApi`

- **Operation**: [**create_ml_exclusions_v1**](docs/MlExclusionsApi.md#create_ml_exclusions_v1)
- **POST**: /policy/entities/ml-exclusions/v1
- **Description**: Create the ML exclusions

---

**Class**: `Falcon::MlExclusionsApi`

- **Operation**: [**delete_ml_exclusions_v1**](docs/MlExclusionsApi.md#delete_ml_exclusions_v1)
- **DELETE**: /policy/entities/ml-exclusions/v1
- **Description**: Delete the ML exclusions by id

---

**Class**: `Falcon::MlExclusionsApi`

- **Operation**: [**get_ml_exclusions_v1**](docs/MlExclusionsApi.md#get_ml_exclusions_v1)
- **GET**: /policy/entities/ml-exclusions/v1
- **Description**: Get a set of ML Exclusions by specifying their IDs

---

**Class**: `Falcon::MlExclusionsApi`

- **Operation**: [**query_ml_exclusions_v1**](docs/MlExclusionsApi.md#query_ml_exclusions_v1)
- **GET**: /policy/queries/ml-exclusions/v1
- **Description**: Search for ML exclusions.

---

**Class**: `Falcon::MlExclusionsApi`

- **Operation**: [**update_ml_exclusions_v1**](docs/MlExclusionsApi.md#update_ml_exclusions_v1)
- **PATCH**: /policy/entities/ml-exclusions/v1
- **Description**: Update the ML exclusions

---

**Class**: `Falcon::MobileEnrollmentApi`

- **Operation**: [**request_device_enrollment_v3**](docs/MobileEnrollmentApi.md#request_device_enrollment_v3)
- **POST**: /enrollments/entities/details/v3
- **Description**: Trigger on-boarding process for a mobile device

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**add_cid_group_members**](docs/MsspApi.md#add_cid_group_members)
- **POST**: /mssp/entities/cid-group-members/v1
- **Description**: Add new CID group member.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**add_role**](docs/MsspApi.md#add_role)
- **POST**: /mssp/entities/mssp-roles/v1
- **Description**: Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. 

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**add_user_group_members**](docs/MsspApi.md#add_user_group_members)
- **POST**: /mssp/entities/user-group-members/v1
- **Description**: Add new user group member. Maximum 500 members allowed per user group.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**create_cid_groups**](docs/MsspApi.md#create_cid_groups)
- **POST**: /mssp/entities/cid-groups/v1
- **Description**: Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**create_user_groups**](docs/MsspApi.md#create_user_groups)
- **POST**: /mssp/entities/user-groups/v1
- **Description**: Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**delete_cid_group_members**](docs/MsspApi.md#delete_cid_group_members)
- **DELETE**: /mssp/entities/cid-group-members/v1
- **Description**: Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**delete_cid_group_members_v2**](docs/MsspApi.md#delete_cid_group_members_v2)
- **DELETE**: /mssp/entities/cid-group-members/v2
- **Description**: Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**delete_cid_groups**](docs/MsspApi.md#delete_cid_groups)
- **DELETE**: /mssp/entities/cid-groups/v1
- **Description**: Delete CID groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**delete_user_group_members**](docs/MsspApi.md#delete_user_group_members)
- **DELETE**: /mssp/entities/user-group-members/v1
- **Description**: Delete user group members entry.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**delete_user_groups**](docs/MsspApi.md#delete_user_groups)
- **DELETE**: /mssp/entities/user-groups/v1
- **Description**: Delete user groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**deleted_roles**](docs/MsspApi.md#deleted_roles)
- **DELETE**: /mssp/entities/mssp-roles/v1
- **Description**: Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_children**](docs/MsspApi.md#get_children)
- **GET**: /mssp/entities/children/v1
- **Description**: Get link to child customer by child CID(s)

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_children_v2**](docs/MsspApi.md#get_children_v2)
- **POST**: /mssp/entities/children/GET/v2
- **Description**: Get link to child customer by child CID(s)

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_cid_group_by_id**](docs/MsspApi.md#get_cid_group_by_id)
- **GET**: /mssp/entities/cid-groups/v1
- **Description**: Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_cid_group_by_id_v2**](docs/MsspApi.md#get_cid_group_by_id_v2)
- **GET**: /mssp/entities/cid-groups/v2
- **Description**: Get CID Groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_cid_group_members_by**](docs/MsspApi.md#get_cid_group_members_by)
- **GET**: /mssp/entities/cid-group-members/v1
- **Description**: Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_cid_group_members_by_v2**](docs/MsspApi.md#get_cid_group_members_by_v2)
- **GET**: /mssp/entities/cid-group-members/v2
- **Description**: Get CID group members by CID Group ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_roles_by_id**](docs/MsspApi.md#get_roles_by_id)
- **GET**: /mssp/entities/mssp-roles/v1
- **Description**: Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_user_group_members_by_id**](docs/MsspApi.md#get_user_group_members_by_id)
- **GET**: /mssp/entities/user-group-members/v1
- **Description**: Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_user_group_members_by_idv2**](docs/MsspApi.md#get_user_group_members_by_idv2)
- **GET**: /mssp/entities/user-group-members/v2
- **Description**: Get user group members by user group ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_user_groups_by_id**](docs/MsspApi.md#get_user_groups_by_id)
- **GET**: /mssp/entities/user-groups/v1
- **Description**: Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**get_user_groups_by_idv2**](docs/MsspApi.md#get_user_groups_by_idv2)
- **GET**: /mssp/entities/user-groups/v2
- **Description**: Get user groups by ID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_children**](docs/MsspApi.md#query_children)
- **GET**: /mssp/queries/children/v1
- **Description**: Query for customers linked as children

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_cid_group_members**](docs/MsspApi.md#query_cid_group_members)
- **GET**: /mssp/queries/cid-group-members/v1
- **Description**: Query a CID groups members by associated CID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_cid_groups**](docs/MsspApi.md#query_cid_groups)
- **GET**: /mssp/queries/cid-groups/v1
- **Description**: Query CID groups.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_roles**](docs/MsspApi.md#query_roles)
- **GET**: /mssp/queries/mssp-roles/v1
- **Description**: Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_user_group_members**](docs/MsspApi.md#query_user_group_members)
- **GET**: /mssp/queries/user-group-members/v1
- **Description**: Query user group member by user UUID.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**query_user_groups**](docs/MsspApi.md#query_user_groups)
- **GET**: /mssp/queries/user-groups/v1
- **Description**: Query user groups.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**update_cid_groups**](docs/MsspApi.md#update_cid_groups)
- **PATCH**: /mssp/entities/cid-groups/v1
- **Description**: Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.

---

**Class**: `Falcon::MsspApi`

- **Operation**: [**update_user_groups**](docs/MsspApi.md#update_user_groups)
- **PATCH**: /mssp/entities/user-groups/v1
- **Description**: Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.

---

**Class**: `Falcon::Oauth2Api`

- **Operation**: [**oauth2_access_token**](docs/Oauth2Api.md#oauth2_access_token)
- **POST**: /oauth2/token
- **Description**: Generate an OAuth2 access token

---

**Class**: `Falcon::Oauth2Api`

- **Operation**: [**oauth2_revoke_token**](docs/Oauth2Api.md#oauth2_revoke_token)
- **POST**: /oauth2/revoke
- **Description**: Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**aggregate_query_scan_host_metadata**](docs/OdsApi.md#aggregate_query_scan_host_metadata)
- **POST**: /ods/aggregates/scan-hosts/v1
- **Description**: Get aggregates on ODS scan-hosts data.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**aggregate_scans**](docs/OdsApi.md#aggregate_scans)
- **POST**: /ods/aggregates/scans/v1
- **Description**: Get aggregates on ODS scan data.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**aggregate_scheduled_scans**](docs/OdsApi.md#aggregate_scheduled_scans)
- **POST**: /ods/aggregates/scheduled-scans/v1
- **Description**: Get aggregates on ODS scheduled-scan data.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**cancel_scans**](docs/OdsApi.md#cancel_scans)
- **POST**: /ods/entities/scan-control-actions/cancel/v1
- **Description**: Cancel ODS scans for the given scan ids.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**create_scan**](docs/OdsApi.md#create_scan)
- **POST**: /ods/entities/scans/v1
- **Description**: Create ODS scan and start or schedule scan for the given scan request.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**delete_scheduled_scans**](docs/OdsApi.md#delete_scheduled_scans)
- **DELETE**: /ods/entities/scheduled-scans/v1
- **Description**: Delete ODS scheduled-scans for the given scheduled-scan ids.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**get_malicious_files_by_ids**](docs/OdsApi.md#get_malicious_files_by_ids)
- **GET**: /ods/entities/malicious-files/v1
- **Description**: Get malicious files by ids.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**get_scan_host_metadata_by_ids**](docs/OdsApi.md#get_scan_host_metadata_by_ids)
- **GET**: /ods/entities/scan-hosts/v1
- **Description**: Get scan hosts by ids.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**get_scans_by_scan_ids**](docs/OdsApi.md#get_scans_by_scan_ids)
- **GET**: /ods/entities/scans/v1
- **Description**: Get Scans by IDs.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**get_scans_by_scan_ids_v2**](docs/OdsApi.md#get_scans_by_scan_ids_v2)
- **GET**: /ods/entities/scans/v2
- **Description**: Get Scans by IDs.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**get_scheduled_scans_by_scan_ids**](docs/OdsApi.md#get_scheduled_scans_by_scan_ids)
- **GET**: /ods/entities/scheduled-scans/v1
- **Description**: Get ScheduledScans by IDs.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**query_malicious_files**](docs/OdsApi.md#query_malicious_files)
- **GET**: /ods/queries/malicious-files/v1
- **Description**: Query malicious files.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**query_scan_host_metadata**](docs/OdsApi.md#query_scan_host_metadata)
- **GET**: /ods/queries/scan-hosts/v1
- **Description**: Query scan hosts.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**query_scans**](docs/OdsApi.md#query_scans)
- **GET**: /ods/queries/scans/v1
- **Description**: Query Scans.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**query_scheduled_scans**](docs/OdsApi.md#query_scheduled_scans)
- **GET**: /ods/queries/scheduled-scans/v1
- **Description**: Query ScheduledScans.

---

**Class**: `Falcon::OdsApi`

- **Operation**: [**schedule_scan**](docs/OdsApi.md#schedule_scan)
- **POST**: /ods/entities/scheduled-scans/v1
- **Description**: Create ODS scan and start or schedule scan for the given scan request.

---

**Class**: `Falcon::OverwatchDashboardApi`

- **Operation**: [**aggregates_detections_global_counts**](docs/OverwatchDashboardApi.md#aggregates_detections_global_counts)
- **GET**: /overwatch-dashboards/aggregates/detections-global-counts/v1
- **Description**: Get the total number of detections pushed across all customers

---

**Class**: `Falcon::OverwatchDashboardApi`

- **Operation**: [**aggregates_events**](docs/OverwatchDashboardApi.md#aggregates_events)
- **POST**: /overwatch-dashboards/aggregates/events/GET/v1
- **Description**: Get aggregate OverWatch detection event info by providing an aggregate query

---

**Class**: `Falcon::OverwatchDashboardApi`

- **Operation**: [**aggregates_events_collections**](docs/OverwatchDashboardApi.md#aggregates_events_collections)
- **POST**: /overwatch-dashboards/aggregates/events-collections/GET/v1
- **Description**: Get OverWatch detection event collection info by providing an aggregate query

---

**Class**: `Falcon::OverwatchDashboardApi`

- **Operation**: [**aggregates_incidents_global_counts**](docs/OverwatchDashboardApi.md#aggregates_incidents_global_counts)
- **GET**: /overwatch-dashboards/aggregates/incidents-global-counts/v1
- **Description**: Get the total number of incidents pushed across all customers

---

**Class**: `Falcon::OverwatchDashboardApi`

- **Operation**: [**aggregates_ow_events_global_counts**](docs/OverwatchDashboardApi.md#aggregates_ow_events_global_counts)
- **GET**: /overwatch-dashboards/aggregates/ow-events-global-counts/v1
- **Description**: Get the total number of OverWatch events across all customers

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**create_prevention_policies**](docs/PreventionPoliciesApi.md#create_prevention_policies)
- **POST**: /policy/entities/prevention/v1
- **Description**: Create Prevention Policies by specifying details about the policy to create

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**delete_prevention_policies**](docs/PreventionPoliciesApi.md#delete_prevention_policies)
- **DELETE**: /policy/entities/prevention/v1
- **Description**: Delete a set of Prevention Policies by specifying their IDs

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**get_prevention_policies**](docs/PreventionPoliciesApi.md#get_prevention_policies)
- **GET**: /policy/entities/prevention/v1
- **Description**: Retrieve a set of Prevention Policies by specifying their IDs

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**perform_prevention_policies_action**](docs/PreventionPoliciesApi.md#perform_prevention_policies_action)
- **POST**: /policy/entities/prevention-actions/v1
- **Description**: Perform the specified action on the Prevention Policies specified in the request

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**query_combined_prevention_policies**](docs/PreventionPoliciesApi.md#query_combined_prevention_policies)
- **GET**: /policy/combined/prevention/v1
- **Description**: Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**query_combined_prevention_policy_members**](docs/PreventionPoliciesApi.md#query_combined_prevention_policy_members)
- **GET**: /policy/combined/prevention-members/v1
- **Description**: Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**query_prevention_policies**](docs/PreventionPoliciesApi.md#query_prevention_policies)
- **GET**: /policy/queries/prevention/v1
- **Description**: Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**query_prevention_policy_members**](docs/PreventionPoliciesApi.md#query_prevention_policy_members)
- **GET**: /policy/queries/prevention-members/v1
- **Description**: Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**set_prevention_policies_precedence**](docs/PreventionPoliciesApi.md#set_prevention_policies_precedence)
- **POST**: /policy/entities/prevention-precedence/v1
- **Description**: Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::PreventionPoliciesApi`

- **Operation**: [**update_prevention_policies**](docs/PreventionPoliciesApi.md#update_prevention_policies)
- **PATCH**: /policy/entities/prevention/v1
- **Description**: Update Prevention Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::ProvisionApi`

- **Operation**: [**get_credentials_mixin0**](docs/ProvisionApi.md#get_credentials_mixin0)
- **GET**: /snapshots/entities/image-registry-credentials/v1
- **Description**: Gets the registry credentials

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**action_update_count**](docs/QuarantineApi.md#action_update_count)
- **GET**: /quarantine/aggregates/action-update-count/v1
- **Description**: Returns count of potentially affected quarantined files for each action.

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**get_aggregate_files**](docs/QuarantineApi.md#get_aggregate_files)
- **POST**: /quarantine/aggregates/quarantined-files/GET/v1
- **Description**: Get quarantine file aggregates as specified via json in request body.

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**get_quarantine_files**](docs/QuarantineApi.md#get_quarantine_files)
- **POST**: /quarantine/entities/quarantined-files/GET/v1
- **Description**: Get quarantine file metadata for specified ids.

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**query_quarantine_files**](docs/QuarantineApi.md#query_quarantine_files)
- **GET**: /quarantine/queries/quarantined-files/v1
- **Description**: Get quarantine file ids that match the provided filter criteria.

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**update_qf_by_query**](docs/QuarantineApi.md#update_qf_by_query)
- **PATCH**: /quarantine/queries/quarantined-files/v1
- **Description**: Apply quarantine file actions by query.

---

**Class**: `Falcon::QuarantineApi`

- **Operation**: [**update_quarantined_detects_by_ids**](docs/QuarantineApi.md#update_quarantined_detects_by_ids)
- **PATCH**: /quarantine/entities/quarantined-files/v1
- **Description**: Apply action by quarantine file ids

---

**Class**: `Falcon::QuickScanApi`

- **Operation**: [**get_scans**](docs/QuickScanApi.md#get_scans)
- **GET**: /scanner/entities/scans/v1
- **Description**: Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

---

**Class**: `Falcon::QuickScanApi`

- **Operation**: [**get_scans_aggregates**](docs/QuickScanApi.md#get_scans_aggregates)
- **POST**: /scanner/aggregates/scans/GET/v1
- **Description**: Get scans aggregations as specified via json in request body.

---

**Class**: `Falcon::QuickScanApi`

- **Operation**: [**query_submissions_mixin0**](docs/QuickScanApi.md#query_submissions_mixin0)
- **GET**: /scanner/queries/scans/v1
- **Description**: Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.

---

**Class**: `Falcon::QuickScanApi`

- **Operation**: [**scan_samples**](docs/QuickScanApi.md#scan_samples)
- **POST**: /scanner/entities/scans/v1
- **Description**: Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_active_responder_cmd**](docs/RealTimeResponseApi.md#batch_active_responder_cmd)
- **POST**: /real-time-response/combined/batch-active-responder-command/v1
- **Description**: Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_cmd**](docs/RealTimeResponseApi.md#batch_cmd)
- **POST**: /real-time-response/combined/batch-command/v1
- **Description**: Batch executes a RTR read-only command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_get_cmd**](docs/RealTimeResponseApi.md#batch_get_cmd)
- **POST**: /real-time-response/combined/batch-get-command/v1
- **Description**: Batch executes &#x60;get&#x60; command across hosts to retrieve files. After this call is made &#x60;GET /real-time-response/combined/batch-get-command/v1&#x60; is used to query for the results.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_get_cmd_status**](docs/RealTimeResponseApi.md#batch_get_cmd_status)
- **GET**: /real-time-response/combined/batch-get-command/v1
- **Description**: Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_init_sessions**](docs/RealTimeResponseApi.md#batch_init_sessions)
- **POST**: /real-time-response/combined/batch-init-session/v1
- **Description**: Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**batch_refresh_sessions**](docs/RealTimeResponseApi.md#batch_refresh_sessions)
- **POST**: /real-time-response/combined/batch-refresh-session/v1
- **Description**: Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_aggregate_sessions**](docs/RealTimeResponseApi.md#r_tr_aggregate_sessions)
- **POST**: /real-time-response/aggregates/sessions/GET/v1
- **Description**: Get aggregates on session data.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_check_active_responder_command_status**](docs/RealTimeResponseApi.md#r_tr_check_active_responder_command_status)
- **GET**: /real-time-response/entities/active-responder-command/v1
- **Description**: Get status of an executed active-responder command on a single host.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_check_command_status**](docs/RealTimeResponseApi.md#r_tr_check_command_status)
- **GET**: /real-time-response/entities/command/v1
- **Description**: Get status of an executed command on a single host.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_delete_file**](docs/RealTimeResponseApi.md#r_tr_delete_file)
- **DELETE**: /real-time-response/entities/file/v1
- **Description**: Delete a RTR session file.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_delete_file_v2**](docs/RealTimeResponseApi.md#r_tr_delete_file_v2)
- **DELETE**: /real-time-response/entities/file/v2
- **Description**: Delete a RTR session file.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_delete_queued_session**](docs/RealTimeResponseApi.md#r_tr_delete_queued_session)
- **DELETE**: /real-time-response/entities/queued-sessions/command/v1
- **Description**: Delete a queued session command

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_delete_session**](docs/RealTimeResponseApi.md#r_tr_delete_session)
- **DELETE**: /real-time-response/entities/sessions/v1
- **Description**: Delete a session.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_execute_active_responder_command**](docs/RealTimeResponseApi.md#r_tr_execute_active_responder_command)
- **POST**: /real-time-response/entities/active-responder-command/v1
- **Description**: Execute an active responder command on a single host.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_execute_command**](docs/RealTimeResponseApi.md#r_tr_execute_command)
- **POST**: /real-time-response/entities/command/v1
- **Description**: Execute a command on a single host.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_get_extracted_file_contents**](docs/RealTimeResponseApi.md#r_tr_get_extracted_file_contents)
- **GET**: /real-time-response/entities/extracted-file-contents/v1
- **Description**: Get RTR extracted file contents for specified session and sha256.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_init_session**](docs/RealTimeResponseApi.md#r_tr_init_session)
- **POST**: /real-time-response/entities/sessions/v1
- **Description**: Initialize a new session with the RTR cloud.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_list_all_sessions**](docs/RealTimeResponseApi.md#r_tr_list_all_sessions)
- **GET**: /real-time-response/queries/sessions/v1
- **Description**: Get a list of session_ids.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_list_files**](docs/RealTimeResponseApi.md#r_tr_list_files)
- **GET**: /real-time-response/entities/file/v1
- **Description**: Get a list of files for the specified RTR session.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_list_files_v2**](docs/RealTimeResponseApi.md#r_tr_list_files_v2)
- **GET**: /real-time-response/entities/file/v2
- **Description**: Get a list of files for the specified RTR session.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_list_queued_sessions**](docs/RealTimeResponseApi.md#r_tr_list_queued_sessions)
- **POST**: /real-time-response/entities/queued-sessions/GET/v1
- **Description**: Get queued session metadata by session ID.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_list_sessions**](docs/RealTimeResponseApi.md#r_tr_list_sessions)
- **POST**: /real-time-response/entities/sessions/GET/v1
- **Description**: Get session metadata by session id.

---

**Class**: `Falcon::RealTimeResponseApi`

- **Operation**: [**r_tr_pulse_session**](docs/RealTimeResponseApi.md#r_tr_pulse_session)
- **POST**: /real-time-response/entities/refresh-session/v1
- **Description**: Refresh a session timeout on a single host.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**batch_admin_cmd**](docs/RealTimeResponseAdminApi.md#batch_admin_cmd)
- **POST**: /real-time-response/combined/batch-admin-command/v1
- **Description**: Batch executes a RTR administrator command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_check_admin_command_status**](docs/RealTimeResponseAdminApi.md#r_tr_check_admin_command_status)
- **GET**: /real-time-response/entities/admin-command/v1
- **Description**: Get status of an executed RTR administrator command on a single host.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_create_put_files**](docs/RealTimeResponseAdminApi.md#r_tr_create_put_files)
- **POST**: /real-time-response/entities/put-files/v1
- **Description**: Upload a new put-file to use for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_create_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_create_scripts)
- **POST**: /real-time-response/entities/scripts/v1
- **Description**: Upload a new custom-script to use for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_delete_put_files**](docs/RealTimeResponseAdminApi.md#r_tr_delete_put_files)
- **DELETE**: /real-time-response/entities/put-files/v1
- **Description**: Delete a put-file based on the ID given.  Can only delete one file at a time.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_delete_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_delete_scripts)
- **DELETE**: /real-time-response/entities/scripts/v1
- **Description**: Delete a custom-script based on the ID given.  Can only delete one script at a time.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_execute_admin_command**](docs/RealTimeResponseAdminApi.md#r_tr_execute_admin_command)
- **POST**: /real-time-response/entities/admin-command/v1
- **Description**: Execute a RTR administrator command on a single host.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_get_falcon_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_get_falcon_scripts)
- **GET**: /real-time-response/entities/falcon-scripts/v1
- **Description**: Get Falcon scripts with metadata and content of script

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_get_put_files**](docs/RealTimeResponseAdminApi.md#r_tr_get_put_files)
- **GET**: /real-time-response/entities/put-files/v1
- **Description**: Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_get_put_files_v2**](docs/RealTimeResponseAdminApi.md#r_tr_get_put_files_v2)
- **GET**: /real-time-response/entities/put-files/v2
- **Description**: Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_get_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_get_scripts)
- **GET**: /real-time-response/entities/scripts/v1
- **Description**: Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_get_scripts_v2**](docs/RealTimeResponseAdminApi.md#r_tr_get_scripts_v2)
- **GET**: /real-time-response/entities/scripts/v2
- **Description**: Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_list_falcon_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_list_falcon_scripts)
- **GET**: /real-time-response/queries/falcon-scripts/v1
- **Description**: Get a list of Falcon script IDs available to the user to run

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_list_put_files**](docs/RealTimeResponseAdminApi.md#r_tr_list_put_files)
- **GET**: /real-time-response/queries/put-files/v1
- **Description**: Get a list of put-file ID&#39;s that are available to the user for the &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_list_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_list_scripts)
- **GET**: /real-time-response/queries/scripts/v1
- **Description**: Get a list of custom-script ID&#39;s that are available to the user for the &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdminApi`

- **Operation**: [**r_tr_update_scripts**](docs/RealTimeResponseAdminApi.md#r_tr_update_scripts)
- **PATCH**: /real-time-response/entities/scripts/v1
- **Description**: Upload a new scripts to replace an existing one.

---

**Class**: `Falcon::RealTimeResponseAuditApi`

- **Operation**: [**r_tr_audit_sessions**](docs/RealTimeResponseAuditApi.md#r_tr_audit_sessions)
- **GET**: /real-time-response-audit/combined/sessions/v1
- **Description**: Get all the RTR sessions created for a customer in a specified duration

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**aggregate_notifications_exposed_data_records_v1**](docs/ReconApi.md#aggregate_notifications_exposed_data_records_v1)
- **POST**: /recon/aggregates/notifications-exposed-data-records/GET/v1
- **Description**: Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name credential_status bot.operating_system.hardware_id bot.bot_id]

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**aggregate_notifications_v1**](docs/ReconApi.md#aggregate_notifications_v1)
- **POST**: /recon/aggregates/notifications/GET/v1
- **Description**: Get notification aggregates as specified via JSON in request body.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**create_actions_v1**](docs/ReconApi.md#create_actions_v1)
- **POST**: /recon/entities/actions/v1
- **Description**: Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**create_export_jobs_v1**](docs/ReconApi.md#create_export_jobs_v1)
- **POST**: /recon/entities/exports/v1
- **Description**: Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**create_rules_v1**](docs/ReconApi.md#create_rules_v1)
- **POST**: /recon/entities/rules/v1
- **Description**: Create monitoring rules.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**delete_action_v1**](docs/ReconApi.md#delete_action_v1)
- **DELETE**: /recon/entities/actions/v1
- **Description**: Delete an action from a monitoring rule based on the action ID.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**delete_export_jobs_v1**](docs/ReconApi.md#delete_export_jobs_v1)
- **DELETE**: /recon/entities/exports/v1
- **Description**: Delete export jobs (and their associated file(s)) based on their IDs.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**delete_notifications_v1**](docs/ReconApi.md#delete_notifications_v1)
- **DELETE**: /recon/entities/notifications/v1
- **Description**: Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**delete_rules_v1**](docs/ReconApi.md#delete_rules_v1)
- **DELETE**: /recon/entities/rules/v1
- **Description**: Delete monitoring rules.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_actions_v1**](docs/ReconApi.md#get_actions_v1)
- **GET**: /recon/entities/actions/v1
- **Description**: Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_export_jobs_v1**](docs/ReconApi.md#get_export_jobs_v1)
- **GET**: /recon/entities/exports/v1
- **Description**: Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_file_content_for_export_jobs_v1**](docs/ReconApi.md#get_file_content_for_export_jobs_v1)
- **GET**: /recon/entities/export-files/v1
- **Description**: Download the file associated with a job ID.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_notifications_detailed_translated_v1**](docs/ReconApi.md#get_notifications_detailed_translated_v1)
- **GET**: /recon/entities/notifications-detailed-translated/v1
- **Description**: Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.This endpoint will return translated notification content. The only target language available is English. A single notification can be translated per request

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_notifications_detailed_v1**](docs/ReconApi.md#get_notifications_detailed_v1)
- **GET**: /recon/entities/notifications-detailed/v1
- **Description**: Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_notifications_exposed_data_records_v1**](docs/ReconApi.md#get_notifications_exposed_data_records_v1)
- **GET**: /recon/entities/notifications-exposed-data-records/v1
- **Description**: Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_notifications_translated_v1**](docs/ReconApi.md#get_notifications_translated_v1)
- **GET**: /recon/entities/notifications-translated/v1
- **Description**: Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_notifications_v1**](docs/ReconApi.md#get_notifications_v1)
- **GET**: /recon/entities/notifications/v1
- **Description**: Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**get_rules_v1**](docs/ReconApi.md#get_rules_v1)
- **GET**: /recon/entities/rules/v1
- **Description**: Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**preview_rule_v1**](docs/ReconApi.md#preview_rule_v1)
- **POST**: /recon/aggregates/rules-preview/GET/v1
- **Description**: Preview rules notification count and distribution. This will return aggregations on: channel, count, site.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**query_actions_v1**](docs/ReconApi.md#query_actions_v1)
- **GET**: /recon/queries/actions/v1
- **Description**: Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**query_notifications_exposed_data_records_v1**](docs/ReconApi.md#query_notifications_exposed_data_records_v1)
- **GET**: /recon/queries/notifications-exposed-data-records/v1
- **Description**: Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**query_notifications_v1**](docs/ReconApi.md#query_notifications_v1)
- **GET**: /recon/queries/notifications/v1
- **Description**: Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**query_rules_v1**](docs/ReconApi.md#query_rules_v1)
- **GET**: /recon/queries/rules/v1
- **Description**: Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**update_action_v1**](docs/ReconApi.md#update_action_v1)
- **PATCH**: /recon/entities/actions/v1
- **Description**: Update an action for a monitoring rule.

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**update_notifications_v1**](docs/ReconApi.md#update_notifications_v1)
- **PATCH**: /recon/entities/notifications/v1
- **Description**: Update notification status or assignee. Accepts bulk requests

---

**Class**: `Falcon::ReconApi`

- **Operation**: [**update_rules_v1**](docs/ReconApi.md#update_rules_v1)
- **PATCH**: /recon/entities/rules/v1
- **Description**: Update monitoring rules.

---

**Class**: `Falcon::ReportExecutionsApi`

- **Operation**: [**report_executions_download_get**](docs/ReportExecutionsApi.md#report_executions_download_get)
- **GET**: /reports/entities/report-executions-download/v1
- **Description**: Get report entity download

---

**Class**: `Falcon::ReportExecutionsApi`

- **Operation**: [**report_executions_get**](docs/ReportExecutionsApi.md#report_executions_get)
- **GET**: /reports/entities/report-executions/v1
- **Description**: Retrieve report details for the provided report IDs.

---

**Class**: `Falcon::ReportExecutionsApi`

- **Operation**: [**report_executions_query**](docs/ReportExecutionsApi.md#report_executions_query)
- **GET**: /reports/queries/report-executions/v1
- **Description**: Find all report execution IDs matching the query with filter

---

**Class**: `Falcon::ReportExecutionsApi`

- **Operation**: [**report_executions_retry**](docs/ReportExecutionsApi.md#report_executions_retry)
- **POST**: /reports/entities/report-executions-retry/v1
- **Description**: This endpoint will be used to retry report executions

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**create_rt_response_policies**](docs/ResponsePoliciesApi.md#create_rt_response_policies)
- **POST**: /policy/entities/response/v1
- **Description**: Create Response Policies by specifying details about the policy to create

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**delete_rt_response_policies**](docs/ResponsePoliciesApi.md#delete_rt_response_policies)
- **DELETE**: /policy/entities/response/v1
- **Description**: Delete a set of Response Policies by specifying their IDs

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**get_rt_response_policies**](docs/ResponsePoliciesApi.md#get_rt_response_policies)
- **GET**: /policy/entities/response/v1
- **Description**: Retrieve a set of Response Policies by specifying their IDs

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**perform_rt_response_policies_action**](docs/ResponsePoliciesApi.md#perform_rt_response_policies_action)
- **POST**: /policy/entities/response-actions/v1
- **Description**: Perform the specified action on the Response Policies specified in the request

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**query_combined_rt_response_policies**](docs/ResponsePoliciesApi.md#query_combined_rt_response_policies)
- **GET**: /policy/combined/response/v1
- **Description**: Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**query_combined_rt_response_policy_members**](docs/ResponsePoliciesApi.md#query_combined_rt_response_policy_members)
- **GET**: /policy/combined/response-members/v1
- **Description**: Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**query_rt_response_policies**](docs/ResponsePoliciesApi.md#query_rt_response_policies)
- **GET**: /policy/queries/response/v1
- **Description**: Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**query_rt_response_policy_members**](docs/ResponsePoliciesApi.md#query_rt_response_policy_members)
- **GET**: /policy/queries/response-members/v1
- **Description**: Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**set_rt_response_policies_precedence**](docs/ResponsePoliciesApi.md#set_rt_response_policies_precedence)
- **POST**: /policy/entities/response-precedence/v1
- **Description**: Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::ResponsePoliciesApi`

- **Operation**: [**update_rt_response_policies**](docs/ResponsePoliciesApi.md#update_rt_response_policies)
- **PATCH**: /policy/entities/response/v1
- **Description**: Update Response Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::RuntimeDetectionsApi`

- **Operation**: [**get_runtime_detections_combined_v2**](docs/RuntimeDetectionsApi.md#get_runtime_detections_combined_v2)
- **GET**: /container-security/combined/runtime-detections/v2
- **Description**: Retrieve container runtime detections by the provided search criteria

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**archive_delete_v1**](docs/SampleUploadsApi.md#archive_delete_v1)
- **DELETE**: /archives/entities/archives/v1
- **Description**: Delete an archive that was uploaded previously

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**archive_get_v1**](docs/SampleUploadsApi.md#archive_get_v1)
- **GET**: /archives/entities/archives/v1
- **Description**: Retrieves the archives upload operation statuses. Status &#x60;done&#x60; means that archive was processed successfully. Status &#x60;error&#x60; means that archive was not processed successfully.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**archive_list_v1**](docs/SampleUploadsApi.md#archive_list_v1)
- **GET**: /archives/entities/archive-files/v1
- **Description**: Retrieves the archives files in chunks.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**archive_upload_v1**](docs/SampleUploadsApi.md#archive_upload_v1)
- **POST**: /archives/entities/archives/v1
- **Description**: Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of &#x60;/archives/entities/archives/v2&#x60;

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**archive_upload_v2**](docs/SampleUploadsApi.md#archive_upload_v2)
- **POST**: /archives/entities/archives/v2
- **Description**: Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**delete_sample_v3**](docs/SampleUploadsApi.md#delete_sample_v3)
- **DELETE**: /samples/entities/samples/v3
- **Description**: Removes a sample, including file, meta and submissions from the collection

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**extraction_create_v1**](docs/SampleUploadsApi.md#extraction_create_v1)
- **POST**: /archives/entities/extractions/v1
- **Description**: Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**extraction_get_v1**](docs/SampleUploadsApi.md#extraction_get_v1)
- **GET**: /archives/entities/extractions/v1
- **Description**: Retrieves the files extraction operation statuses. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**extraction_list_v1**](docs/SampleUploadsApi.md#extraction_list_v1)
- **GET**: /archives/entities/extraction-files/v1
- **Description**: Retrieves the files extractions in chunks. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**get_sample_v3**](docs/SampleUploadsApi.md#get_sample_v3)
- **GET**: /samples/entities/samples/v3
- **Description**: Retrieves the file associated with the given ID (SHA256)

---

**Class**: `Falcon::SampleUploadsApi`

- **Operation**: [**upload_sample_v3**](docs/SampleUploadsApi.md#upload_sample_v3)
- **POST**: /samples/entities/samples/v3
- **Description**: Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.

---

**Class**: `Falcon::ScheduledReportsApi`

- **Operation**: [**scheduled_reports_get**](docs/ScheduledReportsApi.md#scheduled_reports_get)
- **GET**: /reports/entities/scheduled-reports/v1
- **Description**: Retrieve scheduled reports for the provided report IDs.

---

**Class**: `Falcon::ScheduledReportsApi`

- **Operation**: [**scheduled_reports_launch**](docs/ScheduledReportsApi.md#scheduled_reports_launch)
- **POST**: /reports/entities/scheduled-reports/execution/v1
- **Description**: Launch scheduled reports executions for the provided report IDs.

---

**Class**: `Falcon::ScheduledReportsApi`

- **Operation**: [**scheduled_reports_query**](docs/ScheduledReportsApi.md#scheduled_reports_query)
- **GET**: /reports/queries/scheduled-reports/v1
- **Description**: Find all report IDs matching the query with filter

---

**Class**: `Falcon::SensorDownloadApi`

- **Operation**: [**download_sensor_installer_by_id**](docs/SensorDownloadApi.md#download_sensor_installer_by_id)
- **GET**: /sensors/entities/download-installer/v1
- **Description**: Download sensor installer by SHA256 ID

---

**Class**: `Falcon::SensorDownloadApi`

- **Operation**: [**get_combined_sensor_installers_by_query**](docs/SensorDownloadApi.md#get_combined_sensor_installers_by_query)
- **GET**: /sensors/combined/installers/v1
- **Description**: Get sensor installer details by provided query

---

**Class**: `Falcon::SensorDownloadApi`

- **Operation**: [**get_sensor_installers_by_query**](docs/SensorDownloadApi.md#get_sensor_installers_by_query)
- **GET**: /sensors/queries/installers/v1
- **Description**: Get sensor installer IDs by provided query

---

**Class**: `Falcon::SensorDownloadApi`

- **Operation**: [**get_sensor_installers_ccidby_query**](docs/SensorDownloadApi.md#get_sensor_installers_ccidby_query)
- **GET**: /sensors/queries/installers/ccid/v1
- **Description**: Get CCID to use with sensor installers

---

**Class**: `Falcon::SensorDownloadApi`

- **Operation**: [**get_sensor_installers_entities**](docs/SensorDownloadApi.md#get_sensor_installers_entities)
- **GET**: /sensors/entities/installers/v1
- **Description**: Get sensor installer details by provided SHA256 IDs

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**create_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#create_sensor_update_policies)
- **POST**: /policy/entities/sensor-update/v1
- **Description**: Create Sensor Update Policies by specifying details about the policy to create

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**create_sensor_update_policies_v2**](docs/SensorUpdatePoliciesApi.md#create_sensor_update_policies_v2)
- **POST**: /policy/entities/sensor-update/v2
- **Description**: Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**delete_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#delete_sensor_update_policies)
- **DELETE**: /policy/entities/sensor-update/v1
- **Description**: Delete a set of Sensor Update Policies by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**get_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#get_sensor_update_policies)
- **GET**: /policy/entities/sensor-update/v1
- **Description**: Retrieve a set of Sensor Update Policies by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**get_sensor_update_policies_v2**](docs/SensorUpdatePoliciesApi.md#get_sensor_update_policies_v2)
- **GET**: /policy/entities/sensor-update/v2
- **Description**: Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**perform_sensor_update_policies_action**](docs/SensorUpdatePoliciesApi.md#perform_sensor_update_policies_action)
- **POST**: /policy/entities/sensor-update-actions/v1
- **Description**: Perform the specified action on the Sensor Update Policies specified in the request

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_combined_sensor_update_builds**](docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_builds)
- **GET**: /policy/combined/sensor-update-builds/v1
- **Description**: Retrieve available builds for use with Sensor Update Policies

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_combined_sensor_update_kernels**](docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_kernels)
- **GET**: /policy/combined/sensor-update-kernels/v1
- **Description**: Retrieve kernel compatibility info for Sensor Update Builds

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_combined_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies)
- **GET**: /policy/combined/sensor-update/v1
- **Description**: Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_combined_sensor_update_policies_v2**](docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policies_v2)
- **GET**: /policy/combined/sensor-update/v2
- **Description**: Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_combined_sensor_update_policy_members**](docs/SensorUpdatePoliciesApi.md#query_combined_sensor_update_policy_members)
- **GET**: /policy/combined/sensor-update-members/v1
- **Description**: Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_sensor_update_kernels_distinct**](docs/SensorUpdatePoliciesApi.md#query_sensor_update_kernels_distinct)
- **GET**: /policy/queries/sensor-update-kernels/{distinct-field}/v1
- **Description**: Retrieve kernel compatibility info for Sensor Update Builds

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#query_sensor_update_policies)
- **GET**: /policy/queries/sensor-update/v1
- **Description**: Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**query_sensor_update_policy_members**](docs/SensorUpdatePoliciesApi.md#query_sensor_update_policy_members)
- **GET**: /policy/queries/sensor-update-members/v1
- **Description**: Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**reveal_uninstall_token**](docs/SensorUpdatePoliciesApi.md#reveal_uninstall_token)
- **POST**: /policy/combined/reveal-uninstall-token/v1
- **Description**: Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value &#39;MAINTENANCE&#39; as the value for &#39;device_id&#39;

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**set_sensor_update_policies_precedence**](docs/SensorUpdatePoliciesApi.md#set_sensor_update_policies_precedence)
- **POST**: /policy/entities/sensor-update-precedence/v1
- **Description**: Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**update_sensor_update_policies**](docs/SensorUpdatePoliciesApi.md#update_sensor_update_policies)
- **PATCH**: /policy/entities/sensor-update/v1
- **Description**: Update Sensor Update Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::SensorUpdatePoliciesApi`

- **Operation**: [**update_sensor_update_policies_v2**](docs/SensorUpdatePoliciesApi.md#update_sensor_update_policies_v2)
- **PATCH**: /policy/entities/sensor-update/v2
- **Description**: Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection

---

**Class**: `Falcon::SensorVisibilityExclusionsApi`

- **Operation**: [**create_sv_exclusions_v1**](docs/SensorVisibilityExclusionsApi.md#create_sv_exclusions_v1)
- **POST**: /policy/entities/sv-exclusions/v1
- **Description**: Create the sensor visibility exclusions

---

**Class**: `Falcon::SensorVisibilityExclusionsApi`

- **Operation**: [**delete_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusionsApi.md#delete_sensor_visibility_exclusions_v1)
- **DELETE**: /policy/entities/sv-exclusions/v1
- **Description**: Delete the sensor visibility exclusions by id

---

**Class**: `Falcon::SensorVisibilityExclusionsApi`

- **Operation**: [**get_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusionsApi.md#get_sensor_visibility_exclusions_v1)
- **GET**: /policy/entities/sv-exclusions/v1
- **Description**: Get a set of Sensor Visibility Exclusions by specifying their IDs

---

**Class**: `Falcon::SensorVisibilityExclusionsApi`

- **Operation**: [**query_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusionsApi.md#query_sensor_visibility_exclusions_v1)
- **GET**: /policy/queries/sv-exclusions/v1
- **Description**: Search for sensor visibility exclusions.

---

**Class**: `Falcon::SensorVisibilityExclusionsApi`

- **Operation**: [**update_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusionsApi.md#update_sensor_visibility_exclusions_v1)
- **PATCH**: /policy/entities/sv-exclusions/v1
- **Description**: Update the sensor visibility exclusions

---

**Class**: `Falcon::SpotlightEvaluationLogicApi`

- **Operation**: [**combined_query_evaluation_logic**](docs/SpotlightEvaluationLogicApi.md#combined_query_evaluation_logic)
- **GET**: /spotlight/combined/evaluation-logic/v1
- **Description**: Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.

---

**Class**: `Falcon::SpotlightEvaluationLogicApi`

- **Operation**: [**get_evaluation_logic**](docs/SpotlightEvaluationLogicApi.md#get_evaluation_logic)
- **GET**: /spotlight/entities/evaluation-logic/v1
- **Description**: Get details on evaluation logic items by providing one or more IDs.

---

**Class**: `Falcon::SpotlightEvaluationLogicApi`

- **Operation**: [**query_evaluation_logic**](docs/SpotlightEvaluationLogicApi.md#query_evaluation_logic)
- **GET**: /spotlight/queries/evaluation-logic/v1
- **Description**: Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.

---

**Class**: `Falcon::SpotlightVulnerabilitiesApi`

- **Operation**: [**combined_query_vulnerabilities**](docs/SpotlightVulnerabilitiesApi.md#combined_query_vulnerabilities)
- **GET**: /spotlight/combined/vulnerabilities/v1
- **Description**: Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria

---

**Class**: `Falcon::SpotlightVulnerabilitiesApi`

- **Operation**: [**get_remediations_v2**](docs/SpotlightVulnerabilitiesApi.md#get_remediations_v2)
- **GET**: /spotlight/entities/remediations/v2
- **Description**: Get details on remediation by providing one or more IDs

---

**Class**: `Falcon::SpotlightVulnerabilitiesApi`

- **Operation**: [**get_vulnerabilities**](docs/SpotlightVulnerabilitiesApi.md#get_vulnerabilities)
- **GET**: /spotlight/entities/vulnerabilities/v2
- **Description**: Get details on vulnerabilities by providing one or more IDs

---

**Class**: `Falcon::SpotlightVulnerabilitiesApi`

- **Operation**: [**query_vulnerabilities**](docs/SpotlightVulnerabilitiesApi.md#query_vulnerabilities)
- **GET**: /spotlight/queries/vulnerabilities/v1
- **Description**: Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria

---

**Class**: `Falcon::TailoredIntelligenceApi`

- **Operation**: [**get_events_body**](docs/TailoredIntelligenceApi.md#get_events_body)
- **GET**: /ti/events/entities/events-full-body/v2
- **Description**: Get event body for the provided event ID

---

**Class**: `Falcon::TailoredIntelligenceApi`

- **Operation**: [**get_events_entities**](docs/TailoredIntelligenceApi.md#get_events_entities)
- **POST**: /ti/events/entities/events/GET/v2
- **Description**: Get events entities for specified ids.

---

**Class**: `Falcon::TailoredIntelligenceApi`

- **Operation**: [**get_rules_entities**](docs/TailoredIntelligenceApi.md#get_rules_entities)
- **POST**: /ti/rules/entities/rules/GET/v2
- **Description**: Get rules entities for specified ids.

---

**Class**: `Falcon::TailoredIntelligenceApi`

- **Operation**: [**query_events**](docs/TailoredIntelligenceApi.md#query_events)
- **GET**: /ti/events/queries/events/v2
- **Description**: Get events ids that match the provided filter criteria.

---

**Class**: `Falcon::TailoredIntelligenceApi`

- **Operation**: [**query_rules**](docs/TailoredIntelligenceApi.md#query_rules)
- **GET**: /ti/rules/queries/rules/v2
- **Description**: Get rules ids that match the provided filter criteria.

---

**Class**: `Falcon::UnidentifiedContainersApi`

- **Operation**: [**read_unidentified_containers_by_date_range_count**](docs/UnidentifiedContainersApi.md#read_unidentified_containers_by_date_range_count)
- **GET**: /container-security/aggregates/unidentified-containers/count-by-date/v1
- **Description**: Returns the count of Unidentified Containers over the last 7 days

---

**Class**: `Falcon::UnidentifiedContainersApi`

- **Operation**: [**read_unidentified_containers_count**](docs/UnidentifiedContainersApi.md#read_unidentified_containers_count)
- **GET**: /container-security/aggregates/unidentified-containers/count/v1
- **Description**: Returns the total count of Unidentified Containers over a time period

---

**Class**: `Falcon::UnidentifiedContainersApi`

- **Operation**: [**search_and_read_unidentified_containers**](docs/UnidentifiedContainersApi.md#search_and_read_unidentified_containers)
- **GET**: /container-security/combined/unidentified-containers/v1
- **Description**: Search Unidentified Containers by the provided search criteria

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**combined_user_roles_v1**](docs/UserManagementApi.md#combined_user_roles_v1)
- **GET**: /user-management/combined/user-roles/v1
- **Description**: Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**create_user**](docs/UserManagementApi.md#create_user)
- **POST**: /users/entities/users/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**create_user_v1**](docs/UserManagementApi.md#create_user_v1)
- **POST**: /user-management/entities/users/v1
- **Description**: Create a new user. After creating a user, assign one or more roles with POST &#39;/user-management/entities/user-role-actions/v1&#39;

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**delete_user**](docs/UserManagementApi.md#delete_user)
- **DELETE**: /users/entities/users/v1
- **Description**: Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**delete_user_v1**](docs/UserManagementApi.md#delete_user_v1)
- **DELETE**: /user-management/entities/users/v1
- **Description**: Delete a user permanently.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**entities_roles_v1**](docs/UserManagementApi.md#entities_roles_v1)
- **GET**: /user-management/entities/roles/v1
- **Description**: Get info about a role

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**get_available_role_ids**](docs/UserManagementApi.md#get_available_role_ids)
- **GET**: /user-roles/queries/user-role-ids-by-cid/v1
- **Description**: Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**get_roles**](docs/UserManagementApi.md#get_roles)
- **GET**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**get_user_role_ids**](docs/UserManagementApi.md#get_user_role_ids)
- **GET**: /user-roles/queries/user-role-ids-by-user-uuid/v1
- **Description**: Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**grant_user_role_ids**](docs/UserManagementApi.md#grant_user_role_ids)
- **POST**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**queries_roles_v1**](docs/UserManagementApi.md#queries_roles_v1)
- **GET**: /user-management/queries/roles/v1
- **Description**: Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/user-management/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**query_user_v1**](docs/UserManagementApi.md#query_user_v1)
- **GET**: /user-management/queries/users/v1
- **Description**: List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/user-management/entities/users/GET/v1&#x60;.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**retrieve_emails_by_cid**](docs/UserManagementApi.md#retrieve_emails_by_cid)
- **GET**: /users/queries/emails-by-cid/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**retrieve_user**](docs/UserManagementApi.md#retrieve_user)
- **GET**: /users/entities/users/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**retrieve_user_uuid**](docs/UserManagementApi.md#retrieve_user_uuid)
- **GET**: /users/queries/user-uuids-by-email/v1
- **Description**: Deprecated : Please use GET /user-management/queries/users/v1. Get a user&#39;s ID by providing a username (usually an email address)

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**retrieve_user_uuids_by_cid**](docs/UserManagementApi.md#retrieve_user_uuids_by_cid)
- **GET**: /users/queries/user-uuids-by-cid/v1
- **Description**: Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/users/entities/user/v1&#x60;.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**retrieve_users_getv1**](docs/UserManagementApi.md#retrieve_users_getv1)
- **POST**: /user-management/entities/users/GET/v1
- **Description**: Get info about users including their name, UID and CID by providing user UUIDs

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**revoke_user_role_ids**](docs/UserManagementApi.md#revoke_user_role_ids)
- **DELETE**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**update_user**](docs/UserManagementApi.md#update_user)
- **PATCH**: /users/entities/users/v1
- **Description**: Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user&#39;s first or last name

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**update_user_v1**](docs/UserManagementApi.md#update_user_v1)
- **PATCH**: /user-management/entities/users/v1
- **Description**: Modify an existing user&#39;s first or last name.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**user_action_v1**](docs/UserManagementApi.md#user_action_v1)
- **POST**: /user-management/entities/user-actions/v1
- **Description**: Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in &#x60;ids&#x60; param as part of request payload.

---

**Class**: `Falcon::UserManagementApi`

- **Operation**: [**user_roles_action_v1**](docs/UserManagementApi.md#user_roles_action_v1)
- **POST**: /user-management/entities/user-role-actions/v1
- **Description**: Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_definitions_combined**](docs/WorkflowsApi.md#workflow_definitions_combined)
- **GET**: /workflows/combined/definitions/v1
- **Description**: Search workflow definitions based on the provided filter

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_definitions_create**](docs/WorkflowsApi.md#workflow_definitions_create)
- **POST**: /workflows/entities/definitions/v1
- **Description**: Creates a workflow definition based on the provided model

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_definitions_export**](docs/WorkflowsApi.md#workflow_definitions_export)
- **GET**: /workflows/entities/definitions/export/v1
- **Description**: Exports a workflow definition for the given definition ID

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_definitions_import**](docs/WorkflowsApi.md#workflow_definitions_import)
- **POST**: /workflows/entities/definitions/import/v1
- **Description**: Imports a workflow definition based on the provided model

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_definitions_update**](docs/WorkflowsApi.md#workflow_definitions_update)
- **PUT**: /workflows/entities/definitions/v1
- **Description**: Updates a workflow definition based on the provided model

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_execute**](docs/WorkflowsApi.md#workflow_execute)
- **POST**: /workflows/entities/execute/v1
- **Description**: Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s)

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_execution_results**](docs/WorkflowsApi.md#workflow_execution_results)
- **GET**: /workflows/entities/execution-results/v1
- **Description**: Get execution result of a given execution

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_executions_action**](docs/WorkflowsApi.md#workflow_executions_action)
- **POST**: /workflows/entities/execution-actions/v1
- **Description**: Allows a user to resume/retry a failed workflow execution.

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_executions_combined**](docs/WorkflowsApi.md#workflow_executions_combined)
- **GET**: /workflows/combined/executions/v1
- **Description**: Search workflow executions based on the provided filter

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_get_human_input_v1**](docs/WorkflowsApi.md#workflow_get_human_input_v1)
- **GET**: /workflows/entities/human-inputs/v1
- **Description**: Gets one or more specific human inputs by their IDs.

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_system_definitions_de_provision**](docs/WorkflowsApi.md#workflow_system_definitions_de_provision)
- **POST**: /workflows/system-definitions/deprovision/v1
- **Description**: Deprovisions a system definition that was previously provisioned on the target CID

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_system_definitions_promote**](docs/WorkflowsApi.md#workflow_system_definitions_promote)
- **POST**: /workflows/system-definitions/promote/v1
- **Description**: Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated.

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_system_definitions_provision**](docs/WorkflowsApi.md#workflow_system_definitions_provision)
- **POST**: /workflows/system-definitions/provision/v1
- **Description**: Provisions a system definition onto the target CID by using the template and provided parameters

---

**Class**: `Falcon::WorkflowsApi`

- **Operation**: [**workflow_update_human_input_v1**](docs/WorkflowsApi.md#workflow_update_human_input_v1)
- **PATCH**: /workflows/entities/human-inputs/v1
- **Description**: Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted.

---

**Class**: `Falcon::ZeroTrustAssessmentApi`

- **Operation**: [**get_assessment_v1**](docs/ZeroTrustAssessmentApi.md#get_assessment_v1)
- **GET**: /zero-trust-assessment/entities/assessments/v1
- **Description**: Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).

---

**Class**: `Falcon::ZeroTrustAssessmentApi`

- **Operation**: [**get_assessments_by_score_v1**](docs/ZeroTrustAssessmentApi.md#get_assessments_by_score_v1)
- **GET**: /zero-trust-assessment/queries/assessments/v1
- **Description**: Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.

---

**Class**: `Falcon::ZeroTrustAssessmentApi`

- **Operation**: [**get_audit_v1**](docs/ZeroTrustAssessmentApi.md#get_audit_v1)
- **GET**: /zero-trust-assessment/entities/audit/v1
- **Description**: Get the Zero Trust Assessment audit report for one customer ID (CID).

---

