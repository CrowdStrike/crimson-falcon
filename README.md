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
    gem 'crimson-falcon', '~> 0.5.0'
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
gem install ./crimson-falcon-0.5.0.gem
```
<!-- x-release-please-end -->
Finally, add this to the Gemfile:
<!-- x-release-please-start-version -->
```ruby
    gem 'crimson-falcon', '~> 0.5.0'
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
api_instance = Falcon::SensorDownload.new

begin
  # Get CCID to use with sensor installers
  result = api_instance.get_sensor_installers_ccidby_query
  p result.resources
rescue Falcon::ApiError => e
  puts "Error when calling SensorDownload->get_sensor_installers_ccidby_query: #{e}"
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

**Class**: `Falcon::ASPM`

- **Operation**: [**create_executor_node**](docs/ASPM.md#create_executor_node)
- **POST**: /aspm-api-gateway/api/v1/executor_nodes
- **Description**: Create a new relay node

---

**Class**: `Falcon::ASPM`

- **Operation**: [**create_integration**](docs/ASPM.md#create_integration)
- **POST**: /aspm-api-gateway/api/v1/integrations
- **Description**: Create a new integration

---

**Class**: `Falcon::ASPM`

- **Operation**: [**create_integration_task**](docs/ASPM.md#create_integration_task)
- **POST**: /aspm-api-gateway/api/v1/integration_tasks
- **Description**: Create new integration task.

---

**Class**: `Falcon::ASPM`

- **Operation**: [**delete_executor_node**](docs/ASPM.md#delete_executor_node)
- **DELETE**: /aspm-api-gateway/api/v1/executor_nodes/{ID}
- **Description**: Delete a relay node

---

**Class**: `Falcon::ASPM`

- **Operation**: [**delete_integration**](docs/ASPM.md#delete_integration)
- **DELETE**: /aspm-api-gateway/api/v1/integrations/{ID}
- **Description**: Delete an existing integration by its ID

---

**Class**: `Falcon::ASPM`

- **Operation**: [**delete_integration_task**](docs/ASPM.md#delete_integration_task)
- **DELETE**: /aspm-api-gateway/api/v1/integration_tasks/{ID}
- **Description**: Delete an existing integration task by its ID

---

**Class**: `Falcon::ASPM`

- **Operation**: [**delete_tags**](docs/ASPM.md#delete_tags)
- **POST**: /aspm-api-gateway/api/v1/tags
- **Description**: Remove existing tags

---

**Class**: `Falcon::ASPM`

- **Operation**: [**execute_query**](docs/ASPM.md#execute_query)
- **POST**: /aspm-api-gateway/api/v1/query
- **Description**: Execute a query. The syntax used is identical to that of the query page.

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_executor_nodes**](docs/ASPM.md#get_executor_nodes)
- **GET**: /aspm-api-gateway/api/v1/executor_nodes
- **Description**: Get all the relay nodes

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_integration_tasks**](docs/ASPM.md#get_integration_tasks)
- **GET**: /aspm-api-gateway/api/v1/integration_tasks
- **Description**: Get all the integration tasks

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_integration_types**](docs/ASPM.md#get_integration_types)
- **GET**: /aspm-api-gateway/api/v1/integration_types
- **Description**: Get all the integration types

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_integrations**](docs/ASPM.md#get_integrations)
- **GET**: /aspm-api-gateway/api/v1/integrations
- **Description**: Get a list of all the integrations

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_service_violation_types**](docs/ASPM.md#get_service_violation_types)
- **GET**: /aspm-api-gateway/api/v1/services/violations/types
- **Description**: Get the different types of violation

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_services_count**](docs/ASPM.md#get_services_count)
- **POST**: /aspm-api-gateway/api/v1/services/count
- **Description**: Get the total amount of existing services

---

**Class**: `Falcon::ASPM`

- **Operation**: [**get_tags**](docs/ASPM.md#get_tags)
- **GET**: /aspm-api-gateway/api/v1/tags
- **Description**: Get all the tags

---

**Class**: `Falcon::ASPM`

- **Operation**: [**run_integration_task**](docs/ASPM.md#run_integration_task)
- **POST**: /aspm-api-gateway/api/v1/integration_tasks/{ID}/run
- **Description**: Run an integration task by its ID

---

**Class**: `Falcon::ASPM`

- **Operation**: [**service_now_get_deployments**](docs/ASPM.md#service_now_get_deployments)
- **GET**: /aspm-api-gateway/api/v1/servicenow/deployments
- **Description**: 

---

**Class**: `Falcon::ASPM`

- **Operation**: [**service_now_get_services**](docs/ASPM.md#service_now_get_services)
- **GET**: /aspm-api-gateway/api/v1/servicenow/services
- **Description**: 

---

**Class**: `Falcon::ASPM`

- **Operation**: [**update_executor_node**](docs/ASPM.md#update_executor_node)
- **PUT**: /aspm-api-gateway/api/v1/executor_nodes
- **Description**: Update an existing relay node

---

**Class**: `Falcon::ASPM`

- **Operation**: [**update_integration**](docs/ASPM.md#update_integration)
- **PUT**: /aspm-api-gateway/api/v1/integrations/{ID}
- **Description**: Update an existing integration by its ID

---

**Class**: `Falcon::ASPM`

- **Operation**: [**update_integration_task**](docs/ASPM.md#update_integration_task)
- **PUT**: /aspm-api-gateway/api/v1/integration_tasks/{ID}
- **Description**: Update an existing integration task by its ID

---

**Class**: `Falcon::ASPM`

- **Operation**: [**upsert_business_applications**](docs/ASPM.md#upsert_business_applications)
- **PUT**: /aspm-api-gateway/api/v1/business_applications
- **Description**: Create or Update Business Applications

---

**Class**: `Falcon::ASPM`

- **Operation**: [**upsert_tags**](docs/ASPM.md#upsert_tags)
- **PUT**: /aspm-api-gateway/api/v1/tags
- **Description**: Create new or update existing tag. You can update unique tags table or regular tags table

---

**Class**: `Falcon::Alerts`

- **Operation**: [**get_queries_alerts_v1**](docs/Alerts.md#get_queries_alerts_v1)
- **GET**: /alerts/queries/alerts/v1
- **Description**: Deprecated: please use version v2 of this endpoint. Retrieves all Alerts ids that match a given query.

---

**Class**: `Falcon::Alerts`

- **Operation**: [**get_queries_alerts_v2**](docs/Alerts.md#get_queries_alerts_v2)
- **GET**: /alerts/queries/alerts/v2
- **Description**: Retrieves all Alerts ids that match a given query.

---

**Class**: `Falcon::Alerts`

- **Operation**: [**patch_entities_alerts_v2**](docs/Alerts.md#patch_entities_alerts_v2)
- **PATCH**: /alerts/entities/alerts/v2
- **Description**: Deprecated: Please use version v3 of this endpoint. Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

---

**Class**: `Falcon::Alerts`

- **Operation**: [**patch_entities_alerts_v3**](docs/Alerts.md#patch_entities_alerts_v3)
- **PATCH**: /alerts/entities/alerts/v3
- **Description**: Perform actions on Alerts identified by composite ID(s) in request. Each action has a name and a description which describes what the action does. If a request adds and removes tag in a single request, the order of processing would be to remove tags before adding new ones in.  

---

**Class**: `Falcon::Alerts`

- **Operation**: [**post_aggregates_alerts_v1**](docs/Alerts.md#post_aggregates_alerts_v1)
- **POST**: /alerts/aggregates/alerts/v1
- **Description**: Deprecated: Please use version v2 of this endpoint. Retrieves aggregate values for Alerts across all CIDs.

---

**Class**: `Falcon::Alerts`

- **Operation**: [**post_aggregates_alerts_v2**](docs/Alerts.md#post_aggregates_alerts_v2)
- **POST**: /alerts/aggregates/alerts/v2
- **Description**: Retrieves aggregate values for Alerts across all CIDs.

---

**Class**: `Falcon::Alerts`

- **Operation**: [**post_entities_alerts_v1**](docs/Alerts.md#post_entities_alerts_v1)
- **POST**: /alerts/entities/alerts/v1
- **Description**: Deprecated: please use version v2 of this endpoint. Retrieves all Alerts given their ids.

---

**Class**: `Falcon::Alerts`

- **Operation**: [**post_entities_alerts_v2**](docs/Alerts.md#post_entities_alerts_v2)
- **POST**: /alerts/entities/alerts/v2
- **Description**: Retrieves all Alerts given their composite ids.

---

**Class**: `Falcon::ApiIntegrations`

- **Operation**: [**execute_command**](docs/ApiIntegrations.md#execute_command)
- **POST**: /plugins/entities/execute/v1
- **Description**: Execute a command.

---

**Class**: `Falcon::ApiIntegrations`

- **Operation**: [**execute_command_proxy**](docs/ApiIntegrations.md#execute_command_proxy)
- **POST**: /plugins/entities/execute-proxy/v1
- **Description**: Execute a command and proxy the response directly.

---

**Class**: `Falcon::ApiIntegrations`

- **Operation**: [**get_combined_plugin_configs**](docs/ApiIntegrations.md#get_combined_plugin_configs)
- **GET**: /plugins/combined/configs/v1
- **Description**: Queries for config resources and returns details

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**cb_exclusions_create_v1**](docs/CertificateBasedExclusions.md#cb_exclusions_create_v1)
- **POST**: /exclusions/entities/cert-based-exclusions/v1
- **Description**: Create new Certificate Based Exclusions.

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**cb_exclusions_delete_v1**](docs/CertificateBasedExclusions.md#cb_exclusions_delete_v1)
- **DELETE**: /exclusions/entities/cert-based-exclusions/v1
- **Description**: Delete the exclusions by id

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**cb_exclusions_get_v1**](docs/CertificateBasedExclusions.md#cb_exclusions_get_v1)
- **GET**: /exclusions/entities/cert-based-exclusions/v1
- **Description**: Find all exclusion IDs matching the query with filter

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**cb_exclusions_query_v1**](docs/CertificateBasedExclusions.md#cb_exclusions_query_v1)
- **GET**: /exclusions/queries/cert-based-exclusions/v1
- **Description**: Search for cert-based exclusions.

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**cb_exclusions_update_v1**](docs/CertificateBasedExclusions.md#cb_exclusions_update_v1)
- **PATCH**: /exclusions/entities/cert-based-exclusions/v1
- **Description**: Updates existing Certificate Based Exclusions

---

**Class**: `Falcon::CertificateBasedExclusions`

- **Operation**: [**certificates_get_v1**](docs/CertificateBasedExclusions.md#certificates_get_v1)
- **GET**: /exclusions/entities/certificates/v1
- **Description**: Retrieves certificate signing information for a file

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**create_or_update_aws_settings**](docs/CloudConnectAws.md#create_or_update_aws_settings)
- **POST**: /cloud-connect-aws/entities/settings/v1
- **Description**: Create or update Global Settings which are applicable to all provisioned AWS accounts

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**delete_aws_accounts**](docs/CloudConnectAws.md#delete_aws_accounts)
- **DELETE**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Delete a set of AWS Accounts by specifying their IDs

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**get_aws_accounts**](docs/CloudConnectAws.md#get_aws_accounts)
- **GET**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Retrieve a set of AWS Accounts by specifying their IDs

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**get_aws_settings**](docs/CloudConnectAws.md#get_aws_settings)
- **GET**: /cloud-connect-aws/combined/settings/v1
- **Description**: Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**provision_aws_accounts**](docs/CloudConnectAws.md#provision_aws_accounts)
- **POST**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Provision AWS Accounts by specifying details about the accounts to provision

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**query_aws_accounts**](docs/CloudConnectAws.md#query_aws_accounts)
- **GET**: /cloud-connect-aws/combined/accounts/v1
- **Description**: Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**query_aws_accounts_for_ids**](docs/CloudConnectAws.md#query_aws_accounts_for_ids)
- **GET**: /cloud-connect-aws/queries/accounts/v1
- **Description**: Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**update_aws_accounts**](docs/CloudConnectAws.md#update_aws_accounts)
- **PATCH**: /cloud-connect-aws/entities/accounts/v1
- **Description**: Update AWS Accounts by specifying the ID of the account and details to update

---

**Class**: `Falcon::CloudConnectAws`

- **Operation**: [**verify_aws_account_access**](docs/CloudConnectAws.md#verify_aws_account_access)
- **POST**: /cloud-connect-aws/entities/verify-account-access/v1
- **Description**: Performs an Access Verification check on the specified AWS Account IDs

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**create_deployment_entity**](docs/CloudSnapshots.md#create_deployment_entity)
- **POST**: /snapshots/entities/deployments/v1
- **Description**: Launch a snapshot scan for a given cloud asset

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**get_credentials_mixin0_mixin57**](docs/CloudSnapshots.md#get_credentials_mixin0_mixin57)
- **GET**: /snapshots/entities/image-registry-credentials/v1
- **Description**: Gets the registry credentials

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**get_scan_report**](docs/CloudSnapshots.md#get_scan_report)
- **GET**: /snapshots/entities/scanreports/v1
- **Description**: retrieve the scan report for an instance

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**read_deployments_combined**](docs/CloudSnapshots.md#read_deployments_combined)
- **GET**: /snapshots/combined/deployments/v1
- **Description**: Retrieve snapshot jobs identified by the provided IDs

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**read_deployments_entities**](docs/CloudSnapshots.md#read_deployments_entities)
- **GET**: /snapshots/entities/deployments/v1
- **Description**: Retrieve snapshot jobs identified by the provided IDs

---

**Class**: `Falcon::CloudSnapshots`

- **Operation**: [**register_cspm_snapshot_account**](docs/CloudSnapshots.md#register_cspm_snapshot_account)
- **POST**: /snapshots/entities/accounts/v1
- **Description**: Register customer cloud account for snapshot scanning

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_cluster_assessments**](docs/ComplianceAssessments.md#ext_aggregate_cluster_assessments)
- **GET**: /container-compliance/aggregates/compliance-by-clusters/v2
- **Description**: get the assessments for each cluster

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_containers_by_rules_path**](docs/ComplianceAssessments.md#ext_aggregate_failed_containers_by_rules_path)
- **GET**: /container-compliance/aggregates/failed-containers-by-rules/v2
- **Description**: get the containers grouped into rules on which they failed

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_containers_count_by_severity**](docs/ComplianceAssessments.md#ext_aggregate_failed_containers_count_by_severity)
- **GET**: /container-compliance/aggregates/failed-containers-count-by-severity/v2
- **Description**: get the failed containers count grouped into severity levels

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_images_by_rules_path**](docs/ComplianceAssessments.md#ext_aggregate_failed_images_by_rules_path)
- **GET**: /container-compliance/aggregates/failed-images-by-rules/v2
- **Description**: get the images grouped into rules on which they failed

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_images_count_by_severity**](docs/ComplianceAssessments.md#ext_aggregate_failed_images_count_by_severity)
- **GET**: /container-compliance/aggregates/failed-images-count-by-severity/v2
- **Description**: get the failed images count grouped into severity levels

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_rules_by_clusters**](docs/ComplianceAssessments.md#ext_aggregate_failed_rules_by_clusters)
- **GET**: /container-compliance/aggregates/failed-rules-by-clusters/v2
- **Description**: get the failed rules for each cluster grouped into severity levels

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_rules_by_images**](docs/ComplianceAssessments.md#ext_aggregate_failed_rules_by_images)
- **GET**: /container-compliance/aggregates/failed-rules-by-images/v2
- **Description**: get images with failed rules, rule count grouped by severity for each image

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_failed_rules_count_by_severity**](docs/ComplianceAssessments.md#ext_aggregate_failed_rules_count_by_severity)
- **GET**: /container-compliance/aggregates/failed-rules-count-by-severity/v2
- **Description**: get the failed rules count grouped into severity levels

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_image_assessments**](docs/ComplianceAssessments.md#ext_aggregate_image_assessments)
- **GET**: /container-compliance/aggregates/compliance-by-images/v2
- **Description**: get the assessments for each image

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_rules_assessments**](docs/ComplianceAssessments.md#ext_aggregate_rules_assessments)
- **GET**: /container-compliance/aggregates/compliance-by-rules/v2
- **Description**: get the assessments for each rule

---

**Class**: `Falcon::ComplianceAssessments`

- **Operation**: [**ext_aggregate_rules_by_status**](docs/ComplianceAssessments.md#ext_aggregate_rules_by_status)
- **GET**: /container-compliance/aggregates/rules-by-status/v2
- **Description**: get the rules grouped by their statuses

---

**Class**: `Falcon::ConfigurationAssessment`

- **Operation**: [**get_combined_assessments_query**](docs/ConfigurationAssessment.md#get_combined_assessments_query)
- **GET**: /configuration-assessment/combined/assessments/v1
- **Description**: Search for assessments in your environment by providing an FQL filter and paging details. Returns a set of HostFinding entities which match the filter criteria

---

**Class**: `Falcon::ConfigurationAssessment`

- **Operation**: [**get_rule_details**](docs/ConfigurationAssessment.md#get_rule_details)
- **GET**: /configuration-assessment/entities/rule-details/v1
- **Description**: Get rules details for provided one or more rule IDs

---

**Class**: `Falcon::ConfigurationAssessmentEvaluationLogic`

- **Operation**: [**get_evaluation_logic_mixin0**](docs/ConfigurationAssessmentEvaluationLogic.md#get_evaluation_logic_mixin0)
- **GET**: /configuration-assessment/entities/evaluation-logic/v1
- **Description**: Get details on evaluation logic items by providing one or more finding IDs.

---

**Class**: `Falcon::ContainerAlerts`

- **Operation**: [**read_container_alerts_count**](docs/ContainerAlerts.md#read_container_alerts_count)
- **GET**: /container-security/aggregates/container-alerts/count/v1
- **Description**: Search Container Alerts by the provided search criteria

---

**Class**: `Falcon::ContainerAlerts`

- **Operation**: [**read_container_alerts_count_by_severity**](docs/ContainerAlerts.md#read_container_alerts_count_by_severity)
- **GET**: /container-security/aggregates/container-alerts/count-by-severity/v1
- **Description**: Get Container Alerts counts by severity

---

**Class**: `Falcon::ContainerAlerts`

- **Operation**: [**search_and_read_container_alerts**](docs/ContainerAlerts.md#search_and_read_container_alerts)
- **GET**: /container-security/combined/container-alerts/v1
- **Description**: Search Container Alerts by the provided search criteria

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**read_combined_detections**](docs/ContainerDetections.md#read_combined_detections)
- **GET**: /container-security/combined/detections/v1
- **Description**: Retrieve image assessment detections identified by the provided filter criteria

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**read_detections**](docs/ContainerDetections.md#read_detections)
- **GET**: /container-security/entities/detections/v1
- **Description**: Retrieve image assessment detection entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**read_detections_count**](docs/ContainerDetections.md#read_detections_count)
- **GET**: /container-security/aggregates/detections/count/v1
- **Description**: Aggregate count of detections

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**read_detections_count_by_severity**](docs/ContainerDetections.md#read_detections_count_by_severity)
- **GET**: /container-security/aggregates/detections/count-by-severity/v1
- **Description**: Aggregate counts of detections by severity

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**read_detections_count_by_type**](docs/ContainerDetections.md#read_detections_count_by_type)
- **GET**: /container-security/aggregates/detections/count-by-type/v1
- **Description**: Aggregate counts of detections by detection type

---

**Class**: `Falcon::ContainerDetections`

- **Operation**: [**search_detections**](docs/ContainerDetections.md#search_detections)
- **GET**: /container-security/queries/detections/v1
- **Description**: Retrieve image assessment detection entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**aggregate_image_assessment_history**](docs/ContainerImages.md#aggregate_image_assessment_history)
- **GET**: /container-security/aggregates/images/assessment-history/v1
- **Description**: Image assessment history

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**aggregate_image_count**](docs/ContainerImages.md#aggregate_image_count)
- **GET**: /container-security/aggregates/images/count/v1
- **Description**: Aggregate count of images

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**aggregate_image_count_by_base_os**](docs/ContainerImages.md#aggregate_image_count_by_base_os)
- **GET**: /container-security/aggregates/images/count-by-os-distribution/v1
- **Description**: Aggregate count of images grouped by Base OS distribution

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**aggregate_image_count_by_state**](docs/ContainerImages.md#aggregate_image_count_by_state)
- **GET**: /container-security/aggregates/images/count-by-state/v1
- **Description**: Aggregate count of images grouped by state

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**combined_base_images**](docs/ContainerImages.md#combined_base_images)
- **GET**: /container-security/combined/base-images/v1
- **Description**: Retrieve base images for provided filter

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**combined_image_by_vulnerability_count**](docs/ContainerImages.md#combined_image_by_vulnerability_count)
- **GET**: /container-security/combined/images/by-vulnerability-count/v1
- **Description**: Retrieve top x images with the most vulnerabilities

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**combined_image_detail**](docs/ContainerImages.md#combined_image_detail)
- **GET**: /container-security/combined/images/detail/v1
- **Description**: Retrieve image entities identified by the provided filter criteria

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**combined_image_issues_summary**](docs/ContainerImages.md#combined_image_issues_summary)
- **GET**: /container-security/combined/images/issues-summary/v1
- **Description**: Retrieve image issues summary such as Image detections, Runtime detections, Policies, vulnerabilities

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**combined_image_vulnerability_summary**](docs/ContainerImages.md#combined_image_vulnerability_summary)
- **GET**: /container-security/combined/images/vulnerabilities-summary/v1
- **Description**: aggregates information about vulnerabilities for an image

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**create_base_images_entities**](docs/ContainerImages.md#create_base_images_entities)
- **POST**: /container-security/entities/base-images/v1
- **Description**: Creates base images using the provided details

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**delete_base_images**](docs/ContainerImages.md#delete_base_images)
- **DELETE**: /container-security/entities/base-images/v1
- **Description**: Delete base images by base image uuid

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**get_combined_images**](docs/ContainerImages.md#get_combined_images)
- **GET**: /container-security/combined/image-assessment/images/v1
- **Description**: Get image assessment results by providing an FQL filter and paging details

---

**Class**: `Falcon::ContainerImages`

- **Operation**: [**read_combined_images_export**](docs/ContainerImages.md#read_combined_images_export)
- **GET**: /container-security/combined/images/export/v1
- **Description**: Retrieve images with an option to expand aggregated vulnerabilities/detections

---

**Class**: `Falcon::ContainerPackages`

- **Operation**: [**read_packages_by_fixable_vuln_count**](docs/ContainerPackages.md#read_packages_by_fixable_vuln_count)
- **GET**: /container-security/combined/packages/app-by-fixable-vulnerability-count/v1
- **Description**: Retrieve top x app packages with the most fixable vulnerabilities

---

**Class**: `Falcon::ContainerPackages`

- **Operation**: [**read_packages_by_vuln_count**](docs/ContainerPackages.md#read_packages_by_vuln_count)
- **GET**: /container-security/combined/packages/by-vulnerability-count/v1
- **Description**: Retrieve top x packages with the most vulnerabilities

---

**Class**: `Falcon::ContainerPackages`

- **Operation**: [**read_packages_combined**](docs/ContainerPackages.md#read_packages_combined)
- **GET**: /container-security/combined/packages/v1
- **Description**: Retrieve packages identified by the provided filter criteria

---

**Class**: `Falcon::ContainerPackages`

- **Operation**: [**read_packages_combined_export**](docs/ContainerPackages.md#read_packages_combined_export)
- **GET**: /container-security/combined/packages/export/v1
- **Description**: Retrieve packages identified by the provided filter criteria for the purpose of export

---

**Class**: `Falcon::ContainerPackages`

- **Operation**: [**read_packages_count_by_zero_day**](docs/ContainerPackages.md#read_packages_count_by_zero_day)
- **GET**: /container-security/aggregates/packages/count-by-zero-day/v1
- **Description**: Retrieve packages count affected by zero day vulnerabilities

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_combined_vulnerabilities**](docs/ContainerVulnerabilities.md#read_combined_vulnerabilities)
- **GET**: /container-security/combined/vulnerabilities/v1
- **Description**: Retrieve vulnerability and aggregate data filtered by the provided FQL

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_combined_vulnerabilities_details**](docs/ContainerVulnerabilities.md#read_combined_vulnerabilities_details)
- **GET**: /container-security/combined/vulnerabilities/details/v1
- **Description**: Retrieve vulnerability details related to an image

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_combined_vulnerabilities_info**](docs/ContainerVulnerabilities.md#read_combined_vulnerabilities_info)
- **GET**: /container-security/combined/vulnerabilities/info/v1
- **Description**: Retrieve vulnerability and package related info for this customer

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerabilities_by_image_count**](docs/ContainerVulnerabilities.md#read_vulnerabilities_by_image_count)
- **GET**: /container-security/combined/vulnerabilities/by-image-count/v1
- **Description**: Retrieve top x vulnerabilities with the most impacted images

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerabilities_publication_date**](docs/ContainerVulnerabilities.md#read_vulnerabilities_publication_date)
- **GET**: /container-security/combined/vulnerabilities/by-published-date/v1
- **Description**: Retrieve top x vulnerabilities with the most recent publication date

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerability_count**](docs/ContainerVulnerabilities.md#read_vulnerability_count)
- **GET**: /container-security/aggregates/vulnerabilities/count/v1
- **Description**: Aggregate count of vulnerabilities

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerability_count_by_actively_exploited**](docs/ContainerVulnerabilities.md#read_vulnerability_count_by_actively_exploited)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-actively-exploited/v1
- **Description**: Aggregate count of vulnerabilities grouped by actively exploited

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerability_count_by_cps_rating**](docs/ContainerVulnerabilities.md#read_vulnerability_count_by_cps_rating)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-cps-rating/v1
- **Description**: Aggregate count of vulnerabilities grouped by csp_rating

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerability_count_by_cvss_score**](docs/ContainerVulnerabilities.md#read_vulnerability_count_by_cvss_score)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-cvss-score/v1
- **Description**: Aggregate count of vulnerabilities grouped by cvss score

---

**Class**: `Falcon::ContainerVulnerabilities`

- **Operation**: [**read_vulnerability_count_by_severity**](docs/ContainerVulnerabilities.md#read_vulnerability_count_by_severity)
- **GET**: /container-security/aggregates/vulnerabilities/count-by-severity/v1
- **Description**: Aggregate count of vulnerabilities grouped by severity

---

**Class**: `Falcon::CspgIac`

- **Operation**: [**get_credentials_mixin0**](docs/CspgIac.md#get_credentials_mixin0)
- **GET**: /iac/entities/image-registry-credentials/v1
- **Description**: Gets the registry credentials (external endpoint)

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**azure_download_certificate**](docs/CspmRegistration.md#azure_download_certificate)
- **GET**: /cloud-connect-cspm-azure/entities/download-certificate/v1
- **Description**: Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**connect_cspm_gcp_account**](docs/CspmRegistration.md#connect_cspm_gcp_account)
- **POST**: /cloud-connect-cspm-gcp/entities/account/v2
- **Description**: Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**create_cspm_aws_account**](docs/CspmRegistration.md#create_cspm_aws_account)
- **POST**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**create_cspm_azure_account**](docs/CspmRegistration.md#create_cspm_azure_account)
- **POST**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**create_cspm_azure_management_group**](docs/CspmRegistration.md#create_cspm_azure_management_group)
- **POST**: /cloud-connect-cspm-azure/entities/management-group/v1
- **Description**: Creates a new management group in our system for a customer.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**create_cspm_gcp_account**](docs/CspmRegistration.md#create_cspm_gcp_account)
- **POST**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**delete_cspm_aws_account**](docs/CspmRegistration.md#delete_cspm_aws_account)
- **DELETE**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Deletes an existing AWS account or organization in our system.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**delete_cspm_azure_account**](docs/CspmRegistration.md#delete_cspm_azure_account)
- **DELETE**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Deletes an Azure subscription from the system.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**delete_cspm_azure_management_group**](docs/CspmRegistration.md#delete_cspm_azure_management_group)
- **DELETE**: /cloud-connect-cspm-azure/entities/management-group/v1
- **Description**: Deletes Azure management groups from the system.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**delete_cspm_gcp_account**](docs/CspmRegistration.md#delete_cspm_gcp_account)
- **DELETE**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Deletes a GCP account from the system.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_behavior_detections**](docs/CspmRegistration.md#get_behavior_detections)
- **GET**: /detects/entities/ioa/v1
- **Description**: Get list of detected behaviors

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_configuration_detection_entities**](docs/CspmRegistration.md#get_configuration_detection_entities)
- **GET**: /detects/entities/iom/v2
- **Description**: Get misconfigurations based on the ID - including custom policy detections in addition to default policy detections.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_configuration_detection_ids_v2**](docs/CspmRegistration.md#get_configuration_detection_ids_v2)
- **GET**: /detects/queries/iom/v2
- **Description**: Get list of active misconfiguration ids - including custom policy detections in addition to default policy detections.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_configuration_detections**](docs/CspmRegistration.md#get_configuration_detections)
- **GET**: /detects/entities/iom/v1
- **Description**: Get list of active misconfigurations. This endpoint is deprecated, please use /queries/iom/v2 and /entities/iom/v2 instead

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_aws_account**](docs/CspmRegistration.md#get_cspm_aws_account)
- **GET**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Returns information about the current status of an AWS account.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_aws_account_scripts_attachment**](docs/CspmRegistration.md#get_cspm_aws_account_scripts_attachment)
- **GET**: /cloud-connect-cspm-aws/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_aws_console_setup_urls**](docs/CspmRegistration.md#get_cspm_aws_console_setup_urls)
- **GET**: /cloud-connect-cspm-aws/entities/console-setup-urls/v1
- **Description**: Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_azure_account**](docs/CspmRegistration.md#get_cspm_azure_account)
- **GET**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Return information about Azure account registration

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_azure_management_group**](docs/CspmRegistration.md#get_cspm_azure_management_group)
- **GET**: /cloud-connect-cspm-azure/entities/management-group/v1
- **Description**: Return information about Azure management group registration

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_azure_user_scripts_attachment**](docs/CspmRegistration.md#get_cspm_azure_user_scripts_attachment)
- **GET**: /cloud-connect-cspm-azure/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_gcp_account**](docs/CspmRegistration.md#get_cspm_gcp_account)
- **GET**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Returns information about the current status of an GCP account.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_gcp_service_accounts_ext**](docs/CspmRegistration.md#get_cspm_gcp_service_accounts_ext)
- **GET**: /cloud-connect-cspm-gcp/entities/service-accounts/v1
- **Description**: Returns the service account id and client email for external clients.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_gcp_user_scripts_attachment**](docs/CspmRegistration.md#get_cspm_gcp_user_scripts_attachment)
- **GET**: /cloud-connect-cspm-gcp/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_gcp_validate_accounts_ext**](docs/CspmRegistration.md#get_cspm_gcp_validate_accounts_ext)
- **POST**: /cloud-connect-cspm-gcp/entities/account/validate/v1
- **Description**: Run a synchronous health check.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_policies_details**](docs/CspmRegistration.md#get_cspm_policies_details)
- **GET**: /settings/entities/policy-details/v2
- **Description**: Given an array of policy IDs, returns detailed policies information.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_policy**](docs/CspmRegistration.md#get_cspm_policy)
- **GET**: /settings/entities/policy-details/v1
- **Description**: Given a policy ID, returns detailed policy information.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_policy_settings**](docs/CspmRegistration.md#get_cspm_policy_settings)
- **GET**: /settings/entities/policy/v1
- **Description**: Returns information about current policy settings.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**get_cspm_scan_schedule**](docs/CspmRegistration.md#get_cspm_scan_schedule)
- **GET**: /settings/scan-schedule/v1
- **Description**: Returns scan schedule configuration for one or more cloud platforms.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**patch_cspm_aws_account**](docs/CspmRegistration.md#patch_cspm_aws_account)
- **PATCH**: /cloud-connect-cspm-aws/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_azure_account**](docs/CspmRegistration.md#update_cspm_azure_account)
- **PATCH**: /cloud-connect-cspm-azure/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_azure_account_client_id**](docs/CspmRegistration.md#update_cspm_azure_account_client_id)
- **PATCH**: /cloud-connect-cspm-azure/entities/client-id/v1
- **Description**: Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_azure_tenant_default_subscription_id**](docs/CspmRegistration.md#update_cspm_azure_tenant_default_subscription_id)
- **PATCH**: /cloud-connect-cspm-azure/entities/default-subscription-id/v1
- **Description**: Update an Azure default subscription_id in our system for given tenant_id

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_gcp_account**](docs/CspmRegistration.md#update_cspm_gcp_account)
- **PATCH**: /cloud-connect-cspm-gcp/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_gcp_service_accounts_ext**](docs/CspmRegistration.md#update_cspm_gcp_service_accounts_ext)
- **PATCH**: /cloud-connect-cspm-gcp/entities/service-accounts/v1
- **Description**: Patches the service account key for external clients.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_policy_settings**](docs/CspmRegistration.md#update_cspm_policy_settings)
- **PATCH**: /settings/entities/policy/v1
- **Description**: Updates a policy setting - can be used to override policy severity or to disable a policy entirely.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**update_cspm_scan_schedule**](docs/CspmRegistration.md#update_cspm_scan_schedule)
- **POST**: /settings/scan-schedule/v1
- **Description**: Updates scan schedule configuration for one or more cloud platforms.

---

**Class**: `Falcon::CspmRegistration`

- **Operation**: [**validate_cspm_gcp_service_account_ext**](docs/CspmRegistration.md#validate_cspm_gcp_service_account_ext)
- **POST**: /cloud-connect-cspm-gcp/entities/service-accounts/validate/v1
- **Description**: Validates credentials for a service account

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**create_rule**](docs/CustomIoa.md#create_rule)
- **POST**: /ioarules/entities/rules/v1
- **Description**: Create a rule within a rule group. Returns the rule.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**create_rule_group_mixin0**](docs/CustomIoa.md#create_rule_group_mixin0)
- **POST**: /ioarules/entities/rule-groups/v1
- **Description**: Create a rule group for a platform with a name and an optional description. Returns the rule group.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**delete_rule_groups_mixin0**](docs/CustomIoa.md#delete_rule_groups_mixin0)
- **DELETE**: /ioarules/entities/rule-groups/v1
- **Description**: Delete rule groups by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**delete_rules_0**](docs/CustomIoa.md#delete_rules_0)
- **DELETE**: /ioarules/entities/rules/v1
- **Description**: Delete rules from a rule group by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_patterns**](docs/CustomIoa.md#get_patterns)
- **GET**: /ioarules/entities/pattern-severities/v1
- **Description**: Get pattern severities by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_platforms_mixin0**](docs/CustomIoa.md#get_platforms_mixin0)
- **GET**: /ioarules/entities/platforms/v1
- **Description**: Get platforms by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_rule_groups_mixin0**](docs/CustomIoa.md#get_rule_groups_mixin0)
- **GET**: /ioarules/entities/rule-groups/v1
- **Description**: Get rule groups by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_rule_types**](docs/CustomIoa.md#get_rule_types)
- **GET**: /ioarules/entities/rule-types/v1
- **Description**: Get rule types by ID.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_rules_get**](docs/CustomIoa.md#get_rules_get)
- **POST**: /ioarules/entities/rules/GET/v1
- **Description**: Get rules by ID and optionally with cid and/or version in the following format: &#x60;[cid:]ID[:version]&#x60;.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**get_rules_mixin0**](docs/CustomIoa.md#get_rules_mixin0)
- **GET**: /ioarules/entities/rules/v1
- **Description**: Get rules by ID and optionally with cid and/or version in the following format: &#x60;[cid:]ID[:version]&#x60;. The max number of IDs is constrained by URL size.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_patterns**](docs/CustomIoa.md#query_patterns)
- **GET**: /ioarules/queries/pattern-severities/v1
- **Description**: Get all pattern severity IDs.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_platforms_mixin0**](docs/CustomIoa.md#query_platforms_mixin0)
- **GET**: /ioarules/queries/platforms/v1
- **Description**: Get all platform IDs.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_rule_groups_full**](docs/CustomIoa.md#query_rule_groups_full)
- **GET**: /ioarules/queries/rule-groups-full/v1
- **Description**: Find all rule groups matching the query with optional filter.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_rule_groups_mixin0**](docs/CustomIoa.md#query_rule_groups_mixin0)
- **GET**: /ioarules/queries/rule-groups/v1
- **Description**: Finds all rule group IDs matching the query with optional filter.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_rule_types**](docs/CustomIoa.md#query_rule_types)
- **GET**: /ioarules/queries/rule-types/v1
- **Description**: Get all rule type IDs.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**query_rules_mixin0**](docs/CustomIoa.md#query_rules_mixin0)
- **GET**: /ioarules/queries/rules/v1
- **Description**: Finds all rule IDs matching the query with optional filter.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**update_rule_group_mixin0**](docs/CustomIoa.md#update_rule_group_mixin0)
- **PATCH**: /ioarules/entities/rule-groups/v1
- **Description**: Update a rule group. The following properties can be modified: name, description, enabled.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**update_rules_0**](docs/CustomIoa.md#update_rules_0)
- **PATCH**: /ioarules/entities/rules/v1
- **Description**: Update rules within a rule group. Return the updated rules.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**update_rules_v2**](docs/CustomIoa.md#update_rules_v2)
- **PATCH**: /ioarules/entities/rules/v2
- **Description**: Update name, description, enabled or field_values for individual rules within a rule group. The v1 flavor of this call requires the caller to specify the complete state for all the rules in the rule group, instead the v2 flavor will accept the subset of rules in the rule group and apply the attribute updates to the subset of rules in the rule group.Return the updated rules.

---

**Class**: `Falcon::CustomIoa`

- **Operation**: [**validate**](docs/CustomIoa.md#validate)
- **POST**: /ioarules/entities/rules/validate/v1
- **Description**: Validates field values and checks for matches if a test string is provided.

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**delete_object**](docs/CustomStorage.md#delete_object)
- **DELETE**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Delete the specified object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**delete_versioned_object**](docs/CustomStorage.md#delete_versioned_object)
- **DELETE**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects/{object_key}
- **Description**: Delete the specified versioned object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**get_object**](docs/CustomStorage.md#get_object)
- **GET**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Get the bytes for the specified object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**get_object_metadata**](docs/CustomStorage.md#get_object_metadata)
- **GET**: /customobjects/v1/collections/{collection_name}/objects/{object_key}/metadata
- **Description**: Get the metadata for the specified object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**get_versioned_object**](docs/CustomStorage.md#get_versioned_object)
- **GET**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects/{object_key}
- **Description**: Get the bytes for the specified object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**get_versioned_object_metadata**](docs/CustomStorage.md#get_versioned_object_metadata)
- **GET**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects/{object_key}/metadata
- **Description**: Get the metadata for the specified object

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**list_objects**](docs/CustomStorage.md#list_objects)
- **GET**: /customobjects/v1/collections/{collection_name}/objects
- **Description**: List the object keys in the specified collection in alphabetical order

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**list_objects_by_version**](docs/CustomStorage.md#list_objects_by_version)
- **GET**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects
- **Description**: List the object keys in the specified collection in alphabetical order

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**put_object**](docs/CustomStorage.md#put_object)
- **PUT**: /customobjects/v1/collections/{collection_name}/objects/{object_key}
- **Description**: Put the specified new object at the given key or overwrite an existing object at the given key

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**put_object_by_version**](docs/CustomStorage.md#put_object_by_version)
- **PUT**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects/{object_key}
- **Description**: Put the specified new object at the given key or overwrite an existing object at the given key

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**search_objects**](docs/CustomStorage.md#search_objects)
- **POST**: /customobjects/v1/collections/{collection_name}/objects
- **Description**: Search for objects that match the specified filter criteria (returns metadata, not actual objects)

---

**Class**: `Falcon::CustomStorage`

- **Operation**: [**search_objects_by_version**](docs/CustomStorage.md#search_objects_by_version)
- **POST**: /customobjects/v1/collections/{collection_name}/{collection_version}/objects
- **Description**: Search for objects that match the specified filter criteria (returns metadata, not actual objects)

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**connect_d4_cgcp_account**](docs/D4cRegistration.md#connect_d4_cgcp_account)
- **POST**: /cloud-connect-gcp/entities/account/v2
- **Description**: Creates a new GCP account with newly-uploaded service account or connects with existing service account with only the following fields: parent_id, parent_type and service_account_id

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**create_d4_c_aws_account**](docs/D4cRegistration.md#create_d4_c_aws_account)
- **POST**: /cloud-connect-aws/entities/account/v2
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their AWS cloud environment to grant us access.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**create_d4_c_gcp_account**](docs/D4cRegistration.md#create_d4_c_gcp_account)
- **POST**: /cloud-connect-gcp/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a new service account for them to add access to in their GCP environment to grant us access.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**create_discover_cloud_azure_account**](docs/D4cRegistration.md#create_discover_cloud_azure_account)
- **POST**: /cloud-connect-azure/entities/account/v1
- **Description**: Creates a new account in our system for a customer and generates a script for them to run in their cloud environment to grant us access.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**delete_d4_c_aws_account**](docs/D4cRegistration.md#delete_d4_c_aws_account)
- **DELETE**: /cloud-connect-aws/entities/account/v2
- **Description**: Deletes an existing AWS account or organization in our system.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**delete_d4_cgcp_account**](docs/D4cRegistration.md#delete_d4_cgcp_account)
- **DELETE**: /cloud-connect-gcp/entities/account/v1
- **Description**: Deletes a GCP account from the system.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**discover_cloud_azure_download_certificate**](docs/D4cRegistration.md#discover_cloud_azure_download_certificate)
- **GET**: /cloud-connect-azure/entities/download-certificate/v1
- **Description**: Returns JSON object(s) that contain the base64 encoded certificate for a service principal.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_c_aws_account**](docs/D4cRegistration.md#get_d4_c_aws_account)
- **GET**: /cloud-connect-aws/entities/account/v2
- **Description**: Returns information about the current status of an AWS account.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_c_aws_console_setup_urls**](docs/D4cRegistration.md#get_d4_c_aws_console_setup_urls)
- **GET**: /cloud-connect-aws/entities/console-setup-urls/v1
- **Description**: Return a URL for customer to visit in their cloud environment to grant us access to their AWS environment.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_c_gcp_account**](docs/D4cRegistration.md#get_d4_c_gcp_account)
- **GET**: /cloud-connect-gcp/entities/account/v1
- **Description**: Returns information about the current status of an GCP account.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_c_gcp_user_scripts**](docs/D4cRegistration.md#get_d4_c_gcp_user_scripts)
- **GET**: /cloud-connect-gcp/entities/user-scripts/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_caws_account_scripts_attachment**](docs/D4cRegistration.md#get_d4_caws_account_scripts_attachment)
- **GET**: /cloud-connect-aws/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their AWS environment as a downloadable attachment.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_cgcp_service_accounts_ext**](docs/D4cRegistration.md#get_d4_cgcp_service_accounts_ext)
- **GET**: /cloud-connect-gcp/entities/service-accounts/v1
- **Description**: Returns the service account id and client email for external clients.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_d4_cgcp_user_scripts_attachment**](docs/D4cRegistration.md#get_d4_cgcp_user_scripts_attachment)
- **GET**: /cloud-connect-gcp/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their GCP environment as a downloadable attachment

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_discover_cloud_azure_account**](docs/D4cRegistration.md#get_discover_cloud_azure_account)
- **GET**: /cloud-connect-azure/entities/account/v1
- **Description**: Return information about Azure account registration

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_discover_cloud_azure_tenant_ids**](docs/D4cRegistration.md#get_discover_cloud_azure_tenant_ids)
- **GET**: /cloud-connect-azure/entities/tenant-id/v1
- **Description**: Return available tenant ids for discover for cloud

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_discover_cloud_azure_user_scripts**](docs/D4cRegistration.md#get_discover_cloud_azure_user_scripts)
- **GET**: /cloud-connect-azure/entities/user-scripts/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_discover_cloud_azure_user_scripts_attachment**](docs/D4cRegistration.md#get_discover_cloud_azure_user_scripts_attachment)
- **GET**: /cloud-connect-azure/entities/user-scripts-download/v1
- **Description**: Return a script for customer to run in their cloud environment to grant us access to their Azure environment as a downloadable attachment

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**get_horizon_d4_c_scripts**](docs/D4cRegistration.md#get_horizon_d4_c_scripts)
- **GET**: /settings-discover/entities/gen/scripts/v1
- **Description**: Returns static install scripts for Horizon.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**update_d4_cgcp_service_accounts_ext**](docs/D4cRegistration.md#update_d4_cgcp_service_accounts_ext)
- **PATCH**: /cloud-connect-gcp/entities/service-accounts/v1
- **Description**: Patches the service account key for external clients.

---

**Class**: `Falcon::D4cRegistration`

- **Operation**: [**update_discover_cloud_azure_account_client_id**](docs/D4cRegistration.md#update_discover_cloud_azure_account_client_id)
- **PATCH**: /cloud-connect-azure/entities/client-id/v1
- **Description**: Update an Azure service account in our system by with the user-created client_id created with the public key we&#39;ve provided

---

**Class**: `Falcon::Datascanner`

- **Operation**: [**get_data_scanner_tasks**](docs/Datascanner.md#get_data_scanner_tasks)
- **GET**: /data-security-dspm/entities/scanner-tasks/v1
- **Description**: 

---

**Class**: `Falcon::Datascanner`

- **Operation**: [**get_image_registry_credentials**](docs/Datascanner.md#get_image_registry_credentials)
- **GET**: /data-security-dspm/entities/image-registry-credentials/v1
- **Description**: 

---

**Class**: `Falcon::Datascanner`

- **Operation**: [**update_data_scanner_tasks**](docs/Datascanner.md#update_data_scanner_tasks)
- **PATCH**: /data-security-dspm/entities/scanner-tasks/v1
- **Description**: 

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_create_account**](docs/Default.md#cloud_registration_aws_create_account)
- **POST**: /cloud-security-registration-aws/entities/account/v1
- **Description**: Creates a new account in our system for a customer.

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_delete_account**](docs/Default.md#cloud_registration_aws_delete_account)
- **DELETE**: /cloud-security-registration-aws/entities/account/v1
- **Description**: Deletes an existing AWS account or organization in our system.

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_get_accounts**](docs/Default.md#cloud_registration_aws_get_accounts)
- **GET**: /cloud-security-registration-aws/entities/account/v1
- **Description**: Retrieve existing AWS accounts by account IDs

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_query_accounts**](docs/Default.md#cloud_registration_aws_query_accounts)
- **GET**: /cloud-security-registration-aws/queries/account/v1
- **Description**: Retrieve existing AWS accounts by account IDs

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_update_account**](docs/Default.md#cloud_registration_aws_update_account)
- **PATCH**: /cloud-security-registration-aws/entities/account/v1
- **Description**: Patches a existing account in our system for a customer.

---

**Class**: `Falcon::Default`

- **Operation**: [**cloud_registration_aws_validate_accounts**](docs/Default.md#cloud_registration_aws_validate_accounts)
- **POST**: /cloud-security-registration-aws/entities/account/validate/v1
- **Description**: Validates the AWS account in our system for a provided CID. For internal clients only.

---

**Class**: `Falcon::DeliverySettings`

- **Operation**: [**get_delivery_settings**](docs/DeliverySettings.md#get_delivery_settings)
- **GET**: /delivery-settings/entities/delivery-settings/v1
- **Description**: Get Delivery Settings

---

**Class**: `Falcon::DeliverySettings`

- **Operation**: [**post_delivery_settings**](docs/DeliverySettings.md#post_delivery_settings)
- **POST**: /delivery-settings/entities/delivery-settings/v1
- **Description**: Create Delivery Settings

---

**Class**: `Falcon::Detects`

- **Operation**: [**get_aggregate_detects**](docs/Detects.md#get_aggregate_detects)
- **POST**: /detects/aggregates/detects/GET/v1
- **Description**: Get detect aggregates as specified via json in request body.

---

**Class**: `Falcon::Detects`

- **Operation**: [**get_detect_summaries**](docs/Detects.md#get_detect_summaries)
- **POST**: /detects/entities/summaries/GET/v1
- **Description**: View information about detections

---

**Class**: `Falcon::Detects`

- **Operation**: [**query_detects**](docs/Detects.md#query_detects)
- **GET**: /detects/queries/detects/v1
- **Description**: Search for detection IDs that match a given query

---

**Class**: `Falcon::Detects`

- **Operation**: [**update_detects_by_ids_v2**](docs/Detects.md#update_detects_by_ids_v2)
- **PATCH**: /detects/entities/detects/v2
- **Description**: Modify the state, assignee, and visibility of detections

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**create_device_control_policies**](docs/DeviceControlPolicies.md#create_device_control_policies)
- **POST**: /policy/entities/device-control/v1
- **Description**: Create Device Control Policies by specifying details about the policy to create

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**delete_device_control_policies**](docs/DeviceControlPolicies.md#delete_device_control_policies)
- **DELETE**: /policy/entities/device-control/v1
- **Description**: Delete a set of Device Control Policies by specifying their IDs

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**get_default_device_control_policies**](docs/DeviceControlPolicies.md#get_default_device_control_policies)
- **GET**: /policy/entities/default-device-control/v1
- **Description**: Retrieve the configuration for a Default Device Control Policy

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**get_device_control_policies**](docs/DeviceControlPolicies.md#get_device_control_policies)
- **GET**: /policy/entities/device-control/v1
- **Description**: Retrieve a set of Device Control Policies by specifying their IDs

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**perform_device_control_policies_action**](docs/DeviceControlPolicies.md#perform_device_control_policies_action)
- **POST**: /policy/entities/device-control-actions/v1
- **Description**: Perform the specified action on the Device Control Policies specified in the request

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**query_combined_device_control_policies**](docs/DeviceControlPolicies.md#query_combined_device_control_policies)
- **GET**: /policy/combined/device-control/v1
- **Description**: Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policies which match the filter criteria

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**query_combined_device_control_policy_members**](docs/DeviceControlPolicies.md#query_combined_device_control_policy_members)
- **GET**: /policy/combined/device-control-members/v1
- **Description**: Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**query_device_control_policies**](docs/DeviceControlPolicies.md#query_device_control_policies)
- **GET**: /policy/queries/device-control/v1
- **Description**: Search for Device Control Policies in your environment by providing an FQL filter and paging details. Returns a set of Device Control Policy IDs which match the filter criteria

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**query_device_control_policy_members**](docs/DeviceControlPolicies.md#query_device_control_policy_members)
- **GET**: /policy/queries/device-control-members/v1
- **Description**: Search for members of a Device Control Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**set_device_control_policies_precedence**](docs/DeviceControlPolicies.md#set_device_control_policies_precedence)
- **POST**: /policy/entities/device-control-precedence/v1
- **Description**: Sets the precedence of Device Control Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**update_default_device_control_policies**](docs/DeviceControlPolicies.md#update_default_device_control_policies)
- **PATCH**: /policy/entities/default-device-control/v1
- **Description**: Update the configuration for a Default Device Control Policy

---

**Class**: `Falcon::DeviceControlPolicies`

- **Operation**: [**update_device_control_policies**](docs/DeviceControlPolicies.md#update_device_control_policies)
- **PATCH**: /policy/entities/device-control/v1
- **Description**: Update Device Control Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::Discover`

- **Operation**: [**combined_applications**](docs/Discover.md#combined_applications)
- **GET**: /discover/combined/applications/v1
- **Description**: Search for applications in your environment by providing an FQL filter and paging details. Returns details on applications which match the filter criteria.

---

**Class**: `Falcon::Discover`

- **Operation**: [**combined_hosts**](docs/Discover.md#combined_hosts)
- **GET**: /discover/combined/hosts/v1
- **Description**: Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns details on assets which match the filter criteria.

---

**Class**: `Falcon::Discover`

- **Operation**: [**get_accounts**](docs/Discover.md#get_accounts)
- **GET**: /discover/entities/accounts/v1
- **Description**: Get details on accounts by providing one or more IDs.

---

**Class**: `Falcon::Discover`

- **Operation**: [**get_applications**](docs/Discover.md#get_applications)
- **GET**: /discover/entities/applications/v1
- **Description**: Get details on applications by providing one or more IDs.

---

**Class**: `Falcon::Discover`

- **Operation**: [**get_hosts**](docs/Discover.md#get_hosts)
- **GET**: /discover/entities/hosts/v1
- **Description**: Get details on assets by providing one or more IDs.

---

**Class**: `Falcon::Discover`

- **Operation**: [**get_logins**](docs/Discover.md#get_logins)
- **GET**: /discover/entities/logins/v1
- **Description**: Get details on logins by providing one or more IDs.

---

**Class**: `Falcon::Discover`

- **Operation**: [**query_accounts**](docs/Discover.md#query_accounts)
- **GET**: /discover/queries/accounts/v1
- **Description**: Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.

---

**Class**: `Falcon::Discover`

- **Operation**: [**query_applications**](docs/Discover.md#query_applications)
- **GET**: /discover/queries/applications/v1
- **Description**: Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.

---

**Class**: `Falcon::Discover`

- **Operation**: [**query_hosts**](docs/Discover.md#query_hosts)
- **GET**: /discover/queries/hosts/v1
- **Description**: Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

---

**Class**: `Falcon::Discover`

- **Operation**: [**query_logins**](docs/Discover.md#query_logins)
- **GET**: /discover/queries/logins/v1
- **Description**: Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverIot`

- **Operation**: [**get_iot_hosts**](docs/DiscoverIot.md#get_iot_hosts)
- **GET**: /discover/entities/iot-hosts/v1
- **Description**: Get details on IoT assets by providing one or more IDs.

---

**Class**: `Falcon::DiscoverIot`

- **Operation**: [**query_iot_hosts**](docs/DiscoverIot.md#query_iot_hosts)
- **GET**: /discover/queries/iot-hosts/v1
- **Description**: Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

---

**Class**: `Falcon::DiscoverIot`

- **Operation**: [**query_iot_hosts_v2**](docs/DiscoverIot.md#query_iot_hosts_v2)
- **GET**: /discover/queries/iot-hosts/v2
- **Description**: Search for IoT assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.

---

**Class**: `Falcon::Downloads`

- **Operation**: [**download_file**](docs/Downloads.md#download_file)
- **GET**: /csdownloads/entities/files/download/v1
- **Description**: Gets pre-signed URL for the file

---

**Class**: `Falcon::DownloadsApi`

- **Operation**: [**enumerate_file**](docs/DownloadsApi.md#enumerate_file)
- **GET**: /csdownloads/entities/files/enumerate/v1
- **Description**: Enumerates a list of files available for CID

---

**Class**: `Falcon::DriftIndicators`

- **Operation**: [**get_drift_indicators_values_by_date**](docs/DriftIndicators.md#get_drift_indicators_values_by_date)
- **GET**: /container-security/aggregates/drift-indicators/count-by-date/v1
- **Description**: Returns the count of Drift Indicators by the date. by default it&#39;s for 7 days.

---

**Class**: `Falcon::DriftIndicators`

- **Operation**: [**read_drift_indicator_entities**](docs/DriftIndicators.md#read_drift_indicator_entities)
- **GET**: /container-security/entities/drift-indicators/v1
- **Description**: Retrieve Drift Indicator entities identified by the provided IDs

---

**Class**: `Falcon::DriftIndicators`

- **Operation**: [**read_drift_indicators_count**](docs/DriftIndicators.md#read_drift_indicators_count)
- **GET**: /container-security/aggregates/drift-indicators/count/v1
- **Description**: Returns the total count of Drift indicators over a time period

---

**Class**: `Falcon::DriftIndicators`

- **Operation**: [**search_and_read_drift_indicator_entities**](docs/DriftIndicators.md#search_and_read_drift_indicator_entities)
- **GET**: /container-security/combined/drift-indicators/v1
- **Description**: Retrieve Drift Indicators by the provided search criteria

---

**Class**: `Falcon::DriftIndicators`

- **Operation**: [**search_drift_indicators**](docs/DriftIndicators.md#search_drift_indicators)
- **GET**: /container-security/queries/drift-indicators/v1
- **Description**: Retrieve all drift indicators that match the given query

---

**Class**: `Falcon::EventSchema`

- **Operation**: [**fdrschema_combined_event_get**](docs/EventSchema.md#fdrschema_combined_event_get)
- **GET**: /fdr/combined/schema-members/v1
- **Description**: Fetch combined schema

---

**Class**: `Falcon::EventSchema`

- **Operation**: [**fdrschema_entities_event_get**](docs/EventSchema.md#fdrschema_entities_event_get)
- **GET**: /fdr/entities/schema-events/v1
- **Description**: Fetch event schema by ID

---

**Class**: `Falcon::EventSchema`

- **Operation**: [**fdrschema_queries_event_get**](docs/EventSchema.md#fdrschema_queries_event_get)
- **GET**: /fdr/queries/schema-events/v1
- **Description**: Get list of event IDs given a particular query.

---

**Class**: `Falcon::EventStreams`

- **Operation**: [**list_available_streams_o_auth2**](docs/EventStreams.md#list_available_streams_o_auth2)
- **GET**: /sensors/entities/datafeed/v2
- **Description**: Discover all event streams in your environment

---

**Class**: `Falcon::EventStreams`

- **Operation**: [**refresh_active_stream_session**](docs/EventStreams.md#refresh_active_stream_session)
- **POST**: /sensors/entities/datafeed-actions/v1/{partition}
- **Description**: Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**aggregate_external_assets**](docs/ExposureManagement.md#aggregate_external_assets)
- **POST**: /fem/aggregates/external-assets/v1
- **Description**: Returns external assets aggregates.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**blob_download_external_assets**](docs/ExposureManagement.md#blob_download_external_assets)
- **GET**: /fem/entities/blobs-download/v1
- **Description**: Download the entire contents of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**blob_preview_external_assets**](docs/ExposureManagement.md#blob_preview_external_assets)
- **GET**: /fem/entities/blobs-preview/v1
- **Description**: Download a preview of the blob. The relative link to this endpoint is returned in the GET /entities/external-assets/v1 request.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**combined_ecosystem_subsidiaries**](docs/ExposureManagement.md#combined_ecosystem_subsidiaries)
- **GET**: /fem/combined/ecosystem-subsidiaries/v1
- **Description**: Retrieves a list of ecosystem subsidiaries with their detailed information.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**delete_external_assets**](docs/ExposureManagement.md#delete_external_assets)
- **DELETE**: /fem/entities/external-assets/v1
- **Description**: Delete multiple external assets.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**get_ecosystem_subsidiaries**](docs/ExposureManagement.md#get_ecosystem_subsidiaries)
- **GET**: /fem/entities/ecosystem-subsidiaries/v1
- **Description**: Retrieves detailed information about ecosystem subsidiaries by ID.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**get_external_assets**](docs/ExposureManagement.md#get_external_assets)
- **GET**: /fem/entities/external-assets/v1
- **Description**: Get details on external assets by providing one or more IDs.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**patch_external_assets**](docs/ExposureManagement.md#patch_external_assets)
- **PATCH**: /fem/entities/external-assets/v1
- **Description**: Update the details of external assets.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**query_ecosystem_subsidiaries**](docs/ExposureManagement.md#query_ecosystem_subsidiaries)
- **GET**: /fem/queries/ecosystem-subsidiaries/v1
- **Description**: Retrieves a list of IDs for ecosystem subsidiaries. Use these IDs with the /entities/ecosystem-subsidiaries/v1 endpoints.

---

**Class**: `Falcon::ExposureManagement`

- **Operation**: [**query_external_assets**](docs/ExposureManagement.md#query_external_assets)
- **GET**: /fem/queries/external-assets/v1
- **Description**: Get a list of external asset IDs that match the provided filter conditions. Use these IDs with the /entities/external-assets/v1 endpoints

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_alerts**](docs/FalconCompleteDashboard.md#aggregate_alerts)
- **POST**: /falcon-complete-dashboards/aggregates/alerts/GET/v1
- **Description**: Retrieve aggregate alerts values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_allow_list**](docs/FalconCompleteDashboard.md#aggregate_allow_list)
- **POST**: /falcon-complete-dashboards/aggregates/allowlist/GET/v1
- **Description**: Retrieve aggregate allowlist ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_block_list**](docs/FalconCompleteDashboard.md#aggregate_block_list)
- **POST**: /falcon-complete-dashboards/aggregates/blocklist/GET/v1
- **Description**: Retrieve aggregate blocklist ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_detections**](docs/FalconCompleteDashboard.md#aggregate_detections)
- **POST**: /falcon-complete-dashboards/aggregates/detects/GET/v1
- **Description**: Retrieve aggregate detection values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_device_count_collection**](docs/FalconCompleteDashboard.md#aggregate_device_count_collection)
- **POST**: /falcon-complete-dashboards/aggregates/devicecount-collections/GET/v1
- **Description**: Retrieve aggregate host/devices count based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_escalations**](docs/FalconCompleteDashboard.md#aggregate_escalations)
- **POST**: /falcon-complete-dashboards/aggregates/escalations/GET/v1
- **Description**: Retrieve aggregate escalation ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_fc_incidents**](docs/FalconCompleteDashboard.md#aggregate_fc_incidents)
- **POST**: /falcon-complete-dashboards/aggregates/incidents/GET/v1
- **Description**: Retrieve aggregate incident values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_prevention_policy**](docs/FalconCompleteDashboard.md#aggregate_prevention_policy)
- **POST**: /falcon-complete-dashboards/aggregates/prevention-policies/v1
- **Description**: Retrieve prevention policies aggregate values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_remediations**](docs/FalconCompleteDashboard.md#aggregate_remediations)
- **POST**: /falcon-complete-dashboards/aggregates/remediations/GET/v1
- **Description**: Retrieve aggregate remediation ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_sensor_update_policy**](docs/FalconCompleteDashboard.md#aggregate_sensor_update_policy)
- **POST**: /falcon-complete-dashboards/aggregates/sensor-update-policies/v1
- **Description**: Retrieve sensor update policies aggregate values

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_support_issues**](docs/FalconCompleteDashboard.md#aggregate_support_issues)
- **POST**: /falcon-complete-dashboards/aggregates/support-issues/v1
- **Description**: Retrieve aggregate support issue ticket values based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**aggregate_total_device_counts**](docs/FalconCompleteDashboard.md#aggregate_total_device_counts)
- **POST**: /falcon-complete-dashboards/aggregates/total-device-counts/v1
- **Description**: Retrieve aggregate total host/devices based on the matched filter

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**get_device_count_collection_queries_by_filter**](docs/FalconCompleteDashboard.md#get_device_count_collection_queries_by_filter)
- **GET**: /falcon-complete-dashboards/queries/devicecount-collections/v1
- **Description**: Retrieve device count collection Ids that match the provided FQL filter, criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_alert_ids_by_filter**](docs/FalconCompleteDashboard.md#query_alert_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/alerts/v1
- **Description**: Retrieve Alerts Ids that match the provided FQL filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_allow_list_filter**](docs/FalconCompleteDashboard.md#query_allow_list_filter)
- **GET**: /falcon-complete-dashboards/queries/allowlist/v1
- **Description**: Retrieve allowlist tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_block_list_filter**](docs/FalconCompleteDashboard.md#query_block_list_filter)
- **GET**: /falcon-complete-dashboards/queries/blocklist/v1
- **Description**: Retrieve block listtickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_detection_ids_by_filter**](docs/FalconCompleteDashboard.md#query_detection_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/detects/v1
- **Description**: Retrieve DetectionsIds that match the provided FQL filter, criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_escalations_filter**](docs/FalconCompleteDashboard.md#query_escalations_filter)
- **GET**: /falcon-complete-dashboards/queries/escalations/v1
- **Description**: Retrieve escalation tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_incident_ids_by_filter**](docs/FalconCompleteDashboard.md#query_incident_ids_by_filter)
- **GET**: /falcon-complete-dashboards/queries/incidents/v1
- **Description**: Retrieve incidents that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconCompleteDashboard`

- **Operation**: [**query_remediations_filter**](docs/FalconCompleteDashboard.md#query_remediations_filter)
- **GET**: /falcon-complete-dashboards/queries/remediations/v1
- **Description**: Retrieve remediation tickets that match the provided filter criteria with scrolling enabled

---

**Class**: `Falcon::FalconContainer`

- **Operation**: [**get_credentials**](docs/FalconContainer.md#get_credentials)
- **GET**: /container-security/entities/image-registry-credentials/v1
- **Description**: Gets the registry credentials

---

**Class**: `Falcon::FalconContainerCli`

- **Operation**: [**read_image_vulnerabilities**](docs/FalconContainerCli.md#read_image_vulnerabilities)
- **POST**: /image-assessment/combined/vulnerability-lookups/v1
- **Description**: Retrieve known vulnerabilities for the provided image

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**create_registry_entities**](docs/FalconContainerImage.md#create_registry_entities)
- **POST**: /container-security/entities/registries/v1
- **Description**: Create a registry entity using the provided details

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**delete_registry_entities**](docs/FalconContainerImage.md#delete_registry_entities)
- **DELETE**: /container-security/entities/registries/v1
- **Description**: Delete the registry entity identified by the entity UUID

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**download_export_file**](docs/FalconContainerImage.md#download_export_file)
- **GET**: /container-security/entities/exports/files/v1
- **Description**: Download an export file

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**launch_export_job**](docs/FalconContainerImage.md#launch_export_job)
- **POST**: /container-security/entities/exports/v1
- **Description**: Launch an export job of a Container Security resource. Maximum of 1 job in progress per resource

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**query_export_jobs**](docs/FalconContainerImage.md#query_export_jobs)
- **GET**: /container-security/queries/exports/v1
- **Description**: Query export jobs entities

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**read_export_jobs**](docs/FalconContainerImage.md#read_export_jobs)
- **GET**: /container-security/entities/exports/v1
- **Description**: Read export jobs entities

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**read_registry_entities**](docs/FalconContainerImage.md#read_registry_entities)
- **GET**: /container-security/queries/registries/v1
- **Description**: Retrieve registry entities identified by the customer id

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**read_registry_entities_by_uuid**](docs/FalconContainerImage.md#read_registry_entities_by_uuid)
- **GET**: /container-security/entities/registries/v1
- **Description**: Retrieve the registry entity identified by the entity UUID

---

**Class**: `Falcon::FalconContainerImage`

- **Operation**: [**update_registry_entities**](docs/FalconContainerImage.md#update_registry_entities)
- **PATCH**: /container-security/entities/registries/v1
- **Description**: Update the registry entity, as identified by the entity UUID, using the provided details

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**delete_report**](docs/FalconxSandbox.md#delete_report)
- **DELETE**: /falconx/entities/reports/v1
- **Description**: Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**delete_sample_v2**](docs/FalconxSandbox.md#delete_sample_v2)
- **DELETE**: /samples/entities/samples/v2
- **Description**: Removes a sample, including file, meta and submissions from the collection

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_artifacts**](docs/FalconxSandbox.md#get_artifacts)
- **GET**: /falconx/entities/artifacts/v1
- **Description**: Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_memory_dump**](docs/FalconxSandbox.md#get_memory_dump)
- **GET**: /falconx/entities/memory-dump/v1
- **Description**: Get memory dump content, as binary

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_memory_dump_extracted_strings**](docs/FalconxSandbox.md#get_memory_dump_extracted_strings)
- **GET**: /falconx/entities/memory-dump/extracted-strings/v1
- **Description**: Get extracted strings from a memory dump

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_memory_dump_hex_dump**](docs/FalconxSandbox.md#get_memory_dump_hex_dump)
- **GET**: /falconx/entities/memory-dump/hex-dump/v1
- **Description**: Get hex view of a memory dump

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_reports**](docs/FalconxSandbox.md#get_reports)
- **GET**: /falconx/entities/reports/v1
- **Description**: Get a full sandbox report.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_sample_v2**](docs/FalconxSandbox.md#get_sample_v2)
- **GET**: /samples/entities/samples/v2
- **Description**: Retrieves the file associated with the given ID (SHA256)

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_submissions**](docs/FalconxSandbox.md#get_submissions)
- **GET**: /falconx/entities/submissions/v1
- **Description**: Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**get_summary_reports**](docs/FalconxSandbox.md#get_summary_reports)
- **GET**: /falconx/entities/report-summaries/v1
- **Description**: Get a short summary version of a sandbox report.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**query_reports**](docs/FalconxSandbox.md#query_reports)
- **GET**: /falconx/queries/reports/v1
- **Description**: Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**query_sample_v1**](docs/FalconxSandbox.md#query_sample_v1)
- **POST**: /samples/queries/samples/GET/v1
- **Description**: Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**query_submissions_mixin0**](docs/FalconxSandbox.md#query_submissions_mixin0)
- **GET**: /falconx/queries/submissions/v1
- **Description**: Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**submit**](docs/FalconxSandbox.md#submit)
- **POST**: /falconx/entities/submissions/v1
- **Description**: Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.

---

**Class**: `Falcon::FalconxSandbox`

- **Operation**: [**upload_sample_v2**](docs/FalconxSandbox.md#upload_sample_v2)
- **POST**: /samples/entities/samples/v2
- **Description**: Upload a file for sandbox analysis. After uploading, use &#x60;/falconx/entities/submissions/v1&#x60; to start analyzing the file.

---

**Class**: `Falcon::FieldSchema`

- **Operation**: [**fdrschema_entities_field_get**](docs/FieldSchema.md#fdrschema_entities_field_get)
- **GET**: /fdr/entities/schema-fields/v1
- **Description**: Fetch field schema by ID

---

**Class**: `Falcon::FieldSchema`

- **Operation**: [**fdrschema_queries_field_get**](docs/FieldSchema.md#fdrschema_queries_field_get)
- **GET**: /fdr/queries/schema-fields/v1
- **Description**: Get list of field IDs given a particular query.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**create_policies_0**](docs/Filevantage.md#create_policies_0)
- **POST**: /filevantage/entities/policies/v1
- **Description**: Creates a new policy of the specified type. New policies are always added at the end of the precedence list for the provided policy type.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**create_rule_groups**](docs/Filevantage.md#create_rule_groups)
- **POST**: /filevantage/entities/rule-groups/v1
- **Description**: Creates a new rule group of the specified type.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**create_rules**](docs/Filevantage.md#create_rules)
- **POST**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Creates a new rule configuration within the specified rule group.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**create_scheduled_exclusions**](docs/Filevantage.md#create_scheduled_exclusions)
- **POST**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Creates a new scheduled exclusion configuration for the provided policy id.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**delete_policies**](docs/Filevantage.md#delete_policies)
- **DELETE**: /filevantage/entities/policies/v1
- **Description**: Deletes 1 or more policies.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**delete_rule_groups**](docs/Filevantage.md#delete_rule_groups)
- **DELETE**: /filevantage/entities/rule-groups/v1
- **Description**: Deletes 1 or more rule groups 

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**delete_rules**](docs/Filevantage.md#delete_rules)
- **DELETE**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Deletes 1 or more rules from the specified rule group.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**delete_scheduled_exclusions**](docs/Filevantage.md#delete_scheduled_exclusions)
- **DELETE**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Deletes 1 or more scheduled exclusions from the provided policy id.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_actions_mixin0**](docs/Filevantage.md#get_actions_mixin0)
- **GET**: /filevantage/entities/actions/v1
- **Description**: Retrieves the processing results for 1 or more actions.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_changes**](docs/Filevantage.md#get_changes)
- **GET**: /filevantage/entities/changes/v2
- **Description**: Retrieve information on changes

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_contents**](docs/Filevantage.md#get_contents)
- **GET**: /filevantage/entities/change-content/v1
- **Description**: Retrieves the content captured for the provided change id

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_policies**](docs/Filevantage.md#get_policies)
- **GET**: /filevantage/entities/policies/v1
- **Description**: Retrieves the configuration for 1 or more policies.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_rule_groups**](docs/Filevantage.md#get_rule_groups)
- **GET**: /filevantage/entities/rule-groups/v1
- **Description**: Retrieves the rule group details for 1 or more rule groups.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_rules**](docs/Filevantage.md#get_rules)
- **GET**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Retrieves the configuration for 1 or more rules.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**get_scheduled_exclusions**](docs/Filevantage.md#get_scheduled_exclusions)
- **GET**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Retrieves the configuration of 1 or more scheduled exclusions from the provided policy id.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**high_volume_query_changes**](docs/Filevantage.md#high_volume_query_changes)
- **GET**: /filevantage/queries/changes/v3
- **Description**: Returns 1 or more change ids

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**query_actions_mixin0**](docs/Filevantage.md#query_actions_mixin0)
- **GET**: /filevantage/queries/actions/v1
- **Description**: Returns one or more action ids

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**query_changes**](docs/Filevantage.md#query_changes)
- **GET**: /filevantage/queries/changes/v2
- **Description**: Returns 1 or more change ids

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**query_policies**](docs/Filevantage.md#query_policies)
- **GET**: /filevantage/queries/policies/v1
- **Description**: Retrieve the ids of all policies that are assigned the provided policy type.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**query_rule_groups**](docs/Filevantage.md#query_rule_groups)
- **GET**: /filevantage/queries/rule-groups/v1
- **Description**: Retrieve the ids of all rule groups that are of the provided rule group type.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**query_scheduled_exclusions**](docs/Filevantage.md#query_scheduled_exclusions)
- **GET**: /filevantage/queries/policy-scheduled-exclusions/v1
- **Description**: Retrieve the ids of all scheduled exclusions contained within the provided policy id.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**signal_changes_external**](docs/Filevantage.md#signal_changes_external)
- **POST**: /filevantage/entities/workflow/v1
- **Description**: Initiates workflows for the provided change ids

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**start_actions**](docs/Filevantage.md#start_actions)
- **POST**: /filevantage/entities/actions/v1
- **Description**: Initiates the specified action on the provided change ids

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_policies_0**](docs/Filevantage.md#update_policies_0)
- **PATCH**: /filevantage/entities/policies/v1
- **Description**: Updates the general information of the provided policy.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_policy_host_groups**](docs/Filevantage.md#update_policy_host_groups)
- **PATCH**: /filevantage/entities/policies-host-groups/v1
- **Description**: Manage host groups assigned to a policy.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_policy_precedence_0**](docs/Filevantage.md#update_policy_precedence_0)
- **PATCH**: /filevantage/entities/policies-precedence/v1
- **Description**: Updates the policy precedence for all policies of a specific type.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_policy_rule_groups**](docs/Filevantage.md#update_policy_rule_groups)
- **PATCH**: /filevantage/entities/policies-rule-groups/v1
- **Description**: Manage the rule groups assigned to the policy or set the rule group precedence for all rule groups within the policy.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_rule_group_precedence**](docs/Filevantage.md#update_rule_group_precedence)
- **PATCH**: /filevantage/entities/rule-groups-rule-precedence/v1
- **Description**: Updates the rule precedence for all rules in the identified rule group.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_rule_groups**](docs/Filevantage.md#update_rule_groups)
- **PATCH**: /filevantage/entities/rule-groups/v1
- **Description**: Updates the provided rule group.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_rules**](docs/Filevantage.md#update_rules)
- **PATCH**: /filevantage/entities/rule-groups-rules/v1
- **Description**: Updates the provided rule configuration within the specified rule group.

---

**Class**: `Falcon::Filevantage`

- **Operation**: [**update_scheduled_exclusions**](docs/Filevantage.md#update_scheduled_exclusions)
- **PATCH**: /filevantage/entities/policy-scheduled-exclusions/v1
- **Description**: Updates the provided scheduled exclusion configuration within the provided policy.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**aggregate_events**](docs/FirewallManagement.md#aggregate_events)
- **POST**: /fwmgr/aggregates/events/GET/v1
- **Description**: Aggregate events for customer

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**aggregate_policy_rules**](docs/FirewallManagement.md#aggregate_policy_rules)
- **POST**: /fwmgr/aggregates/policy-rules/GET/v1
- **Description**: Aggregate rules within a policy for customer

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**aggregate_rule_groups**](docs/FirewallManagement.md#aggregate_rule_groups)
- **POST**: /fwmgr/aggregates/rule-groups/GET/v1
- **Description**: Aggregate rule groups for customer

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**aggregate_rules**](docs/FirewallManagement.md#aggregate_rules)
- **POST**: /fwmgr/aggregates/rules/GET/v1
- **Description**: Aggregate rules for customer

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**create_network_locations**](docs/FirewallManagement.md#create_network_locations)
- **POST**: /fwmgr/entities/network-locations/v1
- **Description**: Create new network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**create_rule_group**](docs/FirewallManagement.md#create_rule_group)
- **POST**: /fwmgr/entities/rule-groups/v1
- **Description**: Create new rule group on a platform for a customer with a name and description, and return the ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**create_rule_group_validation**](docs/FirewallManagement.md#create_rule_group_validation)
- **POST**: /fwmgr/entities/rule-groups/validation/v1
- **Description**: Validates the request of creating a new rule group on a platform for a customer with a name and description

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**delete_network_locations**](docs/FirewallManagement.md#delete_network_locations)
- **DELETE**: /fwmgr/entities/network-locations/v1
- **Description**: Delete network location entities by ID.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**delete_rule_groups_0**](docs/FirewallManagement.md#delete_rule_groups_0)
- **DELETE**: /fwmgr/entities/rule-groups/v1
- **Description**: Delete rule group entities by ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_events**](docs/FirewallManagement.md#get_events)
- **GET**: /fwmgr/entities/events/v1
- **Description**: Get events entities by ID and optionally version

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_firewall_fields**](docs/FirewallManagement.md#get_firewall_fields)
- **GET**: /fwmgr/entities/firewall-fields/v1
- **Description**: Get the firewall field specifications by ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_network_locations**](docs/FirewallManagement.md#get_network_locations)
- **GET**: /fwmgr/entities/network-locations/v1
- **Description**: Get a summary of network locations entities by ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_network_locations_details**](docs/FirewallManagement.md#get_network_locations_details)
- **GET**: /fwmgr/entities/network-locations-details/v1
- **Description**: Get network locations entities by ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_platforms**](docs/FirewallManagement.md#get_platforms)
- **GET**: /fwmgr/entities/platforms/v1
- **Description**: Get platforms by ID, e.g., windows or mac or droid

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_policy_containers**](docs/FirewallManagement.md#get_policy_containers)
- **GET**: /fwmgr/entities/policies/v1
- **Description**: Get policy container entities by policy ID

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_rule_groups_0**](docs/FirewallManagement.md#get_rule_groups_0)
- **GET**: /fwmgr/entities/rule-groups/v1
- **Description**: Get rule group entities by ID. These groups do not contain their rule entites, just the rule IDs in precedence order.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**get_rules_0**](docs/FirewallManagement.md#get_rules_0)
- **GET**: /fwmgr/entities/rules/v1
- **Description**: Get rule entities by ID (64-bit unsigned int as decimal string) or Family ID (32-character hexadecimal string)

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_events**](docs/FirewallManagement.md#query_events)
- **GET**: /fwmgr/queries/events/v1
- **Description**: Find all event IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_firewall_fields**](docs/FirewallManagement.md#query_firewall_fields)
- **GET**: /fwmgr/queries/firewall-fields/v1
- **Description**: Get the firewall field specification IDs for the provided platform

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_network_locations**](docs/FirewallManagement.md#query_network_locations)
- **GET**: /fwmgr/queries/network-locations/v1
- **Description**: Get a list of network location IDs

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_platforms**](docs/FirewallManagement.md#query_platforms)
- **GET**: /fwmgr/queries/platforms/v1
- **Description**: Get the list of platform names

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_policy_rules**](docs/FirewallManagement.md#query_policy_rules)
- **GET**: /fwmgr/queries/policy-rules/v1
- **Description**: Find all firewall rule IDs matching the query with filter, and return them in precedence order

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_rule_groups_0**](docs/FirewallManagement.md#query_rule_groups_0)
- **GET**: /fwmgr/queries/rule-groups/v1
- **Description**: Find all rule group IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**query_rules**](docs/FirewallManagement.md#query_rules)
- **GET**: /fwmgr/queries/rules/v1
- **Description**: Find all rule IDs matching the query with filter

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_network_locations**](docs/FirewallManagement.md#update_network_locations)
- **PATCH**: /fwmgr/entities/network-locations/v1
- **Description**: Updates the network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_network_locations_metadata**](docs/FirewallManagement.md#update_network_locations_metadata)
- **POST**: /fwmgr/entities/network-locations-metadata/v1
- **Description**: Updates the network locations metadata such as polling_intervals for the cid

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_network_locations_precedence**](docs/FirewallManagement.md#update_network_locations_precedence)
- **POST**: /fwmgr/entities/network-locations-precedence/v1
- **Description**: Updates the network locations precedence according to the list of ids provided.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_policy_container**](docs/FirewallManagement.md#update_policy_container)
- **PUT**: /fwmgr/entities/policies/v2
- **Description**: Update an identified policy container, including local logging functionality.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_policy_container_v1**](docs/FirewallManagement.md#update_policy_container_v1)
- **PUT**: /fwmgr/entities/policies/v1
- **Description**: Update an identified policy container. WARNING: This endpoint is deprecated in favor of v2, using this endpoint could disable your local logging setting.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_rule_group**](docs/FirewallManagement.md#update_rule_group)
- **PATCH**: /fwmgr/entities/rule-groups/v1
- **Description**: Update name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**update_rule_group_validation**](docs/FirewallManagement.md#update_rule_group_validation)
- **PATCH**: /fwmgr/entities/rule-groups/validation/v1
- **Description**: Validates the request of updating name, description, or enabled status of a rule group, or create, edit, delete, or reorder rules

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**upsert_network_locations**](docs/FirewallManagement.md#upsert_network_locations)
- **PUT**: /fwmgr/entities/network-locations/v1
- **Description**: Updates the network locations provided, and return the ID.

---

**Class**: `Falcon::FirewallManagement`

- **Operation**: [**validate_filepath_pattern**](docs/FirewallManagement.md#validate_filepath_pattern)
- **POST**: /fwmgr/entities/rules/validate-filepath/v1
- **Description**: Validates that the test pattern matches the executable filepath glob pattern.

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**create_firewall_policies**](docs/FirewallPolicies.md#create_firewall_policies)
- **POST**: /policy/entities/firewall/v1
- **Description**: Create Firewall Policies by specifying details about the policy to create

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**delete_firewall_policies**](docs/FirewallPolicies.md#delete_firewall_policies)
- **DELETE**: /policy/entities/firewall/v1
- **Description**: Delete a set of Firewall Policies by specifying their IDs

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**get_firewall_policies**](docs/FirewallPolicies.md#get_firewall_policies)
- **GET**: /policy/entities/firewall/v1
- **Description**: Retrieve a set of Firewall Policies by specifying their IDs

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**perform_firewall_policies_action**](docs/FirewallPolicies.md#perform_firewall_policies_action)
- **POST**: /policy/entities/firewall-actions/v1
- **Description**: Perform the specified action on the Firewall Policies specified in the request

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**query_combined_firewall_policies**](docs/FirewallPolicies.md#query_combined_firewall_policies)
- **GET**: /policy/combined/firewall/v1
- **Description**: Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policies which match the filter criteria

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**query_combined_firewall_policy_members**](docs/FirewallPolicies.md#query_combined_firewall_policy_members)
- **GET**: /policy/combined/firewall-members/v1
- **Description**: Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**query_firewall_policies**](docs/FirewallPolicies.md#query_firewall_policies)
- **GET**: /policy/queries/firewall/v1
- **Description**: Search for Firewall Policies in your environment by providing an FQL filter and paging details. Returns a set of Firewall Policy IDs which match the filter criteria

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**query_firewall_policy_members**](docs/FirewallPolicies.md#query_firewall_policy_members)
- **GET**: /policy/queries/firewall-members/v1
- **Description**: Search for members of a Firewall Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**set_firewall_policies_precedence**](docs/FirewallPolicies.md#set_firewall_policies_precedence)
- **POST**: /policy/entities/firewall-precedence/v1
- **Description**: Sets the precedence of Firewall Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::FirewallPolicies`

- **Operation**: [**update_firewall_policies**](docs/FirewallPolicies.md#update_firewall_policies)
- **PATCH**: /policy/entities/firewall/v1
- **Description**: Update Firewall Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_dynamic_execute_alt_v1**](docs/FoundryLogscale.md#create_saved_searches_dynamic_execute_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-dynamic-execute/v1
- **Description**: Execute a dynamic saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_dynamic_execute_v1**](docs/FoundryLogscale.md#create_saved_searches_dynamic_execute_v1)
- **POST**: /loggingapi/entities/saved-searches/execute-dynamic/v1
- **Description**: Execute a dynamic saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_execute_alt_v1**](docs/FoundryLogscale.md#create_saved_searches_execute_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-execute/v1
- **Description**: Execute a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_execute_v1**](docs/FoundryLogscale.md#create_saved_searches_execute_v1)
- **POST**: /loggingapi/entities/saved-searches/execute/v1
- **Description**: Execute a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_ingest_alt_v1**](docs/FoundryLogscale.md#create_saved_searches_ingest_alt_v1)
- **POST**: /loggingapi/entities/saved-searches-ingest/v1
- **Description**: Populate a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**create_saved_searches_ingest_v1**](docs/FoundryLogscale.md#create_saved_searches_ingest_v1)
- **POST**: /loggingapi/entities/saved-searches/ingest/v1
- **Description**: Populate a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**get_saved_searches_execute_alt_v1**](docs/FoundryLogscale.md#get_saved_searches_execute_alt_v1)
- **GET**: /loggingapi/entities/saved-searches-execute/v1
- **Description**: Get the results of a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**get_saved_searches_execute_v1**](docs/FoundryLogscale.md#get_saved_searches_execute_v1)
- **GET**: /loggingapi/entities/saved-searches/execute/v1
- **Description**: Get the results of a saved search

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**get_saved_searches_job_results_download_alt_v1**](docs/FoundryLogscale.md#get_saved_searches_job_results_download_alt_v1)
- **GET**: /loggingapi/entities/saved-searches-job-results-download/v1
- **Description**: Get the results of a saved search as a file

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**get_saved_searches_job_results_download_v1**](docs/FoundryLogscale.md#get_saved_searches_job_results_download_v1)
- **GET**: /loggingapi/entities/saved-searches/job-results-download/v1
- **Description**: Get the results of a saved search as a file

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**ingest_data_async_v1**](docs/FoundryLogscale.md#ingest_data_async_v1)
- **POST**: /loggingapi/entities/data-ingestion/ingest-async/v1
- **Description**: Asynchronously ingest data into the application repository

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**ingest_data_v1**](docs/FoundryLogscale.md#ingest_data_v1)
- **POST**: /loggingapi/entities/data-ingestion/ingest/v1
- **Description**: Synchronously ingest data into the application repository

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**list_repos_v1**](docs/FoundryLogscale.md#list_repos_v1)
- **GET**: /loggingapi/combined/repos/v1
- **Description**: Lists available repositories and views

---

**Class**: `Falcon::FoundryLogscale`

- **Operation**: [**list_view_v1**](docs/FoundryLogscale.md#list_view_v1)
- **GET**: /loggingapi/entities/views/v1
- **Description**: List views

---

**Class**: `Falcon::Handle`

- **Operation**: [**handle**](docs/Handle.md#handle)
- **POST**: /data-security-dspm/entities/kafka-rest-produce/v1
- **Description**: 

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**create_host_groups**](docs/HostGroup.md#create_host_groups)
- **POST**: /devices/entities/host-groups/v1
- **Description**: Create Host Groups by specifying details about the group to create

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**delete_host_groups**](docs/HostGroup.md#delete_host_groups)
- **DELETE**: /devices/entities/host-groups/v1
- **Description**: Delete a set of Host Groups by specifying their IDs

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**get_host_groups**](docs/HostGroup.md#get_host_groups)
- **GET**: /devices/entities/host-groups/v1
- **Description**: Retrieve a set of Host Groups by specifying their IDs

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**perform_group_action**](docs/HostGroup.md#perform_group_action)
- **POST**: /devices/entities/host-group-actions/v1
- **Description**: Perform the specified action on the Host Groups specified in the request

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**query_combined_group_members**](docs/HostGroup.md#query_combined_group_members)
- **GET**: /devices/combined/host-group-members/v1
- **Description**: Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**query_combined_host_groups**](docs/HostGroup.md#query_combined_host_groups)
- **GET**: /devices/combined/host-groups/v1
- **Description**: Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Groups which match the filter criteria

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**query_group_members**](docs/HostGroup.md#query_group_members)
- **GET**: /devices/queries/host-group-members/v1
- **Description**: Search for members of a Host Group in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**query_host_groups**](docs/HostGroup.md#query_host_groups)
- **GET**: /devices/queries/host-groups/v1
- **Description**: Search for Host Groups in your environment by providing an FQL filter and paging details. Returns a set of Host Group IDs which match the filter criteria

---

**Class**: `Falcon::HostGroup`

- **Operation**: [**update_host_groups**](docs/HostGroup.md#update_host_groups)
- **PATCH**: /devices/entities/host-groups/v1
- **Description**: Update Host Groups by specifying the ID of the group and details to update

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**create_migration_v1**](docs/HostMigration.md#create_migration_v1)
- **POST**: /host-migration/entities/migrations/v1
- **Description**: Create a device migration job.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**get_host_migration_ids_v1**](docs/HostMigration.md#get_host_migration_ids_v1)
- **GET**: /host-migration/queries/host-migrations/v1
- **Description**: Query host migration IDs.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**get_host_migrations_v1**](docs/HostMigration.md#get_host_migrations_v1)
- **POST**: /host-migration/entities/host-migrations/GET/v1
- **Description**: Get host migration details.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**get_migration_destinations_v1**](docs/HostMigration.md#get_migration_destinations_v1)
- **POST**: /host-migration/entities/migration-destinations/GET/v1
- **Description**: Get destinations for a migration.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**get_migration_ids_v1**](docs/HostMigration.md#get_migration_ids_v1)
- **GET**: /host-migration/queries/migrations/v1
- **Description**: Query migration jobs.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**get_migrations_v1**](docs/HostMigration.md#get_migrations_v1)
- **GET**: /host-migration/entities/migrations/v1
- **Description**: Get migration job details.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**host_migration_aggregates_v1**](docs/HostMigration.md#host_migration_aggregates_v1)
- **POST**: /host-migration/aggregates/host-migrations/v1
- **Description**: Get host migration aggregates as specified via json in request body.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**host_migrations_actions_v1**](docs/HostMigration.md#host_migrations_actions_v1)
- **POST**: /host-migration/entities/host-migrations-actions/v1
- **Description**: Perform an action on host migrations.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**migration_aggregates_v1**](docs/HostMigration.md#migration_aggregates_v1)
- **POST**: /host-migration/aggregates/migrations/v1
- **Description**: Get migration aggregates as specified via json in request body.

---

**Class**: `Falcon::HostMigration`

- **Operation**: [**migrations_actions_v1**](docs/HostMigration.md#migrations_actions_v1)
- **POST**: /host-migration/entities/migrations-actions/v1
- **Description**: Perform an action on a migration job.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**entities_perform_action**](docs/Hosts.md#entities_perform_action)
- **POST**: /devices/entities/group-actions/v1
- **Description**: Performs the specified action on the provided group IDs.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**get_device_details_v2**](docs/Hosts.md#get_device_details_v2)
- **GET**: /devices/entities/devices/v2
- **Description**: Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**get_online_state_v1**](docs/Hosts.md#get_online_state_v1)
- **GET**: /devices/entities/online-state/v1
- **Description**: Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a &#x60;state&#x60; of &#x60;online&#x60;, &#x60;offline&#x60;, or &#x60;unknown&#x60; for each host, identified by host &#x60;id&#x60;.  Make a &#x60;GET&#x60; request to &#x60;/devices/queries/devices/v1&#x60; to get a list of host IDs.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**perform_action_v2**](docs/Hosts.md#perform_action_v2)
- **POST**: /devices/entities/devices-actions/v2
- **Description**: Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**post_device_details_v2**](docs/Hosts.md#post_device_details_v2)
- **POST**: /devices/entities/devices/v2
- **Description**: Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_device_login_history**](docs/Hosts.md#query_device_login_history)
- **POST**: /devices/combined/devices/login-history/v1
- **Description**: Retrieve details about recent login sessions for a set of devices.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_device_login_history_v2**](docs/Hosts.md#query_device_login_history_v2)
- **POST**: /devices/combined/devices/login-history/v2
- **Description**: Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_devices_by_filter**](docs/Hosts.md#query_devices_by_filter)
- **GET**: /devices/queries/devices/v1
- **Description**: Search for hosts in your environment by platform, hostname, IP, and other criteria.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_devices_by_filter_scroll**](docs/Hosts.md#query_devices_by_filter_scroll)
- **GET**: /devices/queries/devices-scroll/v1
- **Description**: Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_get_network_address_history_v1**](docs/Hosts.md#query_get_network_address_history_v1)
- **POST**: /devices/combined/devices/network-address-history/v1
- **Description**: Retrieve history of IP and MAC addresses of devices.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**query_hidden_devices**](docs/Hosts.md#query_hidden_devices)
- **GET**: /devices/queries/devices-hidden/v1
- **Description**: Retrieve hidden hosts that match the provided filter criteria.

---

**Class**: `Falcon::Hosts`

- **Operation**: [**update_device_tags**](docs/Hosts.md#update_device_tags)
- **PATCH**: /devices/entities/devices/tags/v1
- **Description**: Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**get_lookup_from_package_v1**](docs/HumioAuthProxy.md#get_lookup_from_package_v1)
- **GET**: /humio/api/v1/repositories/{repository}/files/{package}/{filename}
- **Description**: Download lookup file in package from NGSIEM

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**get_lookup_from_package_with_namespace_v1**](docs/HumioAuthProxy.md#get_lookup_from_package_with_namespace_v1)
- **GET**: /humio/api/v1/repositories/{repository}/files/{namespace}/{package}/{filename}
- **Description**: Download lookup file in namespaced package from NGSIEM

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**get_lookup_v1**](docs/HumioAuthProxy.md#get_lookup_v1)
- **GET**: /humio/api/v1/repositories/{repository}/files/{filename}
- **Description**: Download lookup file from NGSIEM

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**get_search_status_v1**](docs/HumioAuthProxy.md#get_search_status_v1)
- **GET**: /humio/api/v1/repositories/{repository}/queryjobs/{id}
- **Description**: Get status of search

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**start_search_v1**](docs/HumioAuthProxy.md#start_search_v1)
- **POST**: /humio/api/v1/repositories/{repository}/queryjobs
- **Description**: Initiate search

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**stop_search_v1**](docs/HumioAuthProxy.md#stop_search_v1)
- **DELETE**: /humio/api/v1/repositories/{repository}/queryjobs/{id}
- **Description**: Stop search

---

**Class**: `Falcon::HumioAuthProxy`

- **Operation**: [**upload_lookup_v1**](docs/HumioAuthProxy.md#upload_lookup_v1)
- **POST**: /humio/api/v1/repositories/{repository}/files
- **Description**: Upload file to NGSIEM

---

**Class**: `Falcon::IdentityEntities`

- **Operation**: [**get_sensor_aggregates**](docs/IdentityEntities.md#get_sensor_aggregates)
- **POST**: /identity-protection/aggregates/devices/GET/v1
- **Description**: Get sensor aggregates as specified via json in request body.

---

**Class**: `Falcon::IdentityEntities`

- **Operation**: [**get_sensor_details**](docs/IdentityEntities.md#get_sensor_details)
- **POST**: /identity-protection/entities/devices/GET/v1
- **Description**: Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.

---

**Class**: `Falcon::IdentityEntities`

- **Operation**: [**query_sensors_by_filter**](docs/IdentityEntities.md#query_sensors_by_filter)
- **GET**: /identity-protection/queries/devices/v1
- **Description**: Search for sensors in your environment by hostname, IP, and other criteria.

---

**Class**: `Falcon::IdentityProtection`

- **Operation**: [**api_preempt_proxy_delete_policy_rules**](docs/IdentityProtection.md#api_preempt_proxy_delete_policy_rules)
- **DELETE**: /identity-protection/entities/policy-rules/v1
- **Description**: Delete policy rules

---

**Class**: `Falcon::IdentityProtection`

- **Operation**: [**api_preempt_proxy_get_policy_rules**](docs/IdentityProtection.md#api_preempt_proxy_get_policy_rules)
- **GET**: /identity-protection/entities/policy-rules/v1
- **Description**: Get policy rules

---

**Class**: `Falcon::IdentityProtection`

- **Operation**: [**api_preempt_proxy_get_policy_rules_query**](docs/IdentityProtection.md#api_preempt_proxy_get_policy_rules_query)
- **GET**: /identity-protection/queries/policy-rules/v1
- **Description**: Query policy rule IDs

---

**Class**: `Falcon::IdentityProtection`

- **Operation**: [**api_preempt_proxy_post_graphql**](docs/IdentityProtection.md#api_preempt_proxy_post_graphql)
- **POST**: /identity-protection/combined/graphql/v1
- **Description**: Identity Protection GraphQL API. Allows to retrieve entities, timeline activities, identity-based incidents and security assessment. Allows to perform actions on entities and identity-based incidents.

---

**Class**: `Falcon::IdentityProtection`

- **Operation**: [**api_preempt_proxy_post_policy_rules**](docs/IdentityProtection.md#api_preempt_proxy_post_policy_rules)
- **POST**: /identity-protection/entities/policy-rules/v1
- **Description**: Create policy rule

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**create_policies**](docs/ImageAssessmentPolicies.md#create_policies)
- **POST**: /container-security/entities/image-assessment-policies/v1
- **Description**: Create Image Assessment policies

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**create_policy_groups**](docs/ImageAssessmentPolicies.md#create_policy_groups)
- **POST**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Create Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**delete_policy**](docs/ImageAssessmentPolicies.md#delete_policy)
- **DELETE**: /container-security/entities/image-assessment-policies/v1
- **Description**: Delete Image Assessment Policy by policy UUID

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**delete_policy_group**](docs/ImageAssessmentPolicies.md#delete_policy_group)
- **DELETE**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Delete Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**read_policies**](docs/ImageAssessmentPolicies.md#read_policies)
- **GET**: /container-security/entities/image-assessment-policies/v1
- **Description**: Get all Image Assessment policies

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**read_policy_exclusions**](docs/ImageAssessmentPolicies.md#read_policy_exclusions)
- **GET**: /container-security/entities/image-assessment-policy-exclusions/v1
- **Description**: Retrieve Image Assessment Policy Exclusion entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**read_policy_groups**](docs/ImageAssessmentPolicies.md#read_policy_groups)
- **GET**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Retrieve Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**update_policies**](docs/ImageAssessmentPolicies.md#update_policies)
- **PATCH**: /container-security/entities/image-assessment-policies/v1
- **Description**: Update Image Assessment Policy entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**update_policy_exclusions**](docs/ImageAssessmentPolicies.md#update_policy_exclusions)
- **POST**: /container-security/entities/image-assessment-policy-exclusions/v1
- **Description**: Update Image Assessment Policy Exclusion entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**update_policy_groups**](docs/ImageAssessmentPolicies.md#update_policy_groups)
- **PATCH**: /container-security/entities/image-assessment-policy-groups/v1
- **Description**: Update Image Assessment Policy Group entities

---

**Class**: `Falcon::ImageAssessmentPolicies`

- **Operation**: [**update_policy_precedence**](docs/ImageAssessmentPolicies.md#update_policy_precedence)
- **POST**: /container-security/entities/image-assessment-policy-precedence/v1
- **Description**: Update Image Assessment Policy precedence

---

**Class**: `Falcon::Incidents`

- **Operation**: [**crowd_score**](docs/Incidents.md#crowd_score)
- **GET**: /incidents/combined/crowdscores/v1
- **Description**: Query environment wide CrowdScore and return the entity data

---

**Class**: `Falcon::Incidents`

- **Operation**: [**get_behaviors**](docs/Incidents.md#get_behaviors)
- **POST**: /incidents/entities/behaviors/GET/v1
- **Description**: Get details on behaviors by providing behavior IDs

---

**Class**: `Falcon::Incidents`

- **Operation**: [**get_incidents**](docs/Incidents.md#get_incidents)
- **POST**: /incidents/entities/incidents/GET/v1
- **Description**: Get details on incidents by providing incident IDs

---

**Class**: `Falcon::Incidents`

- **Operation**: [**perform_incident_action**](docs/Incidents.md#perform_incident_action)
- **POST**: /incidents/entities/incident-actions/v1
- **Description**: Perform a set of actions on one or more incidents, such as adding tags or comments or updating the incident name or description

---

**Class**: `Falcon::Incidents`

- **Operation**: [**query_behaviors**](docs/Incidents.md#query_behaviors)
- **GET**: /incidents/queries/behaviors/v1
- **Description**: Search for behaviors by providing an FQL filter, sorting, and paging details

---

**Class**: `Falcon::Incidents`

- **Operation**: [**query_incidents**](docs/Incidents.md#query_incidents)
- **GET**: /incidents/queries/incidents/v1
- **Description**: Search for incidents by providing an FQL filter, sorting, and paging details

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**audit_events_query**](docs/InstallationTokens.md#audit_events_query)
- **GET**: /installation-tokens/queries/audit-events/v1
- **Description**: Search for audit events by providing an FQL filter and paging details.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**audit_events_read**](docs/InstallationTokens.md#audit_events_read)
- **GET**: /installation-tokens/entities/audit-events/v1
- **Description**: Gets the details of one or more audit events by id.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**customer_settings_read**](docs/InstallationTokens.md#customer_settings_read)
- **GET**: /installation-tokens/entities/customer-settings/v1
- **Description**: Check current installation token settings.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**tokens_create**](docs/InstallationTokens.md#tokens_create)
- **POST**: /installation-tokens/entities/tokens/v1
- **Description**: Creates a token.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**tokens_delete**](docs/InstallationTokens.md#tokens_delete)
- **DELETE**: /installation-tokens/entities/tokens/v1
- **Description**: Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**tokens_query**](docs/InstallationTokens.md#tokens_query)
- **GET**: /installation-tokens/queries/tokens/v1
- **Description**: Search for tokens by providing an FQL filter and paging details.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**tokens_read**](docs/InstallationTokens.md#tokens_read)
- **GET**: /installation-tokens/entities/tokens/v1
- **Description**: Gets the details of one or more tokens by id.

---

**Class**: `Falcon::InstallationTokens`

- **Operation**: [**tokens_update**](docs/InstallationTokens.md#tokens_update)
- **PATCH**: /installation-tokens/entities/tokens/v1
- **Description**: Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.

---

**Class**: `Falcon::InstallationTokensSettings`

- **Operation**: [**customer_settings_update**](docs/InstallationTokensSettings.md#customer_settings_update)
- **PATCH**: /installation-tokens/entities/customer-settings/v1
- **Description**: Update installation token settings.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_actor_entities**](docs/Intel.md#get_intel_actor_entities)
- **GET**: /intel/entities/actors/v1
- **Description**: Retrieve specific actors using their actor IDs.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_indicator_entities**](docs/Intel.md#get_intel_indicator_entities)
- **POST**: /intel/entities/indicators/GET/v1
- **Description**: Retrieve specific indicators using their indicator IDs.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_report_entities**](docs/Intel.md#get_intel_report_entities)
- **GET**: /intel/entities/reports/v1
- **Description**: Retrieve specific reports using their report IDs.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_report_pdf**](docs/Intel.md#get_intel_report_pdf)
- **GET**: /intel/entities/report-files/v1
- **Description**: Return a Report PDF attachment

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_rule_entities**](docs/Intel.md#get_intel_rule_entities)
- **GET**: /intel/entities/rules/v1
- **Description**: Retrieve details for rule sets for the specified ids.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_intel_rule_file**](docs/Intel.md#get_intel_rule_file)
- **GET**: /intel/entities/rules-files/v1
- **Description**: Download earlier rule sets.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_latest_intel_rule_file**](docs/Intel.md#get_latest_intel_rule_file)
- **GET**: /intel/entities/rules-latest-files/v1
- **Description**: Download the latest rule set.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_malware_entities**](docs/Intel.md#get_malware_entities)
- **GET**: /intel/entities/malware/v1
- **Description**: Get malware entities for specified ids.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_malware_mitre_report**](docs/Intel.md#get_malware_mitre_report)
- **GET**: /intel/entities/malware-mitre-reports/v1
- **Description**: Export Mitre ATT&amp;CK information for a given malware family.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_mitre_report**](docs/Intel.md#get_mitre_report)
- **GET**: /intel/entities/mitre-reports/v1
- **Description**: Export Mitre ATT&amp;CK information for a given actor.

---

**Class**: `Falcon::Intel`

- **Operation**: [**get_vulnerabilities**](docs/Intel.md#get_vulnerabilities)
- **POST**: /intel/entities/vulnerabilities/GET/v1
- **Description**: Get vulnerabilities

---

**Class**: `Falcon::Intel`

- **Operation**: [**post_mitre_attacks**](docs/Intel.md#post_mitre_attacks)
- **POST**: /intel/entities/mitre/v1
- **Description**: Retrieves report and observable IDs associated with the given actor and attacks

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_actor_entities**](docs/Intel.md#query_intel_actor_entities)
- **GET**: /intel/combined/actors/v1
- **Description**: Get info about actors that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_actor_ids**](docs/Intel.md#query_intel_actor_ids)
- **GET**: /intel/queries/actors/v1
- **Description**: Get actor IDs that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_indicator_entities**](docs/Intel.md#query_intel_indicator_entities)
- **GET**: /intel/combined/indicators/v1
- **Description**: Get info about indicators that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_indicator_ids**](docs/Intel.md#query_intel_indicator_ids)
- **GET**: /intel/queries/indicators/v1
- **Description**: Get indicators IDs that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_report_entities**](docs/Intel.md#query_intel_report_entities)
- **GET**: /intel/combined/reports/v1
- **Description**: Get info about reports that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_report_ids**](docs/Intel.md#query_intel_report_ids)
- **GET**: /intel/queries/reports/v1
- **Description**: Get report IDs that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_intel_rule_ids**](docs/Intel.md#query_intel_rule_ids)
- **GET**: /intel/queries/rules/v1
- **Description**: Search for rule IDs that match provided filter criteria.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_malware**](docs/Intel.md#query_malware)
- **GET**: /intel/queries/malware/v1
- **Description**: Get malware family names that match provided FQL filters.

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_mitre_attacks**](docs/Intel.md#query_mitre_attacks)
- **GET**: /intel/queries/mitre/v1
- **Description**: Gets MITRE tactics and techniques for the given actor, returning concatenation of id and tactic and technique ids, example: fancy-bear_TA0011_T1071

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_mitre_attacks_for_malware**](docs/Intel.md#query_mitre_attacks_for_malware)
- **GET**: /intel/queries/mitre-malware/v1
- **Description**: Gets MITRE tactics and techniques for the given malware

---

**Class**: `Falcon::Intel`

- **Operation**: [**query_vulnerabilities**](docs/Intel.md#query_vulnerabilities)
- **GET**: /intel/queries/vulnerabilities/v1
- **Description**: Get vulnerabilities IDs

---

**Class**: `Falcon::IoaExclusions`

- **Operation**: [**create_ioa_exclusions_v1**](docs/IoaExclusions.md#create_ioa_exclusions_v1)
- **POST**: /policy/entities/ioa-exclusions/v1
- **Description**: Create the IOA exclusions

---

**Class**: `Falcon::IoaExclusions`

- **Operation**: [**delete_ioa_exclusions_v1**](docs/IoaExclusions.md#delete_ioa_exclusions_v1)
- **DELETE**: /policy/entities/ioa-exclusions/v1
- **Description**: Delete the IOA exclusions by id

---

**Class**: `Falcon::IoaExclusions`

- **Operation**: [**get_ioa_exclusions_v1**](docs/IoaExclusions.md#get_ioa_exclusions_v1)
- **GET**: /policy/entities/ioa-exclusions/v1
- **Description**: Get a set of IOA Exclusions by specifying their IDs

---

**Class**: `Falcon::IoaExclusions`

- **Operation**: [**query_ioa_exclusions_v1**](docs/IoaExclusions.md#query_ioa_exclusions_v1)
- **GET**: /policy/queries/ioa-exclusions/v1
- **Description**: Search for IOA exclusions.

---

**Class**: `Falcon::IoaExclusions`

- **Operation**: [**update_ioa_exclusions_v1**](docs/IoaExclusions.md#update_ioa_exclusions_v1)
- **PATCH**: /policy/entities/ioa-exclusions/v1
- **Description**: Update the IOA exclusions

---

**Class**: `Falcon::Ioc`

- **Operation**: [**action_get_v1**](docs/Ioc.md#action_get_v1)
- **GET**: /iocs/entities/actions/v1
- **Description**: Get Actions by ids.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**action_query_v1**](docs/Ioc.md#action_query_v1)
- **GET**: /iocs/queries/actions/v1
- **Description**: Query Actions.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**get_indicators_report**](docs/Ioc.md#get_indicators_report)
- **POST**: /iocs/entities/indicators-reports/v1
- **Description**: Launch an indicators report creation job

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_aggregate_v1**](docs/Ioc.md#indicator_aggregate_v1)
- **POST**: /iocs/aggregates/indicators/v1
- **Description**: Get Indicators aggregates as specified via json in the request body.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_combined_v1**](docs/Ioc.md#indicator_combined_v1)
- **GET**: /iocs/combined/indicator/v1
- **Description**: Get Combined for Indicators.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_create_v1**](docs/Ioc.md#indicator_create_v1)
- **POST**: /iocs/entities/indicators/v1
- **Description**: Create Indicators.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_delete_v1**](docs/Ioc.md#indicator_delete_v1)
- **DELETE**: /iocs/entities/indicators/v1
- **Description**: Delete Indicators by ids.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_get_device_count_v1**](docs/Ioc.md#indicator_get_device_count_v1)
- **GET**: /iocs/aggregates/indicators/device-count/v1
- **Description**: Get the number of devices the indicator has run on

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_get_devices_ran_on_v1**](docs/Ioc.md#indicator_get_devices_ran_on_v1)
- **GET**: /iocs/queries/indicators/devices/v1
- **Description**: Get the IDs of devices the indicator has run on

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_get_processes_ran_on_v1**](docs/Ioc.md#indicator_get_processes_ran_on_v1)
- **GET**: /iocs/queries/indicators/processes/v1
- **Description**: Get the number of processes the indicator has run on

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_get_v1**](docs/Ioc.md#indicator_get_v1)
- **GET**: /iocs/entities/indicators/v1
- **Description**: Get Indicators by ids.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_search_v1**](docs/Ioc.md#indicator_search_v1)
- **GET**: /iocs/queries/indicators/v1
- **Description**: Search for Indicators.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**indicator_update_v1**](docs/Ioc.md#indicator_update_v1)
- **PATCH**: /iocs/entities/indicators/v1
- **Description**: Update Indicators.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**ioc_type_query_v1**](docs/Ioc.md#ioc_type_query_v1)
- **GET**: /iocs/queries/ioc-types/v1
- **Description**: Query IOC Types.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**platform_query_v1**](docs/Ioc.md#platform_query_v1)
- **GET**: /iocs/queries/platforms/v1
- **Description**: Query Platforms.

---

**Class**: `Falcon::Ioc`

- **Operation**: [**severity_query_v1**](docs/Ioc.md#severity_query_v1)
- **GET**: /iocs/queries/severities/v1
- **Description**: Query Severities.

---

**Class**: `Falcon::Iocs`

- **Operation**: [**devices_count**](docs/Iocs.md#devices_count)
- **GET**: /indicators/aggregates/devices-count/v1
- **Description**: Number of hosts in your customer account that have observed a given custom IOC

---

**Class**: `Falcon::Iocs`

- **Operation**: [**devices_ran_on**](docs/Iocs.md#devices_ran_on)
- **GET**: /indicators/queries/devices/v1
- **Description**: Find hosts that have observed a given custom IOC. For details about those hosts, use GET /devices/entities/devices/v1

---

**Class**: `Falcon::Iocs`

- **Operation**: [**entities_processes**](docs/Iocs.md#entities_processes)
- **GET**: /processes/entities/processes/v1
- **Description**: For the provided ProcessID retrieve the process details

---

**Class**: `Falcon::Iocs`

- **Operation**: [**processes_ran_on**](docs/Iocs.md#processes_ran_on)
- **GET**: /indicators/queries/processes/v1
- **Description**: Search for processes associated with a custom IOC

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**create_aws_account**](docs/KubernetesProtection.md#create_aws_account)
- **POST**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Creates a new AWS account in our system for a customer and generates the installation script

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**create_azure_subscription**](docs/KubernetesProtection.md#create_azure_subscription)
- **POST**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Creates a new Azure Subscription in our system

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**delete_aws_accounts_mixin0**](docs/KubernetesProtection.md#delete_aws_accounts_mixin0)
- **DELETE**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Delete AWS accounts.

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**delete_azure_subscription**](docs/KubernetesProtection.md#delete_azure_subscription)
- **DELETE**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Deletes a new Azure Subscription in our system

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**find_containers_by_container_run_time_version**](docs/KubernetesProtection.md#find_containers_by_container_run_time_version)
- **GET**: /container-security/aggregates/containers/find-by-runtimeversion/v1
- **Description**: Retrieve containers by container_runtime_version

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**find_containers_count_affected_by_zero_day_vulnerabilities**](docs/KubernetesProtection.md#find_containers_count_affected_by_zero_day_vulnerabilities)
- **GET**: /container-security/aggregates/containers/count-by-zero-day/v1
- **Description**: Retrieve containers count affected by zero day vulnerabilities

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_aws_accounts_mixin0**](docs/KubernetesProtection.md#get_aws_accounts_mixin0)
- **GET**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Provides a list of AWS accounts.

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_azure_install_script**](docs/KubernetesProtection.md#get_azure_install_script)
- **GET**: /kubernetes-protection/entities/user-script/azure/v1
- **Description**: Provides the script to run for a given tenant id and subscription IDs

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_azure_tenant_config**](docs/KubernetesProtection.md#get_azure_tenant_config)
- **GET**: /kubernetes-protection/entities/config/azure/v1
- **Description**: Gets the Azure tenant Config

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_azure_tenant_ids**](docs/KubernetesProtection.md#get_azure_tenant_ids)
- **GET**: /kubernetes-protection/entities/tenants/azure/v1
- **Description**: Provides all the azure subscriptions and tenants

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_clusters**](docs/KubernetesProtection.md#get_clusters)
- **GET**: /kubernetes-protection/entities/kubernetes/clusters/v1
- **Description**: Provides the clusters acknowledged by the Kubernetes Protection service

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_combined_cloud_clusters**](docs/KubernetesProtection.md#get_combined_cloud_clusters)
- **GET**: /kubernetes-protection/entities/cloud_cluster/v1
- **Description**: Returns a combined list of provisioned cloud accounts and known kubernetes clusters

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_helm_values_yaml**](docs/KubernetesProtection.md#get_helm_values_yaml)
- **GET**: /kubernetes-protection/entities/integration/agent/v1
- **Description**: Provides a sample Helm values.yaml file for a customer to install alongside the agent Helm chart

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_locations**](docs/KubernetesProtection.md#get_locations)
- **GET**: /kubernetes-protection/entities/cloud-locations/v1
- **Description**: Provides the cloud locations acknowledged by the Kubernetes Protection service

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**get_static_scripts**](docs/KubernetesProtection.md#get_static_scripts)
- **GET**: /kubernetes-protection/entities/gen/scripts/v1
- **Description**: Gets static bash scripts that are used during registration

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**group_containers_by_managed**](docs/KubernetesProtection.md#group_containers_by_managed)
- **GET**: /container-security/aggregates/containers/group-by-managed/v1
- **Description**: Group the containers by Managed

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**list_azure_accounts**](docs/KubernetesProtection.md#list_azure_accounts)
- **GET**: /kubernetes-protection/entities/accounts/azure/v1
- **Description**: Provides the azure subscriptions registered to Kubernetes Protection

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**patch_azure_service_principal**](docs/KubernetesProtection.md#patch_azure_service_principal)
- **PATCH**: /kubernetes-protection/entities/service-principal/azure/v1
- **Description**: Adds the client ID for the given tenant ID to our system

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_cluster_combined**](docs/KubernetesProtection.md#read_cluster_combined)
- **GET**: /container-security/combined/clusters/v1
- **Description**: Retrieve kubernetes clusters identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_cluster_count**](docs/KubernetesProtection.md#read_cluster_count)
- **GET**: /container-security/aggregates/clusters/count/v1
- **Description**: Retrieve cluster counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_cluster_enrichment**](docs/KubernetesProtection.md#read_cluster_enrichment)
- **GET**: /container-security/aggregates/enrichment/clusters/entities/v1
- **Description**: Retrieve cluster enrichment data

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_clusters_by_date_range_count**](docs/KubernetesProtection.md#read_clusters_by_date_range_count)
- **GET**: /container-security/aggregates/clusters/count-by-date/v1
- **Description**: Retrieve clusters by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_clusters_by_kubernetes_version_count**](docs/KubernetesProtection.md#read_clusters_by_kubernetes_version_count)
- **GET**: /container-security/aggregates/clusters/count-by-kubernetes-version/v1
- **Description**: Bucket clusters by kubernetes version

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_clusters_by_status_count**](docs/KubernetesProtection.md#read_clusters_by_status_count)
- **GET**: /container-security/aggregates/clusters/count-by-status/v1
- **Description**: Bucket clusters by status

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_combined**](docs/KubernetesProtection.md#read_container_combined)
- **GET**: /container-security/combined/containers/v1
- **Description**: Retrieve containers identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_count**](docs/KubernetesProtection.md#read_container_count)
- **GET**: /container-security/aggregates/containers/count/v1
- **Description**: Retrieve container counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_count_by_registry**](docs/KubernetesProtection.md#read_container_count_by_registry)
- **GET**: /container-security/aggregates/containers/count-by-registry/v1
- **Description**: Retrieve top container image registries

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_enrichment**](docs/KubernetesProtection.md#read_container_enrichment)
- **GET**: /container-security/aggregates/enrichment/containers/entities/v1
- **Description**: Retrieve container enrichment data

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_image_detections_count_by_date**](docs/KubernetesProtection.md#read_container_image_detections_count_by_date)
- **GET**: /container-security/aggregates/containers/image-detections-count-by-date/v1
- **Description**: Retrieve count of image assessment detections on running containers over a period of time

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_images_by_most_used**](docs/KubernetesProtection.md#read_container_images_by_most_used)
- **GET**: /container-security/aggregates/images/most-used/v1
- **Description**: Bucket container by image-digest

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_images_by_state**](docs/KubernetesProtection.md#read_container_images_by_state)
- **GET**: /container-security/aggregates/containers/images-by-state/v1
- **Description**: Retrieve count of image states running on containers

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_container_vulnerabilities_by_severity_count**](docs/KubernetesProtection.md#read_container_vulnerabilities_by_severity_count)
- **GET**: /container-security/aggregates/containers/vulnerability-count-by-severity/v1
- **Description**: Retrieve container vulnerabilities by severity counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_containers_by_date_range_count**](docs/KubernetesProtection.md#read_containers_by_date_range_count)
- **GET**: /container-security/aggregates/containers/count-by-date/v1
- **Description**: Retrieve containers by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_containers_sensor_coverage**](docs/KubernetesProtection.md#read_containers_sensor_coverage)
- **GET**: /container-security/aggregates/containers/sensor-coverage/v1
- **Description**: Bucket containers by agent type and calculate sensor coverage

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_deployment_combined**](docs/KubernetesProtection.md#read_deployment_combined)
- **GET**: /container-security/combined/deployments/v1
- **Description**: Retrieve kubernetes deployments identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_deployment_count**](docs/KubernetesProtection.md#read_deployment_count)
- **GET**: /container-security/aggregates/deployments/count/v1
- **Description**: Retrieve deployment counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_deployment_enrichment**](docs/KubernetesProtection.md#read_deployment_enrichment)
- **GET**: /container-security/aggregates/enrichment/deployments/entities/v1
- **Description**: Retrieve deployment enrichment data

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_deployments_by_date_range_count**](docs/KubernetesProtection.md#read_deployments_by_date_range_count)
- **GET**: /container-security/aggregates/deployments/count-by-date/v1
- **Description**: Retrieve deployments by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_distinct_container_image_count**](docs/KubernetesProtection.md#read_distinct_container_image_count)
- **GET**: /container-security/aggregates/images/count-by-distinct/v1
- **Description**: Retrieve count of distinct images running on containers

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_kubernetes_iom_by_date_range**](docs/KubernetesProtection.md#read_kubernetes_iom_by_date_range)
- **GET**: /container-security/aggregates/kubernetes-ioms/count-by-date/v1
- **Description**: Returns the count of Kubernetes IOMs by the date. by default it&#39;s for 7 days.

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_kubernetes_iom_count**](docs/KubernetesProtection.md#read_kubernetes_iom_count)
- **GET**: /container-security/aggregates/kubernetes-ioms/count/v1
- **Description**: Returns the total count of Kubernetes IOMs over the past seven days

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_kubernetes_iom_entities**](docs/KubernetesProtection.md#read_kubernetes_iom_entities)
- **GET**: /container-security/entities/kubernetes-ioms/v1
- **Description**: Retrieve Kubernetes IOM entities identified by the provided IDs

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_namespace_count**](docs/KubernetesProtection.md#read_namespace_count)
- **GET**: /container-security/aggregates/namespaces/count/v1
- **Description**: Retrieve namespace counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_namespaces_by_date_range_count**](docs/KubernetesProtection.md#read_namespaces_by_date_range_count)
- **GET**: /container-security/aggregates/namespaces/count-by-date/v1
- **Description**: Retrieve namespaces by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_node_combined**](docs/KubernetesProtection.md#read_node_combined)
- **GET**: /container-security/combined/nodes/v1
- **Description**: Retrieve kubernetes nodes identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_node_count**](docs/KubernetesProtection.md#read_node_count)
- **GET**: /container-security/aggregates/nodes/count/v1
- **Description**: Retrieve node counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_node_enrichment**](docs/KubernetesProtection.md#read_node_enrichment)
- **GET**: /container-security/aggregates/enrichment/nodes/entities/v1
- **Description**: Retrieve node enrichment data

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_nodes_by_cloud_count**](docs/KubernetesProtection.md#read_nodes_by_cloud_count)
- **GET**: /container-security/aggregates/nodes/count-by-cloud/v1
- **Description**: Bucket nodes by cloud providers

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_nodes_by_container_engine_version_count**](docs/KubernetesProtection.md#read_nodes_by_container_engine_version_count)
- **GET**: /container-security/aggregates/nodes/count-by-container-engine-version/v1
- **Description**: Bucket nodes by their container engine version

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_nodes_by_date_range_count**](docs/KubernetesProtection.md#read_nodes_by_date_range_count)
- **GET**: /container-security/aggregates/nodes/count-by-date/v1
- **Description**: Retrieve nodes by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_pod_combined**](docs/KubernetesProtection.md#read_pod_combined)
- **GET**: /container-security/combined/pods/v1
- **Description**: Retrieve kubernetes pods identified by the provided filter criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_pod_count**](docs/KubernetesProtection.md#read_pod_count)
- **GET**: /container-security/aggregates/pods/count/v1
- **Description**: Retrieve pod counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_pod_enrichment**](docs/KubernetesProtection.md#read_pod_enrichment)
- **GET**: /container-security/aggregates/enrichment/pods/entities/v1
- **Description**: Retrieve pod enrichment data

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_pods_by_date_range_count**](docs/KubernetesProtection.md#read_pods_by_date_range_count)
- **GET**: /container-security/aggregates/pods/count-by-date/v1
- **Description**: Retrieve pods by date range counts

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_running_container_images**](docs/KubernetesProtection.md#read_running_container_images)
- **GET**: /container-security/combined/container-images/v1
- **Description**: Retrieve images on running containers

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**read_vulnerable_container_image_count**](docs/KubernetesProtection.md#read_vulnerable_container_image_count)
- **GET**: /container-security/aggregates/containers/count-vulnerable-images/v1
- **Description**: Retrieve count of vulnerable images running on containers

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**regenerate_api_key**](docs/KubernetesProtection.md#regenerate_api_key)
- **POST**: /kubernetes-protection/entities/integration/api-key/v1
- **Description**: Regenerate API key for docker registry integrations

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**search_and_read_kubernetes_iom_entities**](docs/KubernetesProtection.md#search_and_read_kubernetes_iom_entities)
- **GET**: /container-security/combined/kubernetes-ioms/v1
- **Description**: Search Kubernetes IOM by the provided search criteria

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**search_kubernetes_ioms**](docs/KubernetesProtection.md#search_kubernetes_ioms)
- **GET**: /container-security/queries/kubernetes-ioms/v1
- **Description**: Search Kubernetes IOMs by the provided search criteria. this endpoint returns a list of Kubernetes IOM UUIDs matching the query

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**trigger_scan**](docs/KubernetesProtection.md#trigger_scan)
- **POST**: /kubernetes-protection/entities/scan/trigger/v1
- **Description**: Triggers a dry run or a full scan of a customer&#39;s kubernetes footprint

---

**Class**: `Falcon::KubernetesProtection`

- **Operation**: [**update_aws_account**](docs/KubernetesProtection.md#update_aws_account)
- **PATCH**: /kubernetes-protection/entities/accounts/aws/v1
- **Description**: Updates the AWS account per the query parameters provided

---

**Class**: `Falcon::Malquery`

- **Operation**: [**get_mal_query_download_v1**](docs/Malquery.md#get_mal_query_download_v1)
- **GET**: /malquery/entities/download-files/v1
- **Description**: Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time

---

**Class**: `Falcon::Malquery`

- **Operation**: [**get_mal_query_entities_samples_fetch_v1**](docs/Malquery.md#get_mal_query_entities_samples_fetch_v1)
- **GET**: /malquery/entities/samples-fetch/v1
- **Description**: Fetch a zip archive with password &#39;infected&#39; containing the samples. Call this once the /entities/samples-multidownload request has finished processing

---

**Class**: `Falcon::Malquery`

- **Operation**: [**get_mal_query_metadata_v1**](docs/Malquery.md#get_mal_query_metadata_v1)
- **GET**: /malquery/entities/metadata/v1
- **Description**: Retrieve indexed files metadata by their hash

---

**Class**: `Falcon::Malquery`

- **Operation**: [**get_mal_query_quotas_v1**](docs/Malquery.md#get_mal_query_quotas_v1)
- **GET**: /malquery/aggregates/quotas/v1
- **Description**: Get information about search and download quotas in your environment

---

**Class**: `Falcon::Malquery`

- **Operation**: [**get_mal_query_request_v1**](docs/Malquery.md#get_mal_query_request_v1)
- **GET**: /malquery/entities/requests/v1
- **Description**: Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.

---

**Class**: `Falcon::Malquery`

- **Operation**: [**post_mal_query_entities_samples_multidownload_v1**](docs/Malquery.md#post_mal_query_entities_samples_multidownload_v1)
- **POST**: /malquery/entities/samples-multidownload/v1
- **Description**: Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip

---

**Class**: `Falcon::Malquery`

- **Operation**: [**post_mal_query_exact_search_v1**](docs/Malquery.md#post_mal_query_exact_search_v1)
- **POST**: /malquery/queries/exact-search/v1
- **Description**: Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint

---

**Class**: `Falcon::Malquery`

- **Operation**: [**post_mal_query_fuzzy_search_v1**](docs/Malquery.md#post_mal_query_fuzzy_search_v1)
- **POST**: /malquery/combined/fuzzy-search/v1
- **Description**: Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.

---

**Class**: `Falcon::Malquery`

- **Operation**: [**post_mal_query_hunt_v1**](docs/Malquery.md#post_mal_query_hunt_v1)
- **POST**: /malquery/queries/hunt/v1
- **Description**: Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**aggregate_cases**](docs/MessageCenter.md#aggregate_cases)
- **POST**: /message-center/aggregates/cases/GET/v1
- **Description**: Retrieve aggregate case values based on the matched filter

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**case_add_activity**](docs/MessageCenter.md#case_add_activity)
- **POST**: /message-center/entities/case-activity/v1
- **Description**: Add an activity to case. Only activities of type comment are allowed via API

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**case_add_attachment**](docs/MessageCenter.md#case_add_attachment)
- **POST**: /message-center/entities/case-attachment/v1
- **Description**: Upload an attachment for the case.

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**case_download_attachment**](docs/MessageCenter.md#case_download_attachment)
- **GET**: /message-center/entities/case-attachment/v1
- **Description**: retrieves an attachment for the case, given the attachment id

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**create_case**](docs/MessageCenter.md#create_case)
- **POST**: /message-center/entities/case/v1
- **Description**: create a new case

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**create_case_v2**](docs/MessageCenter.md#create_case_v2)
- **POST**: /message-center/entities/case/v2
- **Description**: create a new case

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**get_case_activity_by_ids**](docs/MessageCenter.md#get_case_activity_by_ids)
- **POST**: /message-center/entities/case-activities/GET/v1
- **Description**: Retrieve activities for given id&#39;s

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**get_case_entities_by_ids**](docs/MessageCenter.md#get_case_entities_by_ids)
- **POST**: /message-center/entities/cases/GET/v1
- **Description**: Retrieve message center cases

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**query_activity_by_case_id**](docs/MessageCenter.md#query_activity_by_case_id)
- **GET**: /message-center/queries/case-activities/v1
- **Description**: Retrieve activities id&#39;s for a case

---

**Class**: `Falcon::MessageCenter`

- **Operation**: [**query_cases_ids_by_filter**](docs/MessageCenter.md#query_cases_ids_by_filter)
- **GET**: /message-center/queries/cases/v1
- **Description**: Retrieve case id&#39;s that match the provided filter criteria

---

**Class**: `Falcon::MlExclusions`

- **Operation**: [**create_ml_exclusions_v1**](docs/MlExclusions.md#create_ml_exclusions_v1)
- **POST**: /policy/entities/ml-exclusions/v1
- **Description**: Create the ML exclusions

---

**Class**: `Falcon::MlExclusions`

- **Operation**: [**delete_ml_exclusions_v1**](docs/MlExclusions.md#delete_ml_exclusions_v1)
- **DELETE**: /policy/entities/ml-exclusions/v1
- **Description**: Delete the ML exclusions by id

---

**Class**: `Falcon::MlExclusions`

- **Operation**: [**get_ml_exclusions_v1**](docs/MlExclusions.md#get_ml_exclusions_v1)
- **GET**: /policy/entities/ml-exclusions/v1
- **Description**: Get a set of ML Exclusions by specifying their IDs

---

**Class**: `Falcon::MlExclusions`

- **Operation**: [**query_ml_exclusions_v1**](docs/MlExclusions.md#query_ml_exclusions_v1)
- **GET**: /policy/queries/ml-exclusions/v1
- **Description**: Search for ML exclusions.

---

**Class**: `Falcon::MlExclusions`

- **Operation**: [**update_ml_exclusions_v1**](docs/MlExclusions.md#update_ml_exclusions_v1)
- **PATCH**: /policy/entities/ml-exclusions/v1
- **Description**: Update the ML exclusions

---

**Class**: `Falcon::MobileEnrollment`

- **Operation**: [**request_device_enrollment_v3**](docs/MobileEnrollment.md#request_device_enrollment_v3)
- **POST**: /enrollments/entities/details/v3
- **Description**: Trigger on-boarding process for a mobile device

---

**Class**: `Falcon::MobileEnrollment`

- **Operation**: [**request_device_enrollment_v4**](docs/MobileEnrollment.md#request_device_enrollment_v4)
- **POST**: /enrollments/entities/details/v4
- **Description**: Trigger on-boarding process for a mobile device

---

**Class**: `Falcon::Mssp`

- **Operation**: [**add_cid_group_members**](docs/Mssp.md#add_cid_group_members)
- **POST**: /mssp/entities/cid-group-members/v1
- **Description**: Add new CID group member.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**add_role**](docs/Mssp.md#add_role)
- **POST**: /mssp/entities/mssp-roles/v1
- **Description**: Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request. 

---

**Class**: `Falcon::Mssp`

- **Operation**: [**add_user_group_members**](docs/Mssp.md#add_user_group_members)
- **POST**: /mssp/entities/user-group-members/v1
- **Description**: Add new user group member. Maximum 500 members allowed per user group.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**create_cid_groups**](docs/Mssp.md#create_cid_groups)
- **POST**: /mssp/entities/cid-groups/v1
- **Description**: Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**create_user_groups**](docs/Mssp.md#create_user_groups)
- **POST**: /mssp/entities/user-groups/v1
- **Description**: Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**delete_cid_group_members**](docs/Mssp.md#delete_cid_group_members)
- **DELETE**: /mssp/entities/cid-group-members/v1
- **Description**: Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**delete_cid_group_members_v2**](docs/Mssp.md#delete_cid_group_members_v2)
- **DELETE**: /mssp/entities/cid-group-members/v2
- **Description**: Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**delete_cid_groups**](docs/Mssp.md#delete_cid_groups)
- **DELETE**: /mssp/entities/cid-groups/v1
- **Description**: Delete CID groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**delete_user_group_members**](docs/Mssp.md#delete_user_group_members)
- **DELETE**: /mssp/entities/user-group-members/v1
- **Description**: Delete user group members entry.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**delete_user_groups**](docs/Mssp.md#delete_user_groups)
- **DELETE**: /mssp/entities/user-groups/v1
- **Description**: Delete user groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**deleted_roles**](docs/Mssp.md#deleted_roles)
- **DELETE**: /mssp/entities/mssp-roles/v1
- **Description**: Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_children**](docs/Mssp.md#get_children)
- **GET**: /mssp/entities/children/v1
- **Description**: Get link to child customer by child CID(s)

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_children_v2**](docs/Mssp.md#get_children_v2)
- **POST**: /mssp/entities/children/GET/v2
- **Description**: Get link to child customer by child CID(s)

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_cid_group_by_id**](docs/Mssp.md#get_cid_group_by_id)
- **GET**: /mssp/entities/cid-groups/v1
- **Description**: Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_cid_group_by_id_v2**](docs/Mssp.md#get_cid_group_by_id_v2)
- **GET**: /mssp/entities/cid-groups/v2
- **Description**: Get CID Groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_cid_group_members_by**](docs/Mssp.md#get_cid_group_members_by)
- **GET**: /mssp/entities/cid-group-members/v1
- **Description**: Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_cid_group_members_by_v2**](docs/Mssp.md#get_cid_group_members_by_v2)
- **GET**: /mssp/entities/cid-group-members/v2
- **Description**: Get CID group members by CID Group ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_roles_by_id**](docs/Mssp.md#get_roles_by_id)
- **GET**: /mssp/entities/mssp-roles/v1
- **Description**: Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_user_group_members_by_id**](docs/Mssp.md#get_user_group_members_by_id)
- **GET**: /mssp/entities/user-group-members/v1
- **Description**: Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_user_group_members_by_idv2**](docs/Mssp.md#get_user_group_members_by_idv2)
- **GET**: /mssp/entities/user-group-members/v2
- **Description**: Get user group members by user group ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_user_groups_by_id**](docs/Mssp.md#get_user_groups_by_id)
- **GET**: /mssp/entities/user-groups/v1
- **Description**: Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**get_user_groups_by_idv2**](docs/Mssp.md#get_user_groups_by_idv2)
- **GET**: /mssp/entities/user-groups/v2
- **Description**: Get user groups by ID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_children**](docs/Mssp.md#query_children)
- **GET**: /mssp/queries/children/v1
- **Description**: Query for customers linked as children

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_cid_group_members**](docs/Mssp.md#query_cid_group_members)
- **GET**: /mssp/queries/cid-group-members/v1
- **Description**: Query a CID groups members by associated CID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_cid_groups**](docs/Mssp.md#query_cid_groups)
- **GET**: /mssp/queries/cid-groups/v1
- **Description**: Query CID groups.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_roles**](docs/Mssp.md#query_roles)
- **GET**: /mssp/queries/mssp-roles/v1
- **Description**: Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_user_group_members**](docs/Mssp.md#query_user_group_members)
- **GET**: /mssp/queries/user-group-members/v1
- **Description**: Query user group member by user UUID.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**query_user_groups**](docs/Mssp.md#query_user_groups)
- **GET**: /mssp/queries/user-groups/v1
- **Description**: Query user groups.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**update_cid_groups**](docs/Mssp.md#update_cid_groups)
- **PATCH**: /mssp/entities/cid-groups/v1
- **Description**: Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.

---

**Class**: `Falcon::Mssp`

- **Operation**: [**update_user_groups**](docs/Mssp.md#update_user_groups)
- **PATCH**: /mssp/entities/user-groups/v1
- **Description**: Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.

---

**Class**: `Falcon::Oauth2`

- **Operation**: [**oauth2_access_token**](docs/Oauth2.md#oauth2_access_token)
- **POST**: /oauth2/token
- **Description**: Generate an OAuth2 access token

---

**Class**: `Falcon::Oauth2`

- **Operation**: [**oauth2_revoke_token**](docs/Oauth2.md#oauth2_revoke_token)
- **POST**: /oauth2/revoke
- **Description**: Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.

---

**Class**: `Falcon::Ods`

- **Operation**: [**aggregate_query_scan_host_metadata**](docs/Ods.md#aggregate_query_scan_host_metadata)
- **POST**: /ods/aggregates/scan-hosts/v1
- **Description**: Get aggregates on ODS scan-hosts data.

---

**Class**: `Falcon::Ods`

- **Operation**: [**aggregate_scans**](docs/Ods.md#aggregate_scans)
- **POST**: /ods/aggregates/scans/v1
- **Description**: Get aggregates on ODS scan data.

---

**Class**: `Falcon::Ods`

- **Operation**: [**aggregate_scheduled_scans**](docs/Ods.md#aggregate_scheduled_scans)
- **POST**: /ods/aggregates/scheduled-scans/v1
- **Description**: Get aggregates on ODS scheduled-scan data.

---

**Class**: `Falcon::Ods`

- **Operation**: [**cancel_scans**](docs/Ods.md#cancel_scans)
- **POST**: /ods/entities/scan-control-actions/cancel/v1
- **Description**: Cancel ODS scans for the given scan ids.

---

**Class**: `Falcon::Ods`

- **Operation**: [**create_scan**](docs/Ods.md#create_scan)
- **POST**: /ods/entities/scans/v1
- **Description**: Create ODS scan and start or schedule scan for the given scan request.

---

**Class**: `Falcon::Ods`

- **Operation**: [**delete_scheduled_scans**](docs/Ods.md#delete_scheduled_scans)
- **DELETE**: /ods/entities/scheduled-scans/v1
- **Description**: Delete ODS scheduled-scans for the given scheduled-scan ids.

---

**Class**: `Falcon::Ods`

- **Operation**: [**get_malicious_files_by_ids**](docs/Ods.md#get_malicious_files_by_ids)
- **GET**: /ods/entities/malicious-files/v1
- **Description**: Get malicious files by ids.

---

**Class**: `Falcon::Ods`

- **Operation**: [**get_scan_host_metadata_by_ids**](docs/Ods.md#get_scan_host_metadata_by_ids)
- **GET**: /ods/entities/scan-hosts/v1
- **Description**: Get scan hosts by ids.

---

**Class**: `Falcon::Ods`

- **Operation**: [**get_scans_by_scan_ids**](docs/Ods.md#get_scans_by_scan_ids)
- **GET**: /ods/entities/scans/v1
- **Description**: Get Scans by IDs.

---

**Class**: `Falcon::Ods`

- **Operation**: [**get_scans_by_scan_ids_v2**](docs/Ods.md#get_scans_by_scan_ids_v2)
- **GET**: /ods/entities/scans/v2
- **Description**: Get Scans by IDs.

---

**Class**: `Falcon::Ods`

- **Operation**: [**get_scheduled_scans_by_scan_ids**](docs/Ods.md#get_scheduled_scans_by_scan_ids)
- **GET**: /ods/entities/scheduled-scans/v1
- **Description**: Get ScheduledScans by IDs.

---

**Class**: `Falcon::Ods`

- **Operation**: [**query_malicious_files**](docs/Ods.md#query_malicious_files)
- **GET**: /ods/queries/malicious-files/v1
- **Description**: Query malicious files.

---

**Class**: `Falcon::Ods`

- **Operation**: [**query_scan_host_metadata**](docs/Ods.md#query_scan_host_metadata)
- **GET**: /ods/queries/scan-hosts/v1
- **Description**: Query scan hosts.

---

**Class**: `Falcon::Ods`

- **Operation**: [**query_scans**](docs/Ods.md#query_scans)
- **GET**: /ods/queries/scans/v1
- **Description**: Query Scans.

---

**Class**: `Falcon::Ods`

- **Operation**: [**query_scheduled_scans**](docs/Ods.md#query_scheduled_scans)
- **GET**: /ods/queries/scheduled-scans/v1
- **Description**: Query ScheduledScans.

---

**Class**: `Falcon::Ods`

- **Operation**: [**schedule_scan**](docs/Ods.md#schedule_scan)
- **POST**: /ods/entities/scheduled-scans/v1
- **Description**: Create ODS scan and start or schedule scan for the given scan request.

---

**Class**: `Falcon::OverwatchDashboard`

- **Operation**: [**aggregates_detections_global_counts**](docs/OverwatchDashboard.md#aggregates_detections_global_counts)
- **GET**: /overwatch-dashboards/aggregates/detections-global-counts/v1
- **Description**: Get the total number of detections pushed across all customers

---

**Class**: `Falcon::OverwatchDashboard`

- **Operation**: [**aggregates_events**](docs/OverwatchDashboard.md#aggregates_events)
- **POST**: /overwatch-dashboards/aggregates/events/GET/v1
- **Description**: Get aggregate OverWatch detection event info by providing an aggregate query

---

**Class**: `Falcon::OverwatchDashboard`

- **Operation**: [**aggregates_events_collections**](docs/OverwatchDashboard.md#aggregates_events_collections)
- **POST**: /overwatch-dashboards/aggregates/events-collections/GET/v1
- **Description**: Get OverWatch detection event collection info by providing an aggregate query

---

**Class**: `Falcon::OverwatchDashboard`

- **Operation**: [**aggregates_incidents_global_counts**](docs/OverwatchDashboard.md#aggregates_incidents_global_counts)
- **GET**: /overwatch-dashboards/aggregates/incidents-global-counts/v1
- **Description**: Get the total number of incidents pushed across all customers

---

**Class**: `Falcon::OverwatchDashboard`

- **Operation**: [**aggregates_ow_events_global_counts**](docs/OverwatchDashboard.md#aggregates_ow_events_global_counts)
- **GET**: /overwatch-dashboards/aggregates/ow-events-global-counts/v1
- **Description**: Get the total number of OverWatch events across all customers

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**create_prevention_policies**](docs/PreventionPolicies.md#create_prevention_policies)
- **POST**: /policy/entities/prevention/v1
- **Description**: Create Prevention Policies by specifying details about the policy to create

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**delete_prevention_policies**](docs/PreventionPolicies.md#delete_prevention_policies)
- **DELETE**: /policy/entities/prevention/v1
- **Description**: Delete a set of Prevention Policies by specifying their IDs

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**get_prevention_policies**](docs/PreventionPolicies.md#get_prevention_policies)
- **GET**: /policy/entities/prevention/v1
- **Description**: Retrieve a set of Prevention Policies by specifying their IDs

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**perform_prevention_policies_action**](docs/PreventionPolicies.md#perform_prevention_policies_action)
- **POST**: /policy/entities/prevention-actions/v1
- **Description**: Perform the specified action on the Prevention Policies specified in the request

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**query_combined_prevention_policies**](docs/PreventionPolicies.md#query_combined_prevention_policies)
- **GET**: /policy/combined/prevention/v1
- **Description**: Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policies which match the filter criteria

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**query_combined_prevention_policy_members**](docs/PreventionPolicies.md#query_combined_prevention_policy_members)
- **GET**: /policy/combined/prevention-members/v1
- **Description**: Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**query_prevention_policies**](docs/PreventionPolicies.md#query_prevention_policies)
- **GET**: /policy/queries/prevention/v1
- **Description**: Search for Prevention Policies in your environment by providing an FQL filter and paging details. Returns a set of Prevention Policy IDs which match the filter criteria

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**query_prevention_policy_members**](docs/PreventionPolicies.md#query_prevention_policy_members)
- **GET**: /policy/queries/prevention-members/v1
- **Description**: Search for members of a Prevention Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**set_prevention_policies_precedence**](docs/PreventionPolicies.md#set_prevention_policies_precedence)
- **POST**: /policy/entities/prevention-precedence/v1
- **Description**: Sets the precedence of Prevention Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::PreventionPolicies`

- **Operation**: [**update_prevention_policies**](docs/PreventionPolicies.md#update_prevention_policies)
- **PATCH**: /policy/entities/prevention/v1
- **Description**: Update Prevention Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**action_update_count**](docs/Quarantine.md#action_update_count)
- **GET**: /quarantine/aggregates/action-update-count/v1
- **Description**: Returns count of potentially affected quarantined files for each action.

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**get_aggregate_files**](docs/Quarantine.md#get_aggregate_files)
- **POST**: /quarantine/aggregates/quarantined-files/GET/v1
- **Description**: Get quarantine file aggregates as specified via json in request body.

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**get_quarantine_files**](docs/Quarantine.md#get_quarantine_files)
- **POST**: /quarantine/entities/quarantined-files/GET/v1
- **Description**: Get quarantine file metadata for specified ids.

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**query_quarantine_files**](docs/Quarantine.md#query_quarantine_files)
- **GET**: /quarantine/queries/quarantined-files/v1
- **Description**: Get quarantine file ids that match the provided filter criteria.

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**update_qf_by_query**](docs/Quarantine.md#update_qf_by_query)
- **PATCH**: /quarantine/queries/quarantined-files/v1
- **Description**: Apply quarantine file actions by query.

---

**Class**: `Falcon::Quarantine`

- **Operation**: [**update_quarantined_detects_by_ids**](docs/Quarantine.md#update_quarantined_detects_by_ids)
- **PATCH**: /quarantine/entities/quarantined-files/v1
- **Description**: Apply action by quarantine file ids

---

**Class**: `Falcon::QuickScan`

- **Operation**: [**get_scans**](docs/QuickScan.md#get_scans)
- **GET**: /scanner/entities/scans/v1
- **Description**: Check the status of a volume scan. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

---

**Class**: `Falcon::QuickScan`

- **Operation**: [**get_scans_aggregates**](docs/QuickScan.md#get_scans_aggregates)
- **POST**: /scanner/aggregates/scans/GET/v1
- **Description**: Get scans aggregations as specified via json in request body.

---

**Class**: `Falcon::QuickScan`

- **Operation**: [**query_submissions**](docs/QuickScan.md#query_submissions)
- **GET**: /scanner/queries/scans/v1
- **Description**: Find IDs for submitted scans by providing an FQL filter and paging details. Returns a set of volume IDs that match your criteria.

---

**Class**: `Falcon::QuickScan`

- **Operation**: [**scan_samples**](docs/QuickScan.md#scan_samples)
- **POST**: /scanner/entities/scans/v1
- **Description**: Submit a volume of files for ml scanning. Time required for analysis increases with the number of samples in a volume but usually it should take less than 1 minute

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**delete_file**](docs/QuickScanPro.md#delete_file)
- **DELETE**: /quickscanpro/entities/files/v1
- **Description**: Deletes file by its sha256 identifier.

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**delete_scan_result**](docs/QuickScanPro.md#delete_scan_result)
- **DELETE**: /quickscanpro/entities/scans/v1
- **Description**: Deletes the result of an QuickScan Pro scan.

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**get_scan_result**](docs/QuickScanPro.md#get_scan_result)
- **GET**: /quickscanpro/entities/scans/v1
- **Description**: Gets the result of an QuickScan Pro scan.

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**launch_scan**](docs/QuickScanPro.md#launch_scan)
- **POST**: /quickscanpro/entities/scans/v1
- **Description**: Starts scanning a file uploaded through &#39;/quickscanpro/entities/files/v1&#39;.

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**query_scan_results**](docs/QuickScanPro.md#query_scan_results)
- **GET**: /quickscanpro/queries/scans/v1
- **Description**: FQL query specifying the filter parameters

---

**Class**: `Falcon::QuickScanPro`

- **Operation**: [**upload_file_quick_scan_pro**](docs/QuickScanPro.md#upload_file_quick_scan_pro)
- **POST**: /quickscanpro/entities/files/v1
- **Description**: Uploads a file to be further analyzed with QuickScan Pro. The samples expire after 90 days.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_active_responder_cmd**](docs/RealTimeResponse.md#batch_active_responder_cmd)
- **POST**: /real-time-response/combined/batch-active-responder-command/v1
- **Description**: Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_cmd**](docs/RealTimeResponse.md#batch_cmd)
- **POST**: /real-time-response/combined/batch-command/v1
- **Description**: Batch executes a RTR read-only command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_get_cmd**](docs/RealTimeResponse.md#batch_get_cmd)
- **POST**: /real-time-response/combined/batch-get-command/v1
- **Description**: Batch executes &#x60;get&#x60; command across hosts to retrieve files. After this call is made &#x60;GET /real-time-response/combined/batch-get-command/v1&#x60; is used to query for the results.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_get_cmd_status**](docs/RealTimeResponse.md#batch_get_cmd_status)
- **GET**: /real-time-response/combined/batch-get-command/v1
- **Description**: Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_init_sessions**](docs/RealTimeResponse.md#batch_init_sessions)
- **POST**: /real-time-response/combined/batch-init-session/v1
- **Description**: Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**batch_refresh_sessions**](docs/RealTimeResponse.md#batch_refresh_sessions)
- **POST**: /real-time-response/combined/batch-refresh-session/v1
- **Description**: Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_aggregate_sessions**](docs/RealTimeResponse.md#r_tr_aggregate_sessions)
- **POST**: /real-time-response/aggregates/sessions/GET/v1
- **Description**: Get aggregates on session data.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_check_active_responder_command_status**](docs/RealTimeResponse.md#r_tr_check_active_responder_command_status)
- **GET**: /real-time-response/entities/active-responder-command/v1
- **Description**: Get status of an executed active-responder command on a single host.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_check_command_status**](docs/RealTimeResponse.md#r_tr_check_command_status)
- **GET**: /real-time-response/entities/command/v1
- **Description**: Get status of an executed command on a single host.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_delete_file**](docs/RealTimeResponse.md#r_tr_delete_file)
- **DELETE**: /real-time-response/entities/file/v1
- **Description**: Delete a RTR session file.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_delete_file_v2**](docs/RealTimeResponse.md#r_tr_delete_file_v2)
- **DELETE**: /real-time-response/entities/file/v2
- **Description**: Delete a RTR session file.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_delete_queued_session**](docs/RealTimeResponse.md#r_tr_delete_queued_session)
- **DELETE**: /real-time-response/entities/queued-sessions/command/v1
- **Description**: Delete a queued session command

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_delete_session**](docs/RealTimeResponse.md#r_tr_delete_session)
- **DELETE**: /real-time-response/entities/sessions/v1
- **Description**: Delete a session.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_execute_active_responder_command**](docs/RealTimeResponse.md#r_tr_execute_active_responder_command)
- **POST**: /real-time-response/entities/active-responder-command/v1
- **Description**: Execute an active responder command on a single host.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_execute_command**](docs/RealTimeResponse.md#r_tr_execute_command)
- **POST**: /real-time-response/entities/command/v1
- **Description**: Execute a command on a single host.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_get_extracted_file_contents**](docs/RealTimeResponse.md#r_tr_get_extracted_file_contents)
- **GET**: /real-time-response/entities/extracted-file-contents/v1
- **Description**: Get RTR extracted file contents for specified session and sha256.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_init_session**](docs/RealTimeResponse.md#r_tr_init_session)
- **POST**: /real-time-response/entities/sessions/v1
- **Description**: Initialize a new session with the RTR cloud.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_list_all_sessions**](docs/RealTimeResponse.md#r_tr_list_all_sessions)
- **GET**: /real-time-response/queries/sessions/v1
- **Description**: Get a list of session_ids.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_list_files**](docs/RealTimeResponse.md#r_tr_list_files)
- **GET**: /real-time-response/entities/file/v1
- **Description**: Get a list of files for the specified RTR session.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_list_files_v2**](docs/RealTimeResponse.md#r_tr_list_files_v2)
- **GET**: /real-time-response/entities/file/v2
- **Description**: Get a list of files for the specified RTR session.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_list_queued_sessions**](docs/RealTimeResponse.md#r_tr_list_queued_sessions)
- **POST**: /real-time-response/entities/queued-sessions/GET/v1
- **Description**: Get queued session metadata by session ID.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_list_sessions**](docs/RealTimeResponse.md#r_tr_list_sessions)
- **POST**: /real-time-response/entities/sessions/GET/v1
- **Description**: Get session metadata by session id.

---

**Class**: `Falcon::RealTimeResponse`

- **Operation**: [**r_tr_pulse_session**](docs/RealTimeResponse.md#r_tr_pulse_session)
- **POST**: /real-time-response/entities/refresh-session/v1
- **Description**: Refresh a session timeout on a single host.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**batch_admin_cmd**](docs/RealTimeResponseAdmin.md#batch_admin_cmd)
- **POST**: /real-time-response/combined/batch-admin-command/v1
- **Description**: Batch executes a RTR administrator command across the hosts mapped to the given batch ID.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_check_admin_command_status**](docs/RealTimeResponseAdmin.md#r_tr_check_admin_command_status)
- **GET**: /real-time-response/entities/admin-command/v1
- **Description**: Get status of an executed RTR administrator command on a single host.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_create_put_files**](docs/RealTimeResponseAdmin.md#r_tr_create_put_files)
- **POST**: /real-time-response/entities/put-files/v1
- **Description**: Upload a new put-file to use for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_create_scripts**](docs/RealTimeResponseAdmin.md#r_tr_create_scripts)
- **POST**: /real-time-response/entities/scripts/v1
- **Description**: Upload a new custom-script to use for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_delete_put_files**](docs/RealTimeResponseAdmin.md#r_tr_delete_put_files)
- **DELETE**: /real-time-response/entities/put-files/v1
- **Description**: Delete a put-file based on the ID given.  Can only delete one file at a time.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_delete_scripts**](docs/RealTimeResponseAdmin.md#r_tr_delete_scripts)
- **DELETE**: /real-time-response/entities/scripts/v1
- **Description**: Delete a custom-script based on the ID given.  Can only delete one script at a time.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_execute_admin_command**](docs/RealTimeResponseAdmin.md#r_tr_execute_admin_command)
- **POST**: /real-time-response/entities/admin-command/v1
- **Description**: Execute a RTR administrator command on a single host.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_get_falcon_scripts**](docs/RealTimeResponseAdmin.md#r_tr_get_falcon_scripts)
- **GET**: /real-time-response/entities/falcon-scripts/v1
- **Description**: Get Falcon scripts with metadata and content of script

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_get_put_files**](docs/RealTimeResponseAdmin.md#r_tr_get_put_files)
- **GET**: /real-time-response/entities/put-files/v1
- **Description**: Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_get_put_files_v2**](docs/RealTimeResponseAdmin.md#r_tr_get_put_files_v2)
- **GET**: /real-time-response/entities/put-files/v2
- **Description**: Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_get_scripts**](docs/RealTimeResponseAdmin.md#r_tr_get_scripts)
- **GET**: /real-time-response/entities/scripts/v1
- **Description**: Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_get_scripts_v2**](docs/RealTimeResponseAdmin.md#r_tr_get_scripts_v2)
- **GET**: /real-time-response/entities/scripts/v2
- **Description**: Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_list_falcon_scripts**](docs/RealTimeResponseAdmin.md#r_tr_list_falcon_scripts)
- **GET**: /real-time-response/queries/falcon-scripts/v1
- **Description**: Get a list of Falcon script IDs available to the user to run

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_list_put_files**](docs/RealTimeResponseAdmin.md#r_tr_list_put_files)
- **GET**: /real-time-response/queries/put-files/v1
- **Description**: Get a list of put-file ID&#39;s that are available to the user for the &#x60;put&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_list_scripts**](docs/RealTimeResponseAdmin.md#r_tr_list_scripts)
- **GET**: /real-time-response/queries/scripts/v1
- **Description**: Get a list of custom-script ID&#39;s that are available to the user for the &#x60;runscript&#x60; command.

---

**Class**: `Falcon::RealTimeResponseAdmin`

- **Operation**: [**r_tr_update_scripts**](docs/RealTimeResponseAdmin.md#r_tr_update_scripts)
- **PATCH**: /real-time-response/entities/scripts/v1
- **Description**: Upload a new scripts to replace an existing one.

---

**Class**: `Falcon::RealTimeResponseAudit`

- **Operation**: [**r_tr_audit_sessions**](docs/RealTimeResponseAudit.md#r_tr_audit_sessions)
- **GET**: /real-time-response-audit/combined/sessions/v1
- **Description**: Get all the RTR sessions created for a customer in a specified duration

---

**Class**: `Falcon::Recon`

- **Operation**: [**aggregate_notifications_exposed_data_records_v1**](docs/Recon.md#aggregate_notifications_exposed_data_records_v1)
- **POST**: /recon/aggregates/notifications-exposed-data-records/GET/v1
- **Description**: Get notification exposed data record aggregates as specified via JSON in request body. The valid aggregation fields are: [cid notification_id created_date rule.id rule.name rule.topic source_category site author file.name credential_status bot.operating_system.hardware_id bot.bot_id]

---

**Class**: `Falcon::Recon`

- **Operation**: [**aggregate_notifications_v1**](docs/Recon.md#aggregate_notifications_v1)
- **POST**: /recon/aggregates/notifications/GET/v1
- **Description**: Get notification aggregates as specified via JSON in request body.

---

**Class**: `Falcon::Recon`

- **Operation**: [**create_actions_v1**](docs/Recon.md#create_actions_v1)
- **POST**: /recon/entities/actions/v1
- **Description**: Create actions for a monitoring rule. Accepts a list of actions that will be attached to the monitoring rule.

---

**Class**: `Falcon::Recon`

- **Operation**: [**create_export_jobs_v1**](docs/Recon.md#create_export_jobs_v1)
- **POST**: /recon/entities/exports/v1
- **Description**: Launch asynchronous export job. Use the job ID to poll the status of the job using GET /entities/exports/v1.

---

**Class**: `Falcon::Recon`

- **Operation**: [**create_rules_v1**](docs/Recon.md#create_rules_v1)
- **POST**: /recon/entities/rules/v1
- **Description**: Create monitoring rules.

---

**Class**: `Falcon::Recon`

- **Operation**: [**delete_action_v1**](docs/Recon.md#delete_action_v1)
- **DELETE**: /recon/entities/actions/v1
- **Description**: Delete an action from a monitoring rule based on the action ID.

---

**Class**: `Falcon::Recon`

- **Operation**: [**delete_export_jobs_v1**](docs/Recon.md#delete_export_jobs_v1)
- **DELETE**: /recon/entities/exports/v1
- **Description**: Delete export jobs (and their associated file(s)) based on their IDs.

---

**Class**: `Falcon::Recon`

- **Operation**: [**delete_notifications_v1**](docs/Recon.md#delete_notifications_v1)
- **DELETE**: /recon/entities/notifications/v1
- **Description**: Delete notifications based on IDs. Notifications cannot be recovered after they are deleted.

---

**Class**: `Falcon::Recon`

- **Operation**: [**delete_rules_v1**](docs/Recon.md#delete_rules_v1)
- **DELETE**: /recon/entities/rules/v1
- **Description**: Delete monitoring rules.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_actions_v1**](docs/Recon.md#get_actions_v1)
- **GET**: /recon/entities/actions/v1
- **Description**: Get actions based on their IDs. IDs can be retrieved using the GET /queries/actions/v1 endpoint.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_export_jobs_v1**](docs/Recon.md#get_export_jobs_v1)
- **GET**: /recon/entities/exports/v1
- **Description**: Get the status of export jobs based on their IDs. Export jobs can be launched by calling POST /entities/exports/v1. When a job is complete, use the job ID to download the file(s) associated with it using GET entities/export-files/v1.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_file_content_for_export_jobs_v1**](docs/Recon.md#get_file_content_for_export_jobs_v1)
- **GET**: /recon/entities/export-files/v1
- **Description**: Download the file associated with a job ID.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_notifications_detailed_translated_v1**](docs/Recon.md#get_notifications_detailed_translated_v1)
- **GET**: /recon/entities/notifications-detailed-translated/v1
- **Description**: Get detailed notifications based on their IDs. These include the translated raw intelligence content that generated the match or part of it. 

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_notifications_detailed_v1**](docs/Recon.md#get_notifications_detailed_v1)
- **GET**: /recon/entities/notifications-detailed/v1
- **Description**: Get detailed notifications based on their IDs. These include the raw intelligence content that generated the match or part of it. 

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_notifications_exposed_data_records_v1**](docs/Recon.md#get_notifications_exposed_data_records_v1)
- **GET**: /recon/entities/notifications-exposed-data-records/v1
- **Description**: Get notifications exposed data records based on their IDs. IDs can be retrieved using the GET /queries/notifications-exposed-data-records/v1 endpoint. The associate notification can be fetched using the /entities/notifications/v* endpoints

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_notifications_translated_v1**](docs/Recon.md#get_notifications_translated_v1)
- **GET**: /recon/entities/notifications-translated/v1
- **Description**: Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint. This endpoint will return translated notification content. The only target language available is English.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_notifications_v1**](docs/Recon.md#get_notifications_v1)
- **GET**: /recon/entities/notifications/v1
- **Description**: Get notifications based on their IDs. IDs can be retrieved using the GET /queries/notifications/v1 endpoint.

---

**Class**: `Falcon::Recon`

- **Operation**: [**get_rules_v1**](docs/Recon.md#get_rules_v1)
- **GET**: /recon/entities/rules/v1
- **Description**: Get monitoring rules based on their IDs. IDs can be retrieved using the GET /queries/rules/v1 endpoint.

---

**Class**: `Falcon::Recon`

- **Operation**: [**preview_rule_v1**](docs/Recon.md#preview_rule_v1)
- **POST**: /recon/aggregates/rules-preview/GET/v1
- **Description**: Preview rules notification count and distribution. This will return aggregations on: channel, count, site.

---

**Class**: `Falcon::Recon`

- **Operation**: [**query_actions_v1**](docs/Recon.md#query_actions_v1)
- **GET**: /recon/queries/actions/v1
- **Description**: Query actions based on provided criteria. Use the IDs from this response to get the action entities on GET /entities/actions/v1.

---

**Class**: `Falcon::Recon`

- **Operation**: [**query_notifications_exposed_data_records_v1**](docs/Recon.md#query_notifications_exposed_data_records_v1)
- **GET**: /recon/queries/notifications-exposed-data-records/v1
- **Description**: Query notifications exposed data records based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications-exposed-data-records/v1

---

**Class**: `Falcon::Recon`

- **Operation**: [**query_notifications_v1**](docs/Recon.md#query_notifications_v1)
- **GET**: /recon/queries/notifications/v1
- **Description**: Query notifications based on provided criteria. Use the IDs from this response to get the notification +entities on GET /entities/notifications/v1, GET /entities/notifications-detailed/v1, +GET /entities/notifications-translated/v1 or GET /entities/notifications-detailed-translated/v1.

---

**Class**: `Falcon::Recon`

- **Operation**: [**query_rules_v1**](docs/Recon.md#query_rules_v1)
- **GET**: /recon/queries/rules/v1
- **Description**: Query monitoring rules based on provided criteria. Use the IDs from this response to fetch the rules on /entities/rules/v1.

---

**Class**: `Falcon::Recon`

- **Operation**: [**update_action_v1**](docs/Recon.md#update_action_v1)
- **PATCH**: /recon/entities/actions/v1
- **Description**: Update an action for a monitoring rule.

---

**Class**: `Falcon::Recon`

- **Operation**: [**update_notifications_v1**](docs/Recon.md#update_notifications_v1)
- **PATCH**: /recon/entities/notifications/v1
- **Description**: Update notification status or assignee. Accepts bulk requests

---

**Class**: `Falcon::Recon`

- **Operation**: [**update_rules_v1**](docs/Recon.md#update_rules_v1)
- **PATCH**: /recon/entities/rules/v1
- **Description**: Update monitoring rules.

---

**Class**: `Falcon::ReportExecutions`

- **Operation**: [**report_executions_download_get**](docs/ReportExecutions.md#report_executions_download_get)
- **GET**: /reports/entities/report-executions-download/v1
- **Description**: Get report entity download. Returns either a JSON object or a CSV string.

---

**Class**: `Falcon::ReportExecutions`

- **Operation**: [**report_executions_get**](docs/ReportExecutions.md#report_executions_get)
- **GET**: /reports/entities/report-executions/v1
- **Description**: Retrieve report details for the provided report IDs.

---

**Class**: `Falcon::ReportExecutions`

- **Operation**: [**report_executions_query**](docs/ReportExecutions.md#report_executions_query)
- **GET**: /reports/queries/report-executions/v1
- **Description**: Find all report execution IDs matching the query with filter

---

**Class**: `Falcon::ReportExecutions`

- **Operation**: [**report_executions_retry**](docs/ReportExecutions.md#report_executions_retry)
- **POST**: /reports/entities/report-executions-retry/v1
- **Description**: This endpoint will be used to retry report executions

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**create_rt_response_policies**](docs/ResponsePolicies.md#create_rt_response_policies)
- **POST**: /policy/entities/response/v1
- **Description**: Create Response Policies by specifying details about the policy to create

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**delete_rt_response_policies**](docs/ResponsePolicies.md#delete_rt_response_policies)
- **DELETE**: /policy/entities/response/v1
- **Description**: Delete a set of Response Policies by specifying their IDs

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**get_rt_response_policies**](docs/ResponsePolicies.md#get_rt_response_policies)
- **GET**: /policy/entities/response/v1
- **Description**: Retrieve a set of Response Policies by specifying their IDs

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**perform_rt_response_policies_action**](docs/ResponsePolicies.md#perform_rt_response_policies_action)
- **POST**: /policy/entities/response-actions/v1
- **Description**: Perform the specified action on the Response Policies specified in the request

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**query_combined_rt_response_policies**](docs/ResponsePolicies.md#query_combined_rt_response_policies)
- **GET**: /policy/combined/response/v1
- **Description**: Search for Response Policies in your environment by providing an FQL filter and paging details. Returns a set of Response Policies which match the filter criteria

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**query_combined_rt_response_policy_members**](docs/ResponsePolicies.md#query_combined_rt_response_policy_members)
- **GET**: /policy/combined/response-members/v1
- **Description**: Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**query_rt_response_policies**](docs/ResponsePolicies.md#query_rt_response_policies)
- **GET**: /policy/queries/response/v1
- **Description**: Search for Response Policies in your environment by providing an FQL filter with sort and/or paging details. This returns a set of Response Policy IDs that match the given criteria.

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**query_rt_response_policy_members**](docs/ResponsePolicies.md#query_rt_response_policy_members)
- **GET**: /policy/queries/response-members/v1
- **Description**: Search for members of a Response policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**set_rt_response_policies_precedence**](docs/ResponsePolicies.md#set_rt_response_policies_precedence)
- **POST**: /policy/entities/response-precedence/v1
- **Description**: Sets the precedence of Response Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::ResponsePolicies`

- **Operation**: [**update_rt_response_policies**](docs/ResponsePolicies.md#update_rt_response_policies)
- **PATCH**: /policy/entities/response/v1
- **Description**: Update Response Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::RuntimeDetections`

- **Operation**: [**get_runtime_detections_combined_v2**](docs/RuntimeDetections.md#get_runtime_detections_combined_v2)
- **GET**: /container-security/combined/runtime-detections/v2
- **Description**: Retrieve container runtime detections by the provided search criteria

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**archive_delete_v1**](docs/SampleUploads.md#archive_delete_v1)
- **DELETE**: /archives/entities/archives/v1
- **Description**: Delete an archive that was uploaded previously

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**archive_get_v1**](docs/SampleUploads.md#archive_get_v1)
- **GET**: /archives/entities/archives/v1
- **Description**: Retrieves the archives upload operation statuses. Status &#x60;done&#x60; means that archive was processed successfully. Status &#x60;error&#x60; means that archive was not processed successfully.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**archive_list_v1**](docs/SampleUploads.md#archive_list_v1)
- **GET**: /archives/entities/archive-files/v1
- **Description**: Retrieves the archives files in chunks.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**archive_upload_v1**](docs/SampleUploads.md#archive_upload_v1)
- **POST**: /archives/entities/archives/v1
- **Description**: Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of &#x60;/archives/entities/archives/v2&#x60;

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**archive_upload_v2**](docs/SampleUploads.md#archive_upload_v2)
- **POST**: /archives/entities/archives/v2
- **Description**: Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**delete_sample_v3**](docs/SampleUploads.md#delete_sample_v3)
- **DELETE**: /samples/entities/samples/v3
- **Description**: Removes a sample, including file, meta and submissions from the collection

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**extraction_create_v1**](docs/SampleUploads.md#extraction_create_v1)
- **POST**: /archives/entities/extractions/v1
- **Description**: Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**extraction_get_v1**](docs/SampleUploads.md#extraction_get_v1)
- **GET**: /archives/entities/extractions/v1
- **Description**: Retrieves the files extraction operation statuses. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**extraction_list_v1**](docs/SampleUploads.md#extraction_list_v1)
- **GET**: /archives/entities/extraction-files/v1
- **Description**: Retrieves the files extractions in chunks. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**get_sample_v3**](docs/SampleUploads.md#get_sample_v3)
- **GET**: /samples/entities/samples/v3
- **Description**: Retrieves the file associated with the given ID (SHA256)

---

**Class**: `Falcon::SampleUploads`

- **Operation**: [**upload_sample_v3**](docs/SampleUploads.md#upload_sample_v3)
- **POST**: /samples/entities/samples/v3
- **Description**: Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.

---

**Class**: `Falcon::ScheduledReports`

- **Operation**: [**scheduled_reports_get**](docs/ScheduledReports.md#scheduled_reports_get)
- **GET**: /reports/entities/scheduled-reports/v1
- **Description**: Retrieve scheduled reports for the provided report IDs.

---

**Class**: `Falcon::ScheduledReports`

- **Operation**: [**scheduled_reports_launch**](docs/ScheduledReports.md#scheduled_reports_launch)
- **POST**: /reports/entities/scheduled-reports/execution/v1
- **Description**: Launch scheduled reports executions for the provided report IDs.

---

**Class**: `Falcon::ScheduledReports`

- **Operation**: [**scheduled_reports_query**](docs/ScheduledReports.md#scheduled_reports_query)
- **GET**: /reports/queries/scheduled-reports/v1
- **Description**: Find all report IDs matching the query with filter

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**download_sensor_installer_by_id**](docs/SensorDownload.md#download_sensor_installer_by_id)
- **GET**: /sensors/entities/download-installer/v1
- **Description**: Download sensor installer by SHA256 ID

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**download_sensor_installer_by_id_v2**](docs/SensorDownload.md#download_sensor_installer_by_id_v2)
- **GET**: /sensors/entities/download-installer/v2
- **Description**: Download sensor installer by SHA256 ID

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_combined_sensor_installers_by_query**](docs/SensorDownload.md#get_combined_sensor_installers_by_query)
- **GET**: /sensors/combined/installers/v1
- **Description**: Get sensor installer details by provided query

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_combined_sensor_installers_by_query_v2**](docs/SensorDownload.md#get_combined_sensor_installers_by_query_v2)
- **GET**: /sensors/combined/installers/v2
- **Description**: Get sensor installer details by provided query

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_sensor_installers_by_query**](docs/SensorDownload.md#get_sensor_installers_by_query)
- **GET**: /sensors/queries/installers/v1
- **Description**: Get sensor installer IDs by provided query

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_sensor_installers_by_query_v2**](docs/SensorDownload.md#get_sensor_installers_by_query_v2)
- **GET**: /sensors/queries/installers/v2
- **Description**: Get sensor installer IDs by provided query

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_sensor_installers_ccidby_query**](docs/SensorDownload.md#get_sensor_installers_ccidby_query)
- **GET**: /sensors/queries/installers/ccid/v1
- **Description**: Get CCID to use with sensor installers

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_sensor_installers_entities**](docs/SensorDownload.md#get_sensor_installers_entities)
- **GET**: /sensors/entities/installers/v1
- **Description**: Get sensor installer details by provided SHA256 IDs

---

**Class**: `Falcon::SensorDownload`

- **Operation**: [**get_sensor_installers_entities_v2**](docs/SensorDownload.md#get_sensor_installers_entities_v2)
- **GET**: /sensors/entities/installers/v2
- **Description**: Get sensor installer details by provided SHA256 IDs

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**create_sensor_update_policies**](docs/SensorUpdatePolicies.md#create_sensor_update_policies)
- **POST**: /policy/entities/sensor-update/v1
- **Description**: Create Sensor Update Policies by specifying details about the policy to create

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**create_sensor_update_policies_v2**](docs/SensorUpdatePolicies.md#create_sensor_update_policies_v2)
- **POST**: /policy/entities/sensor-update/v2
- **Description**: Create Sensor Update Policies by specifying details about the policy to create with additional support for uninstall protection

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**delete_sensor_update_policies**](docs/SensorUpdatePolicies.md#delete_sensor_update_policies)
- **DELETE**: /policy/entities/sensor-update/v1
- **Description**: Delete a set of Sensor Update Policies by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**get_sensor_update_policies**](docs/SensorUpdatePolicies.md#get_sensor_update_policies)
- **GET**: /policy/entities/sensor-update/v1
- **Description**: Retrieve a set of Sensor Update Policies by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**get_sensor_update_policies_v2**](docs/SensorUpdatePolicies.md#get_sensor_update_policies_v2)
- **GET**: /policy/entities/sensor-update/v2
- **Description**: Retrieve a set of Sensor Update Policies with additional support for uninstall protection by specifying their IDs

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**perform_sensor_update_policies_action**](docs/SensorUpdatePolicies.md#perform_sensor_update_policies_action)
- **POST**: /policy/entities/sensor-update-actions/v1
- **Description**: Perform the specified action on the Sensor Update Policies specified in the request

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_combined_sensor_update_builds**](docs/SensorUpdatePolicies.md#query_combined_sensor_update_builds)
- **GET**: /policy/combined/sensor-update-builds/v1
- **Description**: Retrieve available builds for use with Sensor Update Policies

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_combined_sensor_update_kernels**](docs/SensorUpdatePolicies.md#query_combined_sensor_update_kernels)
- **GET**: /policy/combined/sensor-update-kernels/v1
- **Description**: Retrieve kernel compatibility info for Sensor Update Builds

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_combined_sensor_update_policies**](docs/SensorUpdatePolicies.md#query_combined_sensor_update_policies)
- **GET**: /policy/combined/sensor-update/v1
- **Description**: Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_combined_sensor_update_policies_v2**](docs/SensorUpdatePolicies.md#query_combined_sensor_update_policies_v2)
- **GET**: /policy/combined/sensor-update/v2
- **Description**: Search for Sensor Update Policies with additional support for uninstall protection in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policies which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_combined_sensor_update_policy_members**](docs/SensorUpdatePolicies.md#query_combined_sensor_update_policy_members)
- **GET**: /policy/combined/sensor-update-members/v1
- **Description**: Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of host details which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_sensor_update_kernels_distinct**](docs/SensorUpdatePolicies.md#query_sensor_update_kernels_distinct)
- **GET**: /policy/queries/sensor-update-kernels/{distinct_field}/v1
- **Description**: Retrieve kernel compatibility info for Sensor Update Builds

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_sensor_update_policies**](docs/SensorUpdatePolicies.md#query_sensor_update_policies)
- **GET**: /policy/queries/sensor-update/v1
- **Description**: Search for Sensor Update Policies in your environment by providing an FQL filter and paging details. Returns a set of Sensor Update Policy IDs which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**query_sensor_update_policy_members**](docs/SensorUpdatePolicies.md#query_sensor_update_policy_members)
- **GET**: /policy/queries/sensor-update-members/v1
- **Description**: Search for members of a Sensor Update Policy in your environment by providing an FQL filter and paging details. Returns a set of Agent IDs which match the filter criteria

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**reveal_uninstall_token**](docs/SensorUpdatePolicies.md#reveal_uninstall_token)
- **POST**: /policy/combined/reveal-uninstall-token/v1
- **Description**: Reveals an uninstall token for a specific device. To retrieve the bulk maintenance token pass the value &#39;MAINTENANCE&#39; as the value for &#39;device_id&#39;

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**set_sensor_update_policies_precedence**](docs/SensorUpdatePolicies.md#set_sensor_update_policies_precedence)
- **POST**: /policy/entities/sensor-update-precedence/v1
- **Description**: Sets the precedence of Sensor Update Policies based on the order of IDs specified in the request. The first ID specified will have the highest precedence and the last ID specified will have the lowest. You must specify all non-Default Policies for a platform when updating precedence

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**update_sensor_update_policies**](docs/SensorUpdatePolicies.md#update_sensor_update_policies)
- **PATCH**: /policy/entities/sensor-update/v1
- **Description**: Update Sensor Update Policies by specifying the ID of the policy and details to update

---

**Class**: `Falcon::SensorUpdatePolicies`

- **Operation**: [**update_sensor_update_policies_v2**](docs/SensorUpdatePolicies.md#update_sensor_update_policies_v2)
- **PATCH**: /policy/entities/sensor-update/v2
- **Description**: Update Sensor Update Policies by specifying the ID of the policy and details to update with additional support for uninstall protection

---

**Class**: `Falcon::SensorUsage`

- **Operation**: [**get_sensor_usage_weekly**](docs/SensorUsage.md#get_sensor_usage_weekly)
- **GET**: /billing-dashboards-usage/aggregates/weekly-average/v1
- **Description**: Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days.

---

**Class**: `Falcon::SensorVisibilityExclusions`

- **Operation**: [**create_sv_exclusions_v1**](docs/SensorVisibilityExclusions.md#create_sv_exclusions_v1)
- **POST**: /policy/entities/sv-exclusions/v1
- **Description**: Create the sensor visibility exclusions

---

**Class**: `Falcon::SensorVisibilityExclusions`

- **Operation**: [**delete_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusions.md#delete_sensor_visibility_exclusions_v1)
- **DELETE**: /policy/entities/sv-exclusions/v1
- **Description**: Delete the sensor visibility exclusions by id

---

**Class**: `Falcon::SensorVisibilityExclusions`

- **Operation**: [**get_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusions.md#get_sensor_visibility_exclusions_v1)
- **GET**: /policy/entities/sv-exclusions/v1
- **Description**: Get a set of Sensor Visibility Exclusions by specifying their IDs

---

**Class**: `Falcon::SensorVisibilityExclusions`

- **Operation**: [**query_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusions.md#query_sensor_visibility_exclusions_v1)
- **GET**: /policy/queries/sv-exclusions/v1
- **Description**: Search for sensor visibility exclusions.

---

**Class**: `Falcon::SensorVisibilityExclusions`

- **Operation**: [**update_sensor_visibility_exclusions_v1**](docs/SensorVisibilityExclusions.md#update_sensor_visibility_exclusions_v1)
- **PATCH**: /policy/entities/sv-exclusions/v1
- **Description**: Update the sensor visibility exclusions

---

**Class**: `Falcon::SpotlightEvaluationLogic`

- **Operation**: [**combined_query_evaluation_logic**](docs/SpotlightEvaluationLogic.md#combined_query_evaluation_logic)
- **GET**: /spotlight/combined/evaluation-logic/v1
- **Description**: Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic entities which match the filter criteria.

---

**Class**: `Falcon::SpotlightEvaluationLogic`

- **Operation**: [**get_evaluation_logic**](docs/SpotlightEvaluationLogic.md#get_evaluation_logic)
- **GET**: /spotlight/entities/evaluation-logic/v1
- **Description**: Get details on evaluation logic items by providing one or more IDs.

---

**Class**: `Falcon::SpotlightEvaluationLogic`

- **Operation**: [**query_evaluation_logic**](docs/SpotlightEvaluationLogic.md#query_evaluation_logic)
- **GET**: /spotlight/queries/evaluation-logic/v1
- **Description**: Search for evaluation logic in your environment by providing a FQL filter and paging details. Returns a set of evaluation logic IDs which match the filter criteria.

---

**Class**: `Falcon::SpotlightVulnerabilities`

- **Operation**: [**combined_query_vulnerabilities**](docs/SpotlightVulnerabilities.md#combined_query_vulnerabilities)
- **GET**: /spotlight/combined/vulnerabilities/v1
- **Description**: Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability entities which match the filter criteria

---

**Class**: `Falcon::SpotlightVulnerabilities`

- **Operation**: [**get_remediations_v2**](docs/SpotlightVulnerabilities.md#get_remediations_v2)
- **GET**: /spotlight/entities/remediations/v2
- **Description**: Get details on remediation by providing one or more IDs

---

**Class**: `Falcon::SpotlightVulnerabilities`

- **Operation**: [**get_vulnerabilities_0**](docs/SpotlightVulnerabilities.md#get_vulnerabilities_0)
- **GET**: /spotlight/entities/vulnerabilities/v2
- **Description**: Get details on vulnerabilities by providing one or more IDs

---

**Class**: `Falcon::SpotlightVulnerabilities`

- **Operation**: [**query_vulnerabilities_0**](docs/SpotlightVulnerabilities.md#query_vulnerabilities_0)
- **GET**: /spotlight/queries/vulnerabilities/v1
- **Description**: Search for Vulnerabilities in your environment by providing an FQL filter and paging details. Returns a set of Vulnerability IDs which match the filter criteria

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**combined_edges_get**](docs/Threatgraph.md#combined_edges_get)
- **GET**: /threatgraph/combined/edges/v1
- **Description**: Retrieve edges for a given vertex id.  One edge type must be specified

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**combined_ran_on_get**](docs/Threatgraph.md#combined_ran_on_get)
- **GET**: /threatgraph/combined/ran-on/v1
- **Description**: Look up instances of indicators such as hashes, domain names, and ip addresses that have been seen on devices in your environment.

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**combined_summary_get**](docs/Threatgraph.md#combined_summary_get)
- **GET**: /threatgraph/combined/{vertex-type}/summary/v1
- **Description**: Retrieve summary for a given vertex ID

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**entities_vertices_get**](docs/Threatgraph.md#entities_vertices_get)
- **GET**: /threatgraph/entities/{vertex-type}/v1
- **Description**: Retrieve metadata for a given vertex ID. Note: This is a legacy endpoint used by CrowdStrike Store partners prior to release of the ThreatGraph OAuth 2.0 APIs. If you’re not currently using this endpoint, use the /v2 endpoint instead.

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**entities_vertices_getv2**](docs/Threatgraph.md#entities_vertices_getv2)
- **GET**: /threatgraph/entities/{vertex-type}/v2
- **Description**: Retrieve metadata for a given vertex ID

---

**Class**: `Falcon::Threatgraph`

- **Operation**: [**queries_edgetypes_get**](docs/Threatgraph.md#queries_edgetypes_get)
- **GET**: /threatgraph/queries/edge-types/v1
- **Description**: Show all available edge types

---

**Class**: `Falcon::UnidentifiedContainers`

- **Operation**: [**read_unidentified_containers_by_date_range_count**](docs/UnidentifiedContainers.md#read_unidentified_containers_by_date_range_count)
- **GET**: /container-security/aggregates/unidentified-containers/count-by-date/v1
- **Description**: Returns the count of Unidentified Containers over the last 7 days

---

**Class**: `Falcon::UnidentifiedContainers`

- **Operation**: [**read_unidentified_containers_count**](docs/UnidentifiedContainers.md#read_unidentified_containers_count)
- **GET**: /container-security/aggregates/unidentified-containers/count/v1
- **Description**: Returns the total count of Unidentified Containers over a time period

---

**Class**: `Falcon::UnidentifiedContainers`

- **Operation**: [**search_and_read_unidentified_containers**](docs/UnidentifiedContainers.md#search_and_read_unidentified_containers)
- **GET**: /container-security/combined/unidentified-containers/v1
- **Description**: Search Unidentified Containers by the provided search criteria

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**combined_user_roles_v1**](docs/UserManagement.md#combined_user_roles_v1)
- **GET**: /user-management/combined/user-roles/v1
- **Description**: Get User Grant(s). This endpoint lists both direct as well as flight control grants between a User and a Customer.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**create_user**](docs/UserManagement.md#create_user)
- **POST**: /users/entities/users/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/v1. Create a new user. After creating a user, assign one or more roles with POST /user-roles/entities/user-roles/v1

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**create_user_v1**](docs/UserManagement.md#create_user_v1)
- **POST**: /user-management/entities/users/v1
- **Description**: Create a new user. After creating a user, assign one or more roles with POST &#39;/user-management/entities/user-role-actions/v1&#39;

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**delete_user**](docs/UserManagement.md#delete_user)
- **DELETE**: /users/entities/users/v1
- **Description**: Deprecated : Please use DELETE /user-management/entities/users/v1. Delete a user permanently

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**delete_user_v1**](docs/UserManagement.md#delete_user_v1)
- **DELETE**: /user-management/entities/users/v1
- **Description**: Delete a user permanently.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**entities_roles_v1**](docs/UserManagement.md#entities_roles_v1)
- **GET**: /user-management/entities/roles/v1
- **Description**: Get info about a role

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**get_available_role_ids**](docs/UserManagement.md#get_available_role_ids)
- **GET**: /user-roles/queries/user-role-ids-by-cid/v1
- **Description**: Deprecated : Please use GET /user-management/queries/roles/v1. Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**get_roles**](docs/UserManagement.md#get_roles)
- **GET**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use GET /user-management/entities/roles/v1. Get info about a role

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**get_user_role_ids**](docs/UserManagement.md#get_user_role_ids)
- **GET**: /user-roles/queries/user-role-ids-by-user-uuid/v1
- **Description**: Deprecated : Please use GET /user-management/combined/user-roles/v1. Show role IDs of roles assigned to a user. For more information on each role, provide the role ID to &#x60;/customer/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**grant_user_role_ids**](docs/UserManagement.md#grant_user_role_ids)
- **POST**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Assign one or more roles to a user

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**queries_roles_v1**](docs/UserManagement.md#queries_roles_v1)
- **GET**: /user-management/queries/roles/v1
- **Description**: Show role IDs for all roles available in your customer account. For more information on each role, provide the role ID to &#x60;/user-management/entities/roles/v1&#x60;.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**query_user_v1**](docs/UserManagement.md#query_user_v1)
- **GET**: /user-management/queries/users/v1
- **Description**: List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/user-management/entities/users/GET/v1&#x60;.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**retrieve_emails_by_cid**](docs/UserManagement.md#retrieve_emails_by_cid)
- **GET**: /users/queries/emails-by-cid/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/GET/v1. List the usernames (usually an email address) for all users in your customer account

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**retrieve_user**](docs/UserManagement.md#retrieve_user)
- **GET**: /users/entities/users/v1
- **Description**: Deprecated : Please use POST /user-management/entities/users/GET/v1. Get info about a user

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**retrieve_user_uuid**](docs/UserManagement.md#retrieve_user_uuid)
- **GET**: /users/queries/user-uuids-by-email/v1
- **Description**: Deprecated : Please use GET /user-management/queries/users/v1. Get a user&#39;s ID by providing a username (usually an email address)

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**retrieve_user_uuids_by_cid**](docs/UserManagement.md#retrieve_user_uuids_by_cid)
- **GET**: /users/queries/user-uuids-by-cid/v1
- **Description**: Deprecated : Please use GET /user-management/queries/users/v1. List user IDs for all users in your customer account. For more information on each user, provide the user ID to &#x60;/users/entities/user/v1&#x60;.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**retrieve_users_getv1**](docs/UserManagement.md#retrieve_users_getv1)
- **POST**: /user-management/entities/users/GET/v1
- **Description**: Get info about users including their name, UID and CID by providing user UUIDs

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**revoke_user_role_ids**](docs/UserManagement.md#revoke_user_role_ids)
- **DELETE**: /user-roles/entities/user-roles/v1
- **Description**: Deprecated : Please use POST /user-management/entities/user-role-actions/v1. Revoke one or more roles from a user

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**update_user**](docs/UserManagement.md#update_user)
- **PATCH**: /users/entities/users/v1
- **Description**: Deprecated : Please use PATCH /user-management/entities/users/v1. Modify an existing user&#39;s first or last name

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**update_user_v1**](docs/UserManagement.md#update_user_v1)
- **PATCH**: /user-management/entities/users/v1
- **Description**: Modify an existing user&#39;s first or last name.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**user_action_v1**](docs/UserManagement.md#user_action_v1)
- **POST**: /user-management/entities/user-actions/v1
- **Description**: Apply actions to one or more User. Available action names: reset_2fa, reset_password. User UUIDs can be provided in &#x60;ids&#x60; param as part of request payload.

---

**Class**: `Falcon::UserManagement`

- **Operation**: [**user_roles_action_v1**](docs/UserManagement.md#user_roles_action_v1)
- **POST**: /user-management/entities/user-role-actions/v1
- **Description**: Grant or Revoke one or more role(s) to a user against a CID. User UUID, CID and Role ID(s) can be provided in request payload. Available Action(s) : grant, revoke

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_activities_combined**](docs/Workflows.md#workflow_activities_combined)
- **GET**: /workflows/combined/activities/v1
- **Description**: Search for activities by name. Returns all supported activities if no filter specified

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_definitions_combined**](docs/Workflows.md#workflow_definitions_combined)
- **GET**: /workflows/combined/definitions/v1
- **Description**: Search workflow definitions based on the provided filter

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_definitions_export**](docs/Workflows.md#workflow_definitions_export)
- **GET**: /workflows/entities/definitions/export/v1
- **Description**: Exports a workflow definition for the given definition ID

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_definitions_import**](docs/Workflows.md#workflow_definitions_import)
- **POST**: /workflows/entities/definitions/import/v1
- **Description**: Imports a workflow definition based on the provided model

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_definitions_update**](docs/Workflows.md#workflow_definitions_update)
- **PUT**: /workflows/entities/definitions/v1
- **Description**: Updates a workflow definition based on the provided model

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_execute**](docs/Workflows.md#workflow_execute)
- **POST**: /workflows/entities/execute/v1
- **Description**: Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s)

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_execute_internal**](docs/Workflows.md#workflow_execute_internal)
- **POST**: /workflows/entities/execute/internal/v1
- **Description**: Executes an on-demand Workflow - internal workflows permitted, the body is JSON used to trigger the execution, the response the execution ID(s)

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_execution_results**](docs/Workflows.md#workflow_execution_results)
- **GET**: /workflows/entities/execution-results/v1
- **Description**: Get execution result of a given execution

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_executions_action**](docs/Workflows.md#workflow_executions_action)
- **POST**: /workflows/entities/execution-actions/v1
- **Description**: Allows a user to resume/retry a failed workflow execution.

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_executions_combined**](docs/Workflows.md#workflow_executions_combined)
- **GET**: /workflows/combined/executions/v1
- **Description**: Search workflow executions based on the provided filter

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_get_human_input_v1**](docs/Workflows.md#workflow_get_human_input_v1)
- **GET**: /workflows/entities/human-inputs/v1
- **Description**: Gets one or more specific human inputs by their IDs.

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_mock_execute**](docs/Workflows.md#workflow_mock_execute)
- **POST**: /workflows/entities/mock-executions/v1
- **Description**: Executes a workflow definition with mocks

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_system_definitions_de_provision**](docs/Workflows.md#workflow_system_definitions_de_provision)
- **POST**: /workflows/system-definitions/deprovision/v1
- **Description**: Deprovisions a system definition that was previously provisioned on the target CID

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_system_definitions_promote**](docs/Workflows.md#workflow_system_definitions_promote)
- **POST**: /workflows/system-definitions/promote/v1
- **Description**: Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated.

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_system_definitions_provision**](docs/Workflows.md#workflow_system_definitions_provision)
- **POST**: /workflows/system-definitions/provision/v1
- **Description**: Provisions a system definition onto the target CID by using the template and provided parameters

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_triggers_combined**](docs/Workflows.md#workflow_triggers_combined)
- **GET**: /workflows/combined/triggers/v1
- **Description**: Search for triggers by namespaced identifier, i.e. FalconAudit, Detection, or FalconAudit/Detection/Status. Returns all triggers if no filter specified

---

**Class**: `Falcon::Workflows`

- **Operation**: [**workflow_update_human_input_v1**](docs/Workflows.md#workflow_update_human_input_v1)
- **PATCH**: /workflows/entities/human-inputs/v1
- **Description**: Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted.

---

**Class**: `Falcon::ZeroTrustAssessment`

- **Operation**: [**get_assessment_v1**](docs/ZeroTrustAssessment.md#get_assessment_v1)
- **GET**: /zero-trust-assessment/entities/assessments/v1
- **Description**: Get Zero Trust Assessment data for one or more hosts by providing agent IDs (AID) and a customer ID (CID).

---

**Class**: `Falcon::ZeroTrustAssessment`

- **Operation**: [**get_assessments_by_score_v1**](docs/ZeroTrustAssessment.md#get_assessments_by_score_v1)
- **GET**: /zero-trust-assessment/queries/assessments/v1
- **Description**: Get Zero Trust Assessment data for one or more hosts by providing a customer ID (CID) and a range of scores.

---

**Class**: `Falcon::ZeroTrustAssessment`

- **Operation**: [**get_audit_v1**](docs/ZeroTrustAssessment.md#get_audit_v1)
- **GET**: /zero-trust-assessment/entities/audit/v1
- **Description**: Get the Zero Trust Assessment audit report for one customer ID (CID).

---

