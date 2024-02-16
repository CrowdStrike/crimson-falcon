# Falcon::WorkflowsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflow_definitions_combined**](WorkflowsApi.md#workflow_definitions_combined) | **GET** /workflows/combined/definitions/v1 | Search workflow definitions based on the provided filter |
| [**workflow_definitions_create**](WorkflowsApi.md#workflow_definitions_create) | **POST** /workflows/entities/definitions/v1 | Creates a workflow definition based on the provided model |
| [**workflow_definitions_export**](WorkflowsApi.md#workflow_definitions_export) | **GET** /workflows/entities/definitions/export/v1 | Exports a workflow definition for the given definition ID |
| [**workflow_definitions_import**](WorkflowsApi.md#workflow_definitions_import) | **POST** /workflows/entities/definitions/import/v1 | Imports a workflow definition based on the provided model |
| [**workflow_definitions_update**](WorkflowsApi.md#workflow_definitions_update) | **PUT** /workflows/entities/definitions/v1 | Updates a workflow definition based on the provided model |
| [**workflow_execute**](WorkflowsApi.md#workflow_execute) | **POST** /workflows/entities/execute/v1 | Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s) |
| [**workflow_execution_results**](WorkflowsApi.md#workflow_execution_results) | **GET** /workflows/entities/execution-results/v1 | Get execution result of a given execution |
| [**workflow_executions_action**](WorkflowsApi.md#workflow_executions_action) | **POST** /workflows/entities/execution-actions/v1 | Allows a user to resume/retry a failed workflow execution. |
| [**workflow_executions_combined**](WorkflowsApi.md#workflow_executions_combined) | **GET** /workflows/combined/executions/v1 | Search workflow executions based on the provided filter |
| [**workflow_get_human_input_v1**](WorkflowsApi.md#workflow_get_human_input_v1) | **GET** /workflows/entities/human-inputs/v1 | Gets one or more specific human inputs by their IDs. |
| [**workflow_system_definitions_de_provision**](WorkflowsApi.md#workflow_system_definitions_de_provision) | **POST** /workflows/system-definitions/deprovision/v1 | Deprovisions a system definition that was previously provisioned on the target CID |
| [**workflow_system_definitions_promote**](WorkflowsApi.md#workflow_system_definitions_promote) | **POST** /workflows/system-definitions/promote/v1 | Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated. |
| [**workflow_system_definitions_provision**](WorkflowsApi.md#workflow_system_definitions_provision) | **POST** /workflows/system-definitions/provision/v1 | Provisions a system definition onto the target CID by using the template and provided parameters |
| [**workflow_update_human_input_v1**](WorkflowsApi.md#workflow_update_human_input_v1) | **PATCH** /workflows/entities/human-inputs/v1 | Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted. |


## workflow_definitions_combined

> <DefinitionsDefinitionExternalResponse> workflow_definitions_combined(opts)

Search workflow definitions based on the provided filter

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

api_instance = Falcon::WorkflowsApi.new
opts = {
  filter: 'filter_example', # String | FQL query specifying filter parameters.
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  limit: 56, # Integer | Maximum number of records to return.
  sort: 'sort_example' # String | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending.
}

begin
  # Search workflow definitions based on the provided filter
  result = api_instance.workflow_definitions_combined(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_combined: #{e}"
end
```

#### Using the workflow_definitions_combined_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefinitionsDefinitionExternalResponse>, Integer, Hash)> workflow_definitions_combined_with_http_info(opts)

```ruby
begin
  # Search workflow definitions based on the provided filter
  data, status_code, headers = api_instance.workflow_definitions_combined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefinitionsDefinitionExternalResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_combined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying filter parameters. | [optional] |
| **offset** | **String** | Starting pagination offset of records to return. | [optional] |
| **limit** | **Integer** | Maximum number of records to return. | [optional] |
| **sort** | **String** | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending. | [optional] |

### Return type

[**DefinitionsDefinitionExternalResponse**](DefinitionsDefinitionExternalResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_definitions_create

> <ApiResourceIDsResponse> workflow_definitions_create(body, opts)

Creates a workflow definition based on the provided model

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

api_instance = Falcon::WorkflowsApi.new
body = Falcon::ModelsDefinitionCreateRequestV2.new({definition: Falcon::V2Definition.new({name: 'name_example', node_registry: { key: 'inner_example'}, trigger: Falcon::V2Trigger.new({_next: ['_next_example']}), uniq_node_seen: { key: false}}), enabled: false}) # ModelsDefinitionCreateRequestV2 | 
opts = {
  validate_only: true # Boolean | When enabled, prevents saving workflow after validating
}

begin
  # Creates a workflow definition based on the provided model
  result = api_instance.workflow_definitions_create(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_create: #{e}"
end
```

#### Using the workflow_definitions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResourceIDsResponse>, Integer, Hash)> workflow_definitions_create_with_http_info(body, opts)

```ruby
begin
  # Creates a workflow definition based on the provided model
  data, status_code, headers = api_instance.workflow_definitions_create_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResourceIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsDefinitionCreateRequestV2**](ModelsDefinitionCreateRequestV2.md) |  |  |
| **validate_only** | **Boolean** | When enabled, prevents saving workflow after validating | [optional][default to false] |

### Return type

[**ApiResourceIDsResponse**](ApiResourceIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json, application/yaml
- **Accept**: application/json


## workflow_definitions_export

> Array&lt;Integer&gt; workflow_definitions_export(id)

Exports a workflow definition for the given definition ID

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

api_instance = Falcon::WorkflowsApi.new
id = 'id_example' # String | ID of workflow definitions to return details for

begin
  # Exports a workflow definition for the given definition ID
  result = api_instance.workflow_definitions_export(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_export: #{e}"
end
```

#### Using the workflow_definitions_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Integer&gt;, Integer, Hash)> workflow_definitions_export_with_http_info(id)

```ruby
begin
  # Exports a workflow definition for the given definition ID
  data, status_code, headers = api_instance.workflow_definitions_export_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Integer&gt;
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of workflow definitions to return details for |  |

### Return type

**Array&lt;Integer&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/yaml


## workflow_definitions_import

> <DefinitionsDefinitionImportResponse> workflow_definitions_import(data_file, opts)

Imports a workflow definition based on the provided model

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

api_instance = Falcon::WorkflowsApi.new
data_file = File.new('/path/to/some/file') # File | A workflow definition in YAML format to import
opts = {
  name: 'name_example', # String | Workflow name to override
  validate_only: true # Boolean | When enabled, prevents saving workflow after validating
}

begin
  # Imports a workflow definition based on the provided model
  result = api_instance.workflow_definitions_import(data_file, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_import: #{e}"
end
```

#### Using the workflow_definitions_import_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefinitionsDefinitionImportResponse>, Integer, Hash)> workflow_definitions_import_with_http_info(data_file, opts)

```ruby
begin
  # Imports a workflow definition based on the provided model
  data, status_code, headers = api_instance.workflow_definitions_import_with_http_info(data_file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefinitionsDefinitionImportResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_import_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_file** | **File** | A workflow definition in YAML format to import |  |
| **name** | **String** | Workflow name to override | [optional] |
| **validate_only** | **Boolean** | When enabled, prevents saving workflow after validating | [optional][default to false] |

### Return type

[**DefinitionsDefinitionImportResponse**](DefinitionsDefinitionImportResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## workflow_definitions_update

> <ApiResourceIDsResponse> workflow_definitions_update(body, opts)

Updates a workflow definition based on the provided model

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

api_instance = Falcon::WorkflowsApi.new
body = Falcon::ModelsDefinitionUpdateRequestV2.new({definition: Falcon::V2Definition.new({name: 'name_example', node_registry: { key: 'inner_example'}, trigger: Falcon::V2Trigger.new({_next: ['_next_example']}), uniq_node_seen: { key: false}}), enabled: false, id: 'id_example'}) # ModelsDefinitionUpdateRequestV2 | 
opts = {
  validate_only: true # Boolean | When enabled, prevents saving workflow after validating
}

begin
  # Updates a workflow definition based on the provided model
  result = api_instance.workflow_definitions_update(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_update: #{e}"
end
```

#### Using the workflow_definitions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResourceIDsResponse>, Integer, Hash)> workflow_definitions_update_with_http_info(body, opts)

```ruby
begin
  # Updates a workflow definition based on the provided model
  data, status_code, headers = api_instance.workflow_definitions_update_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResourceIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_definitions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsDefinitionUpdateRequestV2**](ModelsDefinitionUpdateRequestV2.md) |  |  |
| **validate_only** | **Boolean** | When enabled, prevents saving workflow after validating | [optional][default to false] |

### Return type

[**ApiResourceIDsResponse**](ApiResourceIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json, application/yaml
- **Accept**: application/json


## workflow_execute

> <ApiResourceIDsResponse> workflow_execute(body, opts)

Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s)

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

api_instance = Falcon::WorkflowsApi.new
body = { ... } # Object | 
opts = {
  execution_cid: ['inner_example'], # Array<String> | CID(s) to execute on. This can be a child if this is a flight control enabled definition. If unset the definition CID is used.
  definition_id: ['inner_example'], # Array<String> | Definition ID to execute, either a name or an ID can be specified.
  name: 'name_example', # String | Workflow name to execute, either a name or an ID can be specified.
  key: 'key_example', # String | Key used to help deduplicate executions, if unset a new UUID is used
  depth: 56, # Integer | Used to record the execution depth to help limit execution loops when a workflow triggers another. The maximum depth is 4.
  source_event_url: 'source_event_url_example' # String | Used to record a URL to the source that led to triggering this workflow
}

begin
  # Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s)
  result = api_instance.workflow_execute(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_execute: #{e}"
end
```

#### Using the workflow_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResourceIDsResponse>, Integer, Hash)> workflow_execute_with_http_info(body, opts)

```ruby
begin
  # Executes an on-demand Workflow, the body is JSON used to trigger the execution, the response the execution ID(s)
  data, status_code, headers = api_instance.workflow_execute_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResourceIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **Object** |  |  |
| **execution_cid** | [**Array&lt;String&gt;**](String.md) | CID(s) to execute on. This can be a child if this is a flight control enabled definition. If unset the definition CID is used. | [optional] |
| **definition_id** | [**Array&lt;String&gt;**](String.md) | Definition ID to execute, either a name or an ID can be specified. | [optional] |
| **name** | **String** | Workflow name to execute, either a name or an ID can be specified. | [optional] |
| **key** | **String** | Key used to help deduplicate executions, if unset a new UUID is used | [optional] |
| **depth** | **Integer** | Used to record the execution depth to help limit execution loops when a workflow triggers another. The maximum depth is 4. | [optional] |
| **source_event_url** | **String** | Used to record a URL to the source that led to triggering this workflow | [optional] |

### Return type

[**ApiResourceIDsResponse**](ApiResourceIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_execution_results

> <ApiExecutionResultsResponse> workflow_execution_results(ids)

Get execution result of a given execution

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

api_instance = Falcon::WorkflowsApi.new
ids = ['inner_example'] # Array<String> | workflow execution id to return results for.

begin
  # Get execution result of a given execution
  result = api_instance.workflow_execution_results(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_execution_results: #{e}"
end
```

#### Using the workflow_execution_results_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiExecutionResultsResponse>, Integer, Hash)> workflow_execution_results_with_http_info(ids)

```ruby
begin
  # Get execution result of a given execution
  data, status_code, headers = api_instance.workflow_execution_results_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiExecutionResultsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_execution_results_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | workflow execution id to return results for. |  |

### Return type

[**ApiExecutionResultsResponse**](ApiExecutionResultsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_executions_action

> <DefinitionsDefinitionEntitiesResponse> workflow_executions_action(action_name, body)

Allows a user to resume/retry a failed workflow execution.

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

api_instance = Falcon::WorkflowsApi.new
action_name = 'resume' # String | Specify one of these actions:  - `resume`: resume/retry the workflow execution(s) specified in ids
body = Falcon::ClientActionRequest.new({ids: ['ids_example']}) # ClientActionRequest | 

begin
  # Allows a user to resume/retry a failed workflow execution.
  result = api_instance.workflow_executions_action(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_executions_action: #{e}"
end
```

#### Using the workflow_executions_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefinitionsDefinitionEntitiesResponse>, Integer, Hash)> workflow_executions_action_with_http_info(action_name, body)

```ruby
begin
  # Allows a user to resume/retry a failed workflow execution.
  data, status_code, headers = api_instance.workflow_executions_action_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefinitionsDefinitionEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_executions_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | Specify one of these actions:  - &#x60;resume&#x60;: resume/retry the workflow execution(s) specified in ids |  |
| **body** | [**ClientActionRequest**](ClientActionRequest.md) |  |  |

### Return type

[**DefinitionsDefinitionEntitiesResponse**](DefinitionsDefinitionEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_executions_combined

> <ApiExecutionResultsResponse> workflow_executions_combined(opts)

Search workflow executions based on the provided filter

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

api_instance = Falcon::WorkflowsApi.new
opts = {
  filter: 'filter_example', # String | FQL query specifying filter parameters.
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  limit: 56, # Integer | Maximum number of records to return.
  sort: 'sort_example' # String | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending.
}

begin
  # Search workflow executions based on the provided filter
  result = api_instance.workflow_executions_combined(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_executions_combined: #{e}"
end
```

#### Using the workflow_executions_combined_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiExecutionResultsResponse>, Integer, Hash)> workflow_executions_combined_with_http_info(opts)

```ruby
begin
  # Search workflow executions based on the provided filter
  data, status_code, headers = api_instance.workflow_executions_combined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiExecutionResultsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_executions_combined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | FQL query specifying filter parameters. | [optional] |
| **offset** | **String** | Starting pagination offset of records to return. | [optional] |
| **limit** | **Integer** | Maximum number of records to return. | [optional] |
| **sort** | **String** | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending. | [optional] |

### Return type

[**ApiExecutionResultsResponse**](ApiExecutionResultsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_get_human_input_v1

> <ModelUserInputReadResponse> workflow_get_human_input_v1(ids)

Gets one or more specific human inputs by their IDs.

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

api_instance = Falcon::WorkflowsApi.new
ids = ['inner_example'] # Array<String> | IDs of human inputs to read

begin
  # Gets one or more specific human inputs by their IDs.
  result = api_instance.workflow_get_human_input_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_get_human_input_v1: #{e}"
end
```

#### Using the workflow_get_human_input_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelUserInputReadResponse>, Integer, Hash)> workflow_get_human_input_v1_with_http_info(ids)

```ruby
begin
  # Gets one or more specific human inputs by their IDs.
  data, status_code, headers = api_instance.workflow_get_human_input_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelUserInputReadResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_get_human_input_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of human inputs to read |  |

### Return type

[**ModelUserInputReadResponse**](ModelUserInputReadResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflow_system_definitions_de_provision

> <ClientSystemDefinitionCreateResponse> workflow_system_definitions_de_provision(body)

Deprovisions a system definition that was previously provisioned on the target CID

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

api_instance = Falcon::WorkflowsApi.new
body = Falcon::ClientSystemDefinitionDeProvisionRequest.new({definition_id: 'definition_id_example', deprovision_all: false, template_id: 'template_id_example', template_name: 'template_name_example'}) # ClientSystemDefinitionDeProvisionRequest | 

begin
  # Deprovisions a system definition that was previously provisioned on the target CID
  result = api_instance.workflow_system_definitions_de_provision(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_de_provision: #{e}"
end
```

#### Using the workflow_system_definitions_de_provision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSystemDefinitionCreateResponse>, Integer, Hash)> workflow_system_definitions_de_provision_with_http_info(body)

```ruby
begin
  # Deprovisions a system definition that was previously provisioned on the target CID
  data, status_code, headers = api_instance.workflow_system_definitions_de_provision_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSystemDefinitionCreateResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_de_provision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClientSystemDefinitionDeProvisionRequest**](ClientSystemDefinitionDeProvisionRequest.md) |  |  |

### Return type

[**ClientSystemDefinitionCreateResponse**](ClientSystemDefinitionCreateResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_system_definitions_promote

> <ClientSystemDefinitionCreateResponse> workflow_system_definitions_promote(body)

Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated.

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

api_instance = Falcon::WorkflowsApi.new
body = Falcon::ClientSystemDefinitionPromoteRequest.new({customer_definition_id: 'customer_definition_id_example', name: 'name_example', parameters: Falcon::ParameterTemplateProvisionParameters.new, template_id: 'template_id_example', template_name: 'template_name_example', template_version: 'template_version_example'}) # ClientSystemDefinitionPromoteRequest | 

begin
  # Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated.
  result = api_instance.workflow_system_definitions_promote(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_promote: #{e}"
end
```

#### Using the workflow_system_definitions_promote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSystemDefinitionCreateResponse>, Integer, Hash)> workflow_system_definitions_promote_with_http_info(body)

```ruby
begin
  # Promotes a version of a system definition for a customer. The customer must already have been provisioned. This allows the caller to apply an updated template version to a specific cid and expects all parameters to be supplied. If the template supports multi-instance the customer scope definition ID must be supplied to determine which customer workflow should be updated.
  data, status_code, headers = api_instance.workflow_system_definitions_promote_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSystemDefinitionCreateResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_promote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClientSystemDefinitionPromoteRequest**](ClientSystemDefinitionPromoteRequest.md) |  |  |

### Return type

[**ClientSystemDefinitionCreateResponse**](ClientSystemDefinitionCreateResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_system_definitions_provision

> <ClientSystemDefinitionCreateResponse> workflow_system_definitions_provision(body)

Provisions a system definition onto the target CID by using the template and provided parameters

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

api_instance = Falcon::WorkflowsApi.new
body = Falcon::ClientSystemDefinitionProvisionRequest.new({name: 'name_example', parameters: Falcon::ParameterTemplateProvisionParameters.new, template_id: 'template_id_example', template_name: 'template_name_example', template_version: 'template_version_example'}) # ClientSystemDefinitionProvisionRequest | 

begin
  # Provisions a system definition onto the target CID by using the template and provided parameters
  result = api_instance.workflow_system_definitions_provision(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_provision: #{e}"
end
```

#### Using the workflow_system_definitions_provision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSystemDefinitionCreateResponse>, Integer, Hash)> workflow_system_definitions_provision_with_http_info(body)

```ruby
begin
  # Provisions a system definition onto the target CID by using the template and provided parameters
  data, status_code, headers = api_instance.workflow_system_definitions_provision_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSystemDefinitionCreateResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_system_definitions_provision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ClientSystemDefinitionProvisionRequest**](ClientSystemDefinitionProvisionRequest.md) |  |  |

### Return type

[**ClientSystemDefinitionCreateResponse**](ClientSystemDefinitionCreateResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflow_update_human_input_v1

> <ApiResourceIDsResponse> workflow_update_human_input_v1(id, body)

Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted.

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

api_instance = Falcon::WorkflowsApi.new
id = 'id_example' # String | ID of human input to provide an input to
body = Falcon::ModelUserInputUpdateRequest.new({input: 'input_example', note: 'note_example'}) # ModelUserInputUpdateRequest | 

begin
  # Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted.
  result = api_instance.workflow_update_human_input_v1(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_update_human_input_v1: #{e}"
end
```

#### Using the workflow_update_human_input_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResourceIDsResponse>, Integer, Hash)> workflow_update_human_input_v1_with_http_info(id, body)

```ruby
begin
  # Provides an input in response to a human input action. Depending on action configuration, one or more of Approve, Decline, and/or Escalate are permitted.
  data, status_code, headers = api_instance.workflow_update_human_input_v1_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResourceIDsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling WorkflowsApi->workflow_update_human_input_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of human input to provide an input to |  |
| **body** | [**ModelUserInputUpdateRequest**](ModelUserInputUpdateRequest.md) |  |  |

### Return type

[**ApiResourceIDsResponse**](ApiResourceIDsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

