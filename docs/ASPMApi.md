# Falcon::ASPMApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_executor_node**](ASPMApi.md#create_executor_node) | **POST** /aspm-api-gateway/api/v1/executor_nodes | Create a new relay node |
| [**create_integration**](ASPMApi.md#create_integration) | **POST** /aspm-api-gateway/api/v1/integrations | Create a new integration |
| [**create_integration_task**](ASPMApi.md#create_integration_task) | **POST** /aspm-api-gateway/api/v1/integration_tasks | Create new integration task. |
| [**delete_executor_node**](ASPMApi.md#delete_executor_node) | **DELETE** /aspm-api-gateway/api/v1/executor_nodes/{ID} | Delete a relay node |
| [**delete_integration**](ASPMApi.md#delete_integration) | **DELETE** /aspm-api-gateway/api/v1/integrations/{ID} | Delete an existing integration by its ID |
| [**delete_integration_task**](ASPMApi.md#delete_integration_task) | **DELETE** /aspm-api-gateway/api/v1/integration_tasks/{ID} | Delete an existing integration task by its ID |
| [**delete_tags**](ASPMApi.md#delete_tags) | **POST** /aspm-api-gateway/api/v1/tags | Remove existing tags |
| [**execute_query**](ASPMApi.md#execute_query) | **POST** /aspm-api-gateway/api/v1/query | Execute a query. The syntax used is identical to that of the query page. |
| [**get_executor_nodes**](ASPMApi.md#get_executor_nodes) | **GET** /aspm-api-gateway/api/v1/executor_nodes | Get all the relay nodes |
| [**get_integration_tasks**](ASPMApi.md#get_integration_tasks) | **GET** /aspm-api-gateway/api/v1/integration_tasks | Get all the integration tasks |
| [**get_integration_types**](ASPMApi.md#get_integration_types) | **GET** /aspm-api-gateway/api/v1/integration_types | Get all the integration types |
| [**get_integrations**](ASPMApi.md#get_integrations) | **GET** /aspm-api-gateway/api/v1/integrations | Get a list of all the integrations |
| [**get_service_violation_types**](ASPMApi.md#get_service_violation_types) | **GET** /aspm-api-gateway/api/v1/services/violations/types | Get the different types of violation |
| [**get_services_count**](ASPMApi.md#get_services_count) | **POST** /aspm-api-gateway/api/v1/services/count | Get the total amount of existing services |
| [**get_tags**](ASPMApi.md#get_tags) | **GET** /aspm-api-gateway/api/v1/tags | Get all the tags |
| [**run_integration_task**](ASPMApi.md#run_integration_task) | **POST** /aspm-api-gateway/api/v1/integration_tasks/{ID}/run | Run an integration task by its ID |
| [**service_now_get_deployments**](ASPMApi.md#service_now_get_deployments) | **GET** /aspm-api-gateway/api/v1/servicenow/deployments |  |
| [**service_now_get_services**](ASPMApi.md#service_now_get_services) | **GET** /aspm-api-gateway/api/v1/servicenow/services |  |
| [**update_executor_node**](ASPMApi.md#update_executor_node) | **PUT** /aspm-api-gateway/api/v1/executor_nodes | Update an existing relay node |
| [**update_integration**](ASPMApi.md#update_integration) | **PUT** /aspm-api-gateway/api/v1/integrations/{ID} | Update an existing integration by its ID |
| [**update_integration_task**](ASPMApi.md#update_integration_task) | **PUT** /aspm-api-gateway/api/v1/integration_tasks/{ID} | Update an existing integration task by its ID |
| [**upsert_business_applications**](ASPMApi.md#upsert_business_applications) | **PUT** /aspm-api-gateway/api/v1/business_applications | Create or Update Business Applications |
| [**upsert_tags**](ASPMApi.md#upsert_tags) | **PUT** /aspm-api-gateway/api/v1/tags | Create new or update existing tag. You can update unique tags table or regular tags table |


## create_executor_node

> <TypesExecutorNode> create_executor_node(body)

Create a new relay node

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesExecutorNode.new # TypesExecutorNode | 

begin
  # Create a new relay node
  result = api_instance.create_executor_node(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_executor_node: #{e}"
end
```

#### Using the create_executor_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesExecutorNode>, Integer, Hash)> create_executor_node_with_http_info(body)

```ruby
begin
  # Create a new relay node
  data, status_code, headers = api_instance.create_executor_node_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesExecutorNode>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_executor_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesExecutorNode**](TypesExecutorNode.md) |  |  |

### Return type

[**TypesExecutorNode**](TypesExecutorNode.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_integration

> <TypesIntegrationResponse> create_integration(body)

Create a new integration

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesCreateIntegrationRequest.new # TypesCreateIntegrationRequest | 

begin
  # Create a new integration
  result = api_instance.create_integration(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_integration: #{e}"
end
```

#### Using the create_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationResponse>, Integer, Hash)> create_integration_with_http_info(body)

```ruby
begin
  # Create a new integration
  data, status_code, headers = api_instance.create_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesCreateIntegrationRequest**](TypesCreateIntegrationRequest.md) |  |  |

### Return type

[**TypesIntegrationResponse**](TypesIntegrationResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_integration_task

> <TypesIntegrationTaskResponse> create_integration_task(body)

Create new integration task.

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesCreateIntegrationTaskRequest.new # TypesCreateIntegrationTaskRequest | 

begin
  # Create new integration task.
  result = api_instance.create_integration_task(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_integration_task: #{e}"
end
```

#### Using the create_integration_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationTaskResponse>, Integer, Hash)> create_integration_task_with_http_info(body)

```ruby
begin
  # Create new integration task.
  data, status_code, headers = api_instance.create_integration_task_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationTaskResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->create_integration_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesCreateIntegrationTaskRequest**](TypesCreateIntegrationTaskRequest.md) |  |  |

### Return type

[**TypesIntegrationTaskResponse**](TypesIntegrationTaskResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_executor_node

> delete_executor_node(id)

Delete a relay node

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 

begin
  # Delete a relay node
  api_instance.delete_executor_node(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_executor_node: #{e}"
end
```

#### Using the delete_executor_node_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_executor_node_with_http_info(id)

```ruby
begin
  # Delete a relay node
  data, status_code, headers = api_instance.delete_executor_node_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_executor_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_integration

> delete_integration(id)

Delete an existing integration by its ID

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 

begin
  # Delete an existing integration by its ID
  api_instance.delete_integration(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_integration: #{e}"
end
```

#### Using the delete_integration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_integration_with_http_info(id)

```ruby
begin
  # Delete an existing integration by its ID
  data, status_code, headers = api_instance.delete_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_integration_task

> delete_integration_task(id)

Delete an existing integration task by its ID

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 

begin
  # Delete an existing integration task by its ID
  api_instance.delete_integration_task(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_integration_task: #{e}"
end
```

#### Using the delete_integration_task_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_integration_task_with_http_info(id)

```ruby
begin
  # Delete an existing integration task by its ID
  data, status_code, headers = api_instance.delete_integration_task_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_integration_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tags

> delete_tags(body)

Remove existing tags

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesEditTagRequest.new({entries: [Falcon::TypesTagEntry.new({persistent_signature: 'persistent_signature_example'})], name: 'name_example'}) # TypesEditTagRequest | 

begin
  # Remove existing tags
  api_instance.delete_tags(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_tags: #{e}"
end
```

#### Using the delete_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tags_with_http_info(body)

```ruby
begin
  # Remove existing tags
  data, status_code, headers = api_instance.delete_tags_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->delete_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesEditTagRequest**](TypesEditTagRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_query

> <TypesQueryResult> execute_query(body)

Execute a query. The syntax used is identical to that of the query page.

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesQueryRequest.new({query: 'query_example'}) # TypesQueryRequest |  **params details:** - selectFields: - **fields** - For filtering relevant fields only. - **withoutServices** - Default is set to **true**, you will not receive information about the services. If you want to get the relevant service, set to **false**. - **serviceFields**-  For filtering relevant fields of the service (if you chose to get it)

begin
  # Execute a query. The syntax used is identical to that of the query page.
  result = api_instance.execute_query(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->execute_query: #{e}"
end
```

#### Using the execute_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesQueryResult>, Integer, Hash)> execute_query_with_http_info(body)

```ruby
begin
  # Execute a query. The syntax used is identical to that of the query page.
  data, status_code, headers = api_instance.execute_query_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesQueryResult>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->execute_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesQueryRequest**](TypesQueryRequest.md) |  **params details:** - selectFields: - **fields** - For filtering relevant fields only. - **withoutServices** - Default is set to **true**, you will not receive information about the services. If you want to get the relevant service, set to **false**. - **serviceFields**-  For filtering relevant fields of the service (if you chose to get it) |  |

### Return type

[**TypesQueryResult**](TypesQueryResult.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_executor_nodes

> <TypesListExecutorNodesResponse> get_executor_nodes(node_type, opts)

Get all the relay nodes

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

api_instance = Falcon::ASPMApi.new
node_type = 'node_type_example' # String | 
opts = {
  integration_type: 56 # Integer | 
}

begin
  # Get all the relay nodes
  result = api_instance.get_executor_nodes(node_type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_executor_nodes: #{e}"
end
```

#### Using the get_executor_nodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListExecutorNodesResponse>, Integer, Hash)> get_executor_nodes_with_http_info(node_type, opts)

```ruby
begin
  # Get all the relay nodes
  data, status_code, headers = api_instance.get_executor_nodes_with_http_info(node_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListExecutorNodesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_executor_nodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node_type** | **String** |  |  |
| **integration_type** | **Integer** |  | [optional] |

### Return type

[**TypesListExecutorNodesResponse**](TypesListExecutorNodesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_tasks

> <TypesListIntegrationTasksResponse> get_integration_tasks(opts)

Get all the integration tasks

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

api_instance = Falcon::ASPMApi.new
opts = {
  integration_task_type: 56, # Integer | 
  category: 'category_example' # String | 
}

begin
  # Get all the integration tasks
  result = api_instance.get_integration_tasks(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integration_tasks: #{e}"
end
```

#### Using the get_integration_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationTasksResponse>, Integer, Hash)> get_integration_tasks_with_http_info(opts)

```ruby
begin
  # Get all the integration tasks
  data, status_code, headers = api_instance.get_integration_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationTasksResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integration_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_task_type** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |

### Return type

[**TypesListIntegrationTasksResponse**](TypesListIntegrationTasksResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_types

> <TypesListIntegrationTypesResponse> get_integration_types

Get all the integration types

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

api_instance = Falcon::ASPMApi.new

begin
  # Get all the integration types
  result = api_instance.get_integration_types
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integration_types: #{e}"
end
```

#### Using the get_integration_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationTypesResponse>, Integer, Hash)> get_integration_types_with_http_info

```ruby
begin
  # Get all the integration types
  data, status_code, headers = api_instance.get_integration_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationTypesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integration_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TypesListIntegrationTypesResponse**](TypesListIntegrationTypesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integrations

> <TypesListIntegrationsResponse> get_integrations(opts)

Get a list of all the integrations

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

api_instance = Falcon::ASPMApi.new
opts = {
  integration_type: 56, # Integer | 
  category: 'category_example' # String | 
}

begin
  # Get a list of all the integrations
  result = api_instance.get_integrations(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integrations: #{e}"
end
```

#### Using the get_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationsResponse>, Integer, Hash)> get_integrations_with_http_info(opts)

```ruby
begin
  # Get a list of all the integrations
  data, status_code, headers = api_instance.get_integrations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_type** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |

### Return type

[**TypesListIntegrationsResponse**](TypesListIntegrationsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_violation_types

> <TypesGetViolationTypesResponse> get_service_violation_types(body)

Get the different types of violation

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesGenericUserFacingRequest.new # TypesGenericUserFacingRequest | 

begin
  # Get the different types of violation
  result = api_instance.get_service_violation_types(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_service_violation_types: #{e}"
end
```

#### Using the get_service_violation_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGetViolationTypesResponse>, Integer, Hash)> get_service_violation_types_with_http_info(body)

```ruby
begin
  # Get the different types of violation
  data, status_code, headers = api_instance.get_service_violation_types_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGetViolationTypesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_service_violation_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesGenericUserFacingRequest**](TypesGenericUserFacingRequest.md) |  |  |

### Return type

[**TypesGetViolationTypesResponse**](TypesGetViolationTypesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_services_count

> get_services_count(body)

Get the total amount of existing services

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesGetServicesRequest.new # TypesGetServicesRequest | 

begin
  # Get the total amount of existing services
  api_instance.get_services_count(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_services_count: #{e}"
end
```

#### Using the get_services_count_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_services_count_with_http_info(body)

```ruby
begin
  # Get the total amount of existing services
  data, status_code, headers = api_instance.get_services_count_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_services_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesGetServicesRequest**](TypesGetServicesRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tags

> <TypesTagsDataResponse> get_tags(opts)

Get all the tags

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

api_instance = Falcon::ASPMApi.new
opts = {
  is_unique: true, # Boolean | 
  tag_name: 'tag_name_example', # String | 
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  name: ['inner_example'] # Array<String> | 
}

begin
  # Get all the tags
  result = api_instance.get_tags(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesTagsDataResponse>, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # Get all the tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesTagsDataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_unique** | **Boolean** |  | [optional] |
| **tag_name** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **name** | [**Array&lt;String&gt;**](String.md) |  | [optional] |

### Return type

[**TypesTagsDataResponse**](TypesTagsDataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_integration_task

> <TypesIntegrationTaskTestConnectionResponse> run_integration_task(id, body, opts)

Run an integration task by its ID

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 
body = Falcon::TypesRunIntegrationTaskRequest.new # TypesRunIntegrationTaskRequest | 
opts = {
  category: 'category_example' # String | 
}

begin
  # Run an integration task by its ID
  result = api_instance.run_integration_task(id, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->run_integration_task: #{e}"
end
```

#### Using the run_integration_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationTaskTestConnectionResponse>, Integer, Hash)> run_integration_task_with_http_info(id, body, opts)

```ruby
begin
  # Run an integration task by its ID
  data, status_code, headers = api_instance.run_integration_task_with_http_info(id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationTaskTestConnectionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->run_integration_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **body** | [**TypesRunIntegrationTaskRequest**](TypesRunIntegrationTaskRequest.md) |  |  |
| **category** | **String** |  | [optional] |

### Return type

[**TypesIntegrationTaskTestConnectionResponse**](TypesIntegrationTaskTestConnectionResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## service_now_get_deployments

> <TypesServiceNowDeploymentsResponse> service_now_get_deployments(opts)



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

api_instance = Falcon::ASPMApi.new
opts = {
  ql_filters: 'ql_filters_example', # String | 
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  order_by: 'order_by_example', # String | 
  direction: 'direction_example' # String | 
}

begin
  
  result = api_instance.service_now_get_deployments(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->service_now_get_deployments: #{e}"
end
```

#### Using the service_now_get_deployments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesServiceNowDeploymentsResponse>, Integer, Hash)> service_now_get_deployments_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.service_now_get_deployments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesServiceNowDeploymentsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->service_now_get_deployments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ql_filters** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |

### Return type

[**TypesServiceNowDeploymentsResponse**](TypesServiceNowDeploymentsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## service_now_get_services

> <TypesServiceNowServicesResponse> service_now_get_services(opts)



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

api_instance = Falcon::ASPMApi.new
opts = {
  ql_filters: 'ql_filters_example', # String | 
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  order_by: 'order_by_example', # String | 
  direction: 'direction_example' # String | 
}

begin
  
  result = api_instance.service_now_get_services(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->service_now_get_services: #{e}"
end
```

#### Using the service_now_get_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesServiceNowServicesResponse>, Integer, Hash)> service_now_get_services_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.service_now_get_services_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesServiceNowServicesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->service_now_get_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ql_filters** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |

### Return type

[**TypesServiceNowServicesResponse**](TypesServiceNowServicesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_executor_node

> <TypesExecutorNode> update_executor_node(body)

Update an existing relay node

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesExecutorNode.new # TypesExecutorNode | 

begin
  # Update an existing relay node
  result = api_instance.update_executor_node(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_executor_node: #{e}"
end
```

#### Using the update_executor_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesExecutorNode>, Integer, Hash)> update_executor_node_with_http_info(body)

```ruby
begin
  # Update an existing relay node
  data, status_code, headers = api_instance.update_executor_node_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesExecutorNode>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_executor_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesExecutorNode**](TypesExecutorNode.md) |  |  |

### Return type

[**TypesExecutorNode**](TypesExecutorNode.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_integration

> <TypesIntegrationResponse> update_integration(id, body)

Update an existing integration by its ID

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 
body = Falcon::TypesUpdateIntegrationRequest.new # TypesUpdateIntegrationRequest | 

begin
  # Update an existing integration by its ID
  result = api_instance.update_integration(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_integration: #{e}"
end
```

#### Using the update_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationResponse>, Integer, Hash)> update_integration_with_http_info(id, body)

```ruby
begin
  # Update an existing integration by its ID
  data, status_code, headers = api_instance.update_integration_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **body** | [**TypesUpdateIntegrationRequest**](TypesUpdateIntegrationRequest.md) |  |  |

### Return type

[**TypesIntegrationResponse**](TypesIntegrationResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_integration_task

> <TypesIntegrationTaskResponse> update_integration_task(id, body)

Update an existing integration task by its ID

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

api_instance = Falcon::ASPMApi.new
id = 56 # Integer | 
body = Falcon::TypesUpdateIntegrationTaskRequest.new # TypesUpdateIntegrationTaskRequest | 

begin
  # Update an existing integration task by its ID
  result = api_instance.update_integration_task(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_integration_task: #{e}"
end
```

#### Using the update_integration_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationTaskResponse>, Integer, Hash)> update_integration_task_with_http_info(id, body)

```ruby
begin
  # Update an existing integration task by its ID
  data, status_code, headers = api_instance.update_integration_task_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationTaskResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->update_integration_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **body** | [**TypesUpdateIntegrationTaskRequest**](TypesUpdateIntegrationTaskRequest.md) |  |  |

### Return type

[**TypesIntegrationTaskResponse**](TypesIntegrationTaskResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_business_applications

> upsert_business_applications(body)

Create or Update Business Applications

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesUpsertBusinessApplicationRequest.new({name: 'name_example', persistent_signatures: ['persistent_signatures_example']}) # TypesUpsertBusinessApplicationRequest | 

begin
  # Create or Update Business Applications
  api_instance.upsert_business_applications(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->upsert_business_applications: #{e}"
end
```

#### Using the upsert_business_applications_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upsert_business_applications_with_http_info(body)

```ruby
begin
  # Create or Update Business Applications
  data, status_code, headers = api_instance.upsert_business_applications_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->upsert_business_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesUpsertBusinessApplicationRequest**](TypesUpsertBusinessApplicationRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_tags

> upsert_tags(body)

Create new or update existing tag. You can update unique tags table or regular tags table

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

api_instance = Falcon::ASPMApi.new
body = Falcon::TypesEditUniqueTagRequest.new({entries: [Falcon::TypesUniqueTagEntry.new]}) # TypesEditUniqueTagRequest | 

begin
  # Create new or update existing tag. You can update unique tags table or regular tags table
  api_instance.upsert_tags(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->upsert_tags: #{e}"
end
```

#### Using the upsert_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upsert_tags_with_http_info(body)

```ruby
begin
  # Create new or update existing tag. You can update unique tags table or regular tags table
  data, status_code, headers = api_instance.upsert_tags_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPMApi->upsert_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesEditUniqueTagRequest**](TypesEditUniqueTagRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

