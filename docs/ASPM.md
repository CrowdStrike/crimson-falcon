# Falcon::ASPM

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_executor_node**](ASPM.md#create_executor_node) | **POST** /aspm-api-gateway/api/v1/executor_nodes | Create a new relay node |
| [**create_integration**](ASPM.md#create_integration) | **POST** /aspm-api-gateway/api/v1/integrations | Create a new integration |
| [**create_integration_task**](ASPM.md#create_integration_task) | **POST** /aspm-api-gateway/api/v1/integration_tasks | Create new integration task. |
| [**delete_executor_node**](ASPM.md#delete_executor_node) | **DELETE** /aspm-api-gateway/api/v1/executor_nodes/{ID} | Delete a relay node |
| [**delete_group_id_09**](ASPM.md#delete_group_id_09) | **DELETE** /aspm-api-gateway/api/v1/group/{ID} |  |
| [**delete_integration**](ASPM.md#delete_integration) | **DELETE** /aspm-api-gateway/api/v1/integrations/{ID} | Delete an existing integration by its ID |
| [**delete_integration_task**](ASPM.md#delete_integration_task) | **DELETE** /aspm-api-gateway/api/v1/integration_tasks/{ID} | Delete an existing integration task by its ID |
| [**delete_tags**](ASPM.md#delete_tags) | **POST** /aspm-api-gateway/api/v1/tags | Remove existing tags |
| [**execute_function_data**](ASPM.md#execute_function_data) | **GET** /application-security/combined/function-data/v1 | A selected list of queryLanguage queries. request &amp; response are in MSA format |
| [**execute_function_data_count**](ASPM.md#execute_function_data_count) | **POST** /application-security/aggregates/function-data/count/v1 | A selected list of queryLanguage count queries. request &amp; response are in MSA format |
| [**execute_function_data_query**](ASPM.md#execute_function_data_query) | **GET** /application-security/combined/query-function-data/v1 | A selected list of queryLanguage queries. request &amp; response are in MSA format |
| [**execute_function_data_query_count**](ASPM.md#execute_function_data_query_count) | **GET** /application-security/aggregates/query-function-data-count/v1 | A selected list of queryLanguage count queries. request &amp; response are in MSA format |
| [**execute_functions**](ASPM.md#execute_functions) | **GET** /application-security/combined/functions/v1 | A selected list of queryLanguage services queries. request &amp; response are in MSA format |
| [**execute_functions_count**](ASPM.md#execute_functions_count) | **POST** /application-security/aggregates/functions/count/v1 | A selected list of queryLanguage count queries. request &amp; response are in MSA format |
| [**execute_functions_overtime**](ASPM.md#execute_functions_overtime) | **GET** /application-security/combined/functions-overtime/v1 | A selected list of queryLanguage overtime queries. request &amp; response are in MSA format |
| [**execute_functions_query**](ASPM.md#execute_functions_query) | **GET** /application-security/combined/query-functions/v1 | A selected list of queryLanguage services queries. request &amp; response are in MSA format |
| [**execute_functions_query_count**](ASPM.md#execute_functions_query_count) | **GET** /application-security/aggregates/query-functions-count/v1 | A selected list of queryLanguage count queries. request &amp; response are in MSA format |
| [**execute_functions_query_overtime**](ASPM.md#execute_functions_query_overtime) | **GET** /application-security/combined/query-functions-overtime/v1 | A selected list of queryLanguage overtime queries. request &amp; response are in MSA format |
| [**execute_query**](ASPM.md#execute_query) | **POST** /aspm-api-gateway/api/v1/query | Execute a query. The syntax used is identical to that of the query page. |
| [**get_cloud_security_integration_state**](ASPM.md#get_cloud_security_integration_state) | **GET** /aspm-api-gateway/api/v1/cloud_security_config | Get Cloud Security integration state |
| [**get_cspm_inventory_ba_services**](ASPM.md#get_cspm_inventory_ba_services) | **GET** /application-security/combined/cspm-inventory-ba-services/v1 | Gets services ordered by risk score for given BA |
| [**get_cspm_inventory_service_details**](ASPM.md#get_cspm_inventory_service_details) | **GET** /application-security/combined/cspm-inventory-service-data/v1 | Gets all service details for CSPM Inventory. |
| [**get_executor_nodes**](ASPM.md#get_executor_nodes) | **GET** /aspm-api-gateway/api/v1/executor_nodes | Get all the relay nodes |
| [**get_executor_nodes_id_09_instances_csv**](ASPM.md#get_executor_nodes_id_09_instances_csv) | **GET** /aspm-api-gateway/api/v1/executor_nodes/{ID}/instances/csv | Retrieve the relay instances in CSV format |
| [**get_executor_nodes_metadata**](ASPM.md#get_executor_nodes_metadata) | **GET** /aspm-api-gateway/api/v1/executor_nodes/metadata | Get metadata about all executor nodes |
| [**get_group_id_09_v2**](ASPM.md#get_group_id_09_v2) | **GET** /aspm-api-gateway/api/v1/group/{ID}/v2 | Get group details |
| [**get_groups_hier_v2**](ASPM.md#get_groups_hier_v2) | **GET** /aspm-api-gateway/api/v1/groups/hier/v2 | Get group hierarchy |
| [**get_groups_list_v2**](ASPM.md#get_groups_list_v2) | **GET** /aspm-api-gateway/api/v1/groups/list/v2 |  |
| [**get_integration_tasks**](ASPM.md#get_integration_tasks) | **GET** /aspm-api-gateway/api/v1/integration_tasks | Get all the integration tasks |
| [**get_integration_tasks_admin**](ASPM.md#get_integration_tasks_admin) | **GET** /aspm-api-gateway/api/v1/integration_tasks/admin | Get all the integration tasks, requires admin scope |
| [**get_integration_tasks_metadata**](ASPM.md#get_integration_tasks_metadata) | **GET** /aspm-api-gateway/api/v1/integration_tasks/metadata | Get metadata about all integration tasks |
| [**get_integration_tasks_v2**](ASPM.md#get_integration_tasks_v2) | **GET** /aspm-api-gateway/api/v1/integration_tasks/v2 | Get all the integration tasks |
| [**get_integration_types**](ASPM.md#get_integration_types) | **GET** /aspm-api-gateway/api/v1/integration_types | Get all the integration types |
| [**get_integrations**](ASPM.md#get_integrations) | **GET** /aspm-api-gateway/api/v1/integrations | Get a list of all the integrations |
| [**get_integrations_v2**](ASPM.md#get_integrations_v2) | **GET** /aspm-api-gateway/api/v1/integrations/v2 | Get a list of all the integrations |
| [**get_service_artifacts**](ASPM.md#get_service_artifacts) | **GET** /aspm-api-gateway/api/v1/artifacts |  |
| [**get_service_violation_types**](ASPM.md#get_service_violation_types) | **GET** /aspm-api-gateway/api/v1/services/violations/types | Get the different types of violation |
| [**get_services_count**](ASPM.md#get_services_count) | **POST** /aspm-api-gateway/api/v1/services/count | Get the total amount of existing services |
| [**get_tags**](ASPM.md#get_tags) | **GET** /aspm-api-gateway/api/v1/tags | Get all the tags |
| [**get_users_v2**](ASPM.md#get_users_v2) | **GET** /aspm-api-gateway/api/v1/users/v2 | List users |
| [**post_group_id_09_update_default**](ASPM.md#post_group_id_09_update_default) | **POST** /aspm-api-gateway/api/v1/group/{ID}/update_default | Update default group |
| [**post_group_id_09_v2**](ASPM.md#post_group_id_09_v2) | **POST** /aspm-api-gateway/api/v1/group/{ID}/v2 | Update group |
| [**post_group_v2**](ASPM.md#post_group_v2) | **POST** /aspm-api-gateway/api/v1/group/v2 | Create group |
| [**run_integration_task**](ASPM.md#run_integration_task) | **POST** /aspm-api-gateway/api/v1/integration_tasks/{ID}/run | Run an integration task by its ID |
| [**run_integration_task_admin**](ASPM.md#run_integration_task_admin) | **POST** /aspm-api-gateway/api/v1/integration_tasks/{ID}/run/admin | Run an integration task by its ID - for admin scope |
| [**run_integration_task_v2**](ASPM.md#run_integration_task_v2) | **POST** /aspm-api-gateway/api/v1/integration_tasks/{ID}/run/v2 | Run an integration task by its ID |
| [**service_now_get_deployments**](ASPM.md#service_now_get_deployments) | **GET** /aspm-api-gateway/api/v1/servicenow/deployments |  |
| [**service_now_get_services**](ASPM.md#service_now_get_services) | **GET** /aspm-api-gateway/api/v1/servicenow/services |  |
| [**set_cloud_security_integration_state**](ASPM.md#set_cloud_security_integration_state) | **POST** /aspm-api-gateway/api/v1/cloud_security_config | Set Cloud Security integration state |
| [**update_executor_node**](ASPM.md#update_executor_node) | **PUT** /aspm-api-gateway/api/v1/executor_nodes | Update an existing relay node |
| [**update_integration**](ASPM.md#update_integration) | **PUT** /aspm-api-gateway/api/v1/integrations/{ID} | Update an existing integration by its ID |
| [**update_integration_task**](ASPM.md#update_integration_task) | **PUT** /aspm-api-gateway/api/v1/integration_tasks/{ID} | Update an existing integration task by its ID |
| [**upsert_business_applications**](ASPM.md#upsert_business_applications) | **PUT** /aspm-api-gateway/api/v1/business_applications | Create or Update Business Applications |
| [**upsert_tags**](ASPM.md#upsert_tags) | **PUT** /aspm-api-gateway/api/v1/tags | Create new or update existing tag. You can update unique tags table or regular tags table |


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

api_instance = Falcon::ASPM.new
body = Falcon::TypesExecutorNode.new # TypesExecutorNode | 

begin
  # Create a new relay node
  result = api_instance.create_executor_node(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->create_executor_node: #{e}"
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
  puts "Error when calling ASPM->create_executor_node_with_http_info: #{e}"
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

> <TypesCreateIntegrationResponse> create_integration(body)

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesCreateIntegrationRequest.new # TypesCreateIntegrationRequest | 

begin
  # Create a new integration
  result = api_instance.create_integration(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->create_integration: #{e}"
end
```

#### Using the create_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesCreateIntegrationResponse>, Integer, Hash)> create_integration_with_http_info(body)

```ruby
begin
  # Create a new integration
  data, status_code, headers = api_instance.create_integration_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesCreateIntegrationResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->create_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesCreateIntegrationRequest**](TypesCreateIntegrationRequest.md) |  |  |

### Return type

[**TypesCreateIntegrationResponse**](TypesCreateIntegrationResponse.md)

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesCreateIntegrationTaskRequest.new # TypesCreateIntegrationTaskRequest | 

begin
  # Create new integration task.
  result = api_instance.create_integration_task(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->create_integration_task: #{e}"
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
  puts "Error when calling ASPM->create_integration_task_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 

begin
  # Delete a relay node
  api_instance.delete_executor_node(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_executor_node: #{e}"
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
  puts "Error when calling ASPM->delete_executor_node_with_http_info: #{e}"
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


## delete_group_id_09

> delete_group_id_09(id)



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

api_instance = Falcon::ASPM.new
id = 56 # Integer | Group ID

begin
  
  api_instance.delete_group_id_09(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_group_id_09: #{e}"
end
```

#### Using the delete_group_id_09_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_id_09_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_group_id_09_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_group_id_09_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Group ID |  |

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 

begin
  # Delete an existing integration by its ID
  api_instance.delete_integration(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_integration: #{e}"
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
  puts "Error when calling ASPM->delete_integration_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 

begin
  # Delete an existing integration task by its ID
  api_instance.delete_integration_task(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_integration_task: #{e}"
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
  puts "Error when calling ASPM->delete_integration_task_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
body = Falcon::TypesEditTagRequest.new({entries: [Falcon::TypesTagEntry.new({persistent_signature: 'persistent_signature_example'})], name: 'name_example'}) # TypesEditTagRequest | 

begin
  # Remove existing tags
  api_instance.delete_tags(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->delete_tags: #{e}"
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
  puts "Error when calling ASPM->delete_tags_with_http_info: #{e}"
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


## execute_function_data

> <TypesGeneralQueryResponse> execute_function_data(field)

A selected list of queryLanguage queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage queries. request & response are in MSA format
  result = api_instance.execute_function_data(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data: #{e}"
end
```

#### Using the execute_function_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> execute_function_data_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_function_data_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_function_data_count

> <TypesCountResponse> execute_function_data_count(query_name, cloud_provider, opts)

A selected list of queryLanguage count queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
query_name = 'sensitive_data' # String | 
cloud_provider = 'aws' # String | 
opts = {
  aws_lambda_arn: 'aws_lambda_arn_example', # String | required for 'aws' cloud provider
  gcp_cloud_function_url: 'gcp_cloud_function_url_example', # String | required for 'gcp' cloud provider
  azure_site_subscription_id: 'azure_site_subscription_id_example', # String | required for 'azure' cloud provider
  azure_site_resource_group: 'azure_site_resource_group_example', # String | required for 'azure' cloud provider
  azure_function_app_name: 'azure_function_app_name_example' # String | required for 'azure' cloud provider
}

begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  result = api_instance.execute_function_data_count(query_name, cloud_provider, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_count: #{e}"
end
```

#### Using the execute_function_data_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesCountResponse>, Integer, Hash)> execute_function_data_count_with_http_info(query_name, cloud_provider, opts)

```ruby
begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_function_data_count_with_http_info(query_name, cloud_provider, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesCountResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_name** | **String** |  |  |
| **cloud_provider** | **String** |  |  |
| **aws_lambda_arn** | **String** | required for &#39;aws&#39; cloud provider | [optional] |
| **gcp_cloud_function_url** | **String** | required for &#39;gcp&#39; cloud provider | [optional] |
| **azure_site_subscription_id** | **String** | required for &#39;azure&#39; cloud provider | [optional] |
| **azure_site_resource_group** | **String** | required for &#39;azure&#39; cloud provider | [optional] |
| **azure_function_app_name** | **String** | required for &#39;azure&#39; cloud provider | [optional] |

### Return type

[**TypesCountResponse**](TypesCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_function_data_query

> <TypesGeneralQueryResponse> execute_function_data_query(field)

A selected list of queryLanguage queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage queries. request & response are in MSA format
  result = api_instance.execute_function_data_query(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_query: #{e}"
end
```

#### Using the execute_function_data_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> execute_function_data_query_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_function_data_query_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_function_data_query_count

> <TypesCountResponse> execute_function_data_query_count(field)

A selected list of queryLanguage count queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  result = api_instance.execute_function_data_query_count(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_query_count: #{e}"
end
```

#### Using the execute_function_data_query_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesCountResponse>, Integer, Hash)> execute_function_data_query_count_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_function_data_query_count_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesCountResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_function_data_query_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesCountResponse**](TypesCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions

> <TypesGeneralQueryResponse> execute_functions(field)

A selected list of queryLanguage services queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage services queries. request & response are in MSA format
  result = api_instance.execute_functions(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions: #{e}"
end
```

#### Using the execute_functions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> execute_functions_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage services queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions_count

> <TypesCountResponse> execute_functions_count(query_name, opts)

A selected list of queryLanguage count queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
query_name = 'sensitive_data' # String | 
opts = {
  cloud_provider: ['inner_example'], # Array<String> | 
  cloud_account_id: ['inner_example'], # Array<String> | required for 'aws' cloud provider
  region: ['inner_example'], # Array<String> | required for 'gcp' cloud provider
  cid: ['inner_example'] # Array<String> | required for 'azure' cloud provider
}

begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  result = api_instance.execute_functions_count(query_name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_count: #{e}"
end
```

#### Using the execute_functions_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesCountResponse>, Integer, Hash)> execute_functions_count_with_http_info(query_name, opts)

```ruby
begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_count_with_http_info(query_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesCountResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query_name** | **String** |  |  |
| **cloud_provider** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **cloud_account_id** | [**Array&lt;String&gt;**](String.md) | required for &#39;aws&#39; cloud provider | [optional] |
| **region** | [**Array&lt;String&gt;**](String.md) | required for &#39;gcp&#39; cloud provider | [optional] |
| **cid** | [**Array&lt;String&gt;**](String.md) | required for &#39;azure&#39; cloud provider | [optional] |

### Return type

[**TypesCountResponse**](TypesCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions_overtime

> <TypesOvertimeResponse> execute_functions_overtime(field)

A selected list of queryLanguage overtime queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage overtime queries. request & response are in MSA format
  result = api_instance.execute_functions_overtime(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_overtime: #{e}"
end
```

#### Using the execute_functions_overtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesOvertimeResponse>, Integer, Hash)> execute_functions_overtime_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage overtime queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_overtime_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesOvertimeResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_overtime_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesOvertimeResponse**](TypesOvertimeResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions_query

> <TypesGeneralQueryResponse> execute_functions_query(field)

A selected list of queryLanguage services queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage services queries. request & response are in MSA format
  result = api_instance.execute_functions_query(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query: #{e}"
end
```

#### Using the execute_functions_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> execute_functions_query_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage services queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_query_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions_query_count

> <TypesCountResponse> execute_functions_query_count(field)

A selected list of queryLanguage count queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  result = api_instance.execute_functions_query_count(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query_count: #{e}"
end
```

#### Using the execute_functions_query_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesCountResponse>, Integer, Hash)> execute_functions_query_count_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage count queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_query_count_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesCountResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesCountResponse**](TypesCountResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_functions_query_overtime

> <TypesOvertimeResponse> execute_functions_query_overtime(field)

A selected list of queryLanguage overtime queries. request & response are in MSA format

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

api_instance = Falcon::ASPM.new
field = 'field_example' # String | 

begin
  # A selected list of queryLanguage overtime queries. request & response are in MSA format
  result = api_instance.execute_functions_query_overtime(field)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query_overtime: #{e}"
end
```

#### Using the execute_functions_query_overtime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesOvertimeResponse>, Integer, Hash)> execute_functions_query_overtime_with_http_info(field)

```ruby
begin
  # A selected list of queryLanguage overtime queries. request & response are in MSA format
  data, status_code, headers = api_instance.execute_functions_query_overtime_with_http_info(field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesOvertimeResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_functions_query_overtime_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |

### Return type

[**TypesOvertimeResponse**](TypesOvertimeResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_query

> <TypesQueryResponse> execute_query(body)

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesQueryRequest.new({query: 'query_example'}) # TypesQueryRequest |  **params details:** - selectFields: - **fields** - For filtering relevant fields only. - **withoutServices** - Default is set to **true**, you will not receive information about the services. If you want to get the relevant service, set to **false**. - **serviceFields**-  For filtering relevant fields of the service (if you chose to get it)

begin
  # Execute a query. The syntax used is identical to that of the query page.
  result = api_instance.execute_query(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_query: #{e}"
end
```

#### Using the execute_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesQueryResponse>, Integer, Hash)> execute_query_with_http_info(body)

```ruby
begin
  # Execute a query. The syntax used is identical to that of the query page.
  data, status_code, headers = api_instance.execute_query_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->execute_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesQueryRequest**](TypesQueryRequest.md) |  **params details:** - selectFields: - **fields** - For filtering relevant fields only. - **withoutServices** - Default is set to **true**, you will not receive information about the services. If you want to get the relevant service, set to **false**. - **serviceFields**-  For filtering relevant fields of the service (if you chose to get it) |  |

### Return type

[**TypesQueryResponse**](TypesQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_cloud_security_integration_state

> <TypesGetCloudSecurityIntegrationStateResponse> get_cloud_security_integration_state

Get Cloud Security integration state

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

api_instance = Falcon::ASPM.new

begin
  # Get Cloud Security integration state
  result = api_instance.get_cloud_security_integration_state
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cloud_security_integration_state: #{e}"
end
```

#### Using the get_cloud_security_integration_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGetCloudSecurityIntegrationStateResponse>, Integer, Hash)> get_cloud_security_integration_state_with_http_info

```ruby
begin
  # Get Cloud Security integration state
  data, status_code, headers = api_instance.get_cloud_security_integration_state_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGetCloudSecurityIntegrationStateResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cloud_security_integration_state_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TypesGetCloudSecurityIntegrationStateResponse**](TypesGetCloudSecurityIntegrationStateResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_inventory_ba_services

> <TypesGeneralQueryResponse> get_cspm_inventory_ba_services(business_application_name, opts)

Gets services ordered by risk score for given BA

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

api_instance = Falcon::ASPM.new
business_application_name = 'business_application_name_example' # String | Business application name
opts = {
  offset: 56, # Integer | Pagination offset
  limit: 56 # Integer | Pagination limit
}

begin
  # Gets services ordered by risk score for given BA
  result = api_instance.get_cspm_inventory_ba_services(business_application_name, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cspm_inventory_ba_services: #{e}"
end
```

#### Using the get_cspm_inventory_ba_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> get_cspm_inventory_ba_services_with_http_info(business_application_name, opts)

```ruby
begin
  # Gets services ordered by risk score for given BA
  data, status_code, headers = api_instance.get_cspm_inventory_ba_services_with_http_info(business_application_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cspm_inventory_ba_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_application_name** | **String** | Business application name |  |
| **offset** | **Integer** | Pagination offset | [optional] |
| **limit** | **Integer** | Pagination limit | [optional] |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cspm_inventory_service_details

> <TypesGeneralQueryResponse> get_cspm_inventory_service_details(persistent_signature)

Gets all service details for CSPM Inventory.

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

api_instance = Falcon::ASPM.new
persistent_signature = 'persistent_signature_example' # String | Service signature

begin
  # Gets all service details for CSPM Inventory.
  result = api_instance.get_cspm_inventory_service_details(persistent_signature)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cspm_inventory_service_details: #{e}"
end
```

#### Using the get_cspm_inventory_service_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGeneralQueryResponse>, Integer, Hash)> get_cspm_inventory_service_details_with_http_info(persistent_signature)

```ruby
begin
  # Gets all service details for CSPM Inventory.
  data, status_code, headers = api_instance.get_cspm_inventory_service_details_with_http_info(persistent_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGeneralQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_cspm_inventory_service_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persistent_signature** | **String** | Service signature |  |

### Return type

[**TypesGeneralQueryResponse**](TypesGeneralQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = Falcon::ASPM.new
node_type = 'node_type_example' # String | 
opts = {
  integration_type: 56, # Integer | 
  offset: 56, # Integer | 
  limit: 56, # Integer | 
  order_by: 'name', # String | 
  direction: 'asc', # String | 
  executor_node_ids: ['inner_example'], # Array<String> | executor node ids
  executor_node_names: ['inner_example'], # Array<String> | executor node names
  executor_node_states: [37], # Array<Integer> | executor node states
  executor_node_types: ['inner_example'] # Array<String> | executor node types
}

begin
  # Get all the relay nodes
  result = api_instance.get_executor_nodes(node_type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_executor_nodes: #{e}"
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
  puts "Error when calling ASPM->get_executor_nodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node_type** | **String** |  |  |
| **integration_type** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **executor_node_ids** | [**Array&lt;String&gt;**](String.md) | executor node ids | [optional] |
| **executor_node_names** | [**Array&lt;String&gt;**](String.md) | executor node names | [optional] |
| **executor_node_states** | [**Array&lt;Integer&gt;**](Integer.md) | executor node states | [optional] |
| **executor_node_types** | [**Array&lt;String&gt;**](String.md) | executor node types | [optional] |

### Return type

[**TypesListExecutorNodesResponse**](TypesListExecutorNodesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_executor_nodes_id_09_instances_csv

> String get_executor_nodes_id_09_instances_csv(id, body)

Retrieve the relay instances in CSV format

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 
body = Falcon::TypesExecutorNode.new # TypesExecutorNode | 

begin
  # Retrieve the relay instances in CSV format
  result = api_instance.get_executor_nodes_id_09_instances_csv(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_executor_nodes_id_09_instances_csv: #{e}"
end
```

#### Using the get_executor_nodes_id_09_instances_csv_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_executor_nodes_id_09_instances_csv_with_http_info(id, body)

```ruby
begin
  # Retrieve the relay instances in CSV format
  data, status_code, headers = api_instance.get_executor_nodes_id_09_instances_csv_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_executor_nodes_id_09_instances_csv_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **body** | [**TypesExecutorNode**](TypesExecutorNode.md) |  |  |

### Return type

**String**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_executor_nodes_metadata

> <TypesGetExecutorNodesMetadataResponse> get_executor_nodes_metadata(opts)

Get metadata about all executor nodes

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

api_instance = Falcon::ASPM.new
opts = {
  executor_node_ids: ['inner_example'], # Array<String> | executor node ids
  executor_node_names: ['inner_example'], # Array<String> | executor node names
  executor_node_states: [37], # Array<Integer> | executor node states
  executor_node_types: ['inner_example'] # Array<String> | executor node types
}

begin
  # Get metadata about all executor nodes
  result = api_instance.get_executor_nodes_metadata(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_executor_nodes_metadata: #{e}"
end
```

#### Using the get_executor_nodes_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGetExecutorNodesMetadataResponse>, Integer, Hash)> get_executor_nodes_metadata_with_http_info(opts)

```ruby
begin
  # Get metadata about all executor nodes
  data, status_code, headers = api_instance.get_executor_nodes_metadata_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGetExecutorNodesMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_executor_nodes_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **executor_node_ids** | [**Array&lt;String&gt;**](String.md) | executor node ids | [optional] |
| **executor_node_names** | [**Array&lt;String&gt;**](String.md) | executor node names | [optional] |
| **executor_node_states** | [**Array&lt;Integer&gt;**](Integer.md) | executor node states | [optional] |
| **executor_node_types** | [**Array&lt;String&gt;**](String.md) | executor node types | [optional] |

### Return type

[**TypesGetExecutorNodesMetadataResponse**](TypesGetExecutorNodesMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_id_09_v2

> <TypesGroupDetails> get_group_id_09_v2(id)

Get group details

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | Group ID

begin
  # Get group details
  result = api_instance.get_group_id_09_v2(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_group_id_09_v2: #{e}"
end
```

#### Using the get_group_id_09_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGroupDetails>, Integer, Hash)> get_group_id_09_v2_with_http_info(id)

```ruby
begin
  # Get group details
  data, status_code, headers = api_instance.get_group_id_09_v2_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGroupDetails>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_group_id_09_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Group ID |  |

### Return type

[**TypesGroupDetails**](TypesGroupDetails.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_hier_v2

> <TypesGroupHierarchyResponse> get_groups_hier_v2

Get group hierarchy

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

api_instance = Falcon::ASPM.new

begin
  # Get group hierarchy
  result = api_instance.get_groups_hier_v2
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_groups_hier_v2: #{e}"
end
```

#### Using the get_groups_hier_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGroupHierarchyResponse>, Integer, Hash)> get_groups_hier_v2_with_http_info

```ruby
begin
  # Get group hierarchy
  data, status_code, headers = api_instance.get_groups_hier_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGroupHierarchyResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_groups_hier_v2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TypesGroupHierarchyResponse**](TypesGroupHierarchyResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_list_v2

> <Array<TypesGroupListItem>> get_groups_list_v2(opts)



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

api_instance = Falcon::ASPM.new
opts = {
  type: 'type_example' # String | Group types to query - can either be empty (all), parents, children
}

begin
  
  result = api_instance.get_groups_list_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_groups_list_v2: #{e}"
end
```

#### Using the get_groups_list_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TypesGroupListItem>>, Integer, Hash)> get_groups_list_v2_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_groups_list_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TypesGroupListItem>>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_groups_list_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Group types to query - can either be empty (all), parents, children | [optional] |

### Return type

[**Array&lt;TypesGroupListItem&gt;**](TypesGroupListItem.md)

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

api_instance = Falcon::ASPM.new
opts = {
  integration_task_type: 56, # Integer | 
  category: 'category_example', # String | 
  offset: 56, # Integer | 
  limit: 56, # Integer | 
  order_by: 'name', # String | 
  direction: 'asc', # String | 
  integration_task_types: 56, # Integer | 
  ids: 56, # Integer | 
  names: 'names_example' # String | 
}

begin
  # Get all the integration tasks
  result = api_instance.get_integration_tasks(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks: #{e}"
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
  puts "Error when calling ASPM->get_integration_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_task_type** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **integration_task_types** | **Integer** |  | [optional] |
| **ids** | **Integer** |  | [optional] |
| **names** | **String** |  | [optional] |

### Return type

[**TypesListIntegrationTasksResponse**](TypesListIntegrationTasksResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_tasks_admin

> <TypesListIntegrationTasksResponse> get_integration_tasks_admin(opts)

Get all the integration tasks, requires admin scope

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

api_instance = Falcon::ASPM.new
opts = {
  integration_task_type: 56, # Integer | 
  category: 'category_example', # String | 
  offset: 56, # Integer | 
  limit: 56, # Integer | 
  order_by: 'name', # String | 
  direction: 'asc', # String | 
  integration_task_types: 56, # Integer | 
  ids: 56, # Integer | 
  names: 'names_example' # String | 
}

begin
  # Get all the integration tasks, requires admin scope
  result = api_instance.get_integration_tasks_admin(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_admin: #{e}"
end
```

#### Using the get_integration_tasks_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationTasksResponse>, Integer, Hash)> get_integration_tasks_admin_with_http_info(opts)

```ruby
begin
  # Get all the integration tasks, requires admin scope
  data, status_code, headers = api_instance.get_integration_tasks_admin_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationTasksResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_task_type** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **integration_task_types** | **Integer** |  | [optional] |
| **ids** | **Integer** |  | [optional] |
| **names** | **String** |  | [optional] |

### Return type

[**TypesListIntegrationTasksResponse**](TypesListIntegrationTasksResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_tasks_metadata

> <TypesGetIntegrationTasksMetadataResponse> get_integration_tasks_metadata(opts)

Get metadata about all integration tasks

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

api_instance = Falcon::ASPM.new
opts = {
  category: 'collecting', # String | 
  integration_task_types: 56, # Integer | 
  ids: 56, # Integer | 
  names: 'names_example' # String | 
}

begin
  # Get metadata about all integration tasks
  result = api_instance.get_integration_tasks_metadata(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_metadata: #{e}"
end
```

#### Using the get_integration_tasks_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesGetIntegrationTasksMetadataResponse>, Integer, Hash)> get_integration_tasks_metadata_with_http_info(opts)

```ruby
begin
  # Get metadata about all integration tasks
  data, status_code, headers = api_instance.get_integration_tasks_metadata_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesGetIntegrationTasksMetadataResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **integration_task_types** | **Integer** |  | [optional] |
| **ids** | **Integer** |  | [optional] |
| **names** | **String** |  | [optional] |

### Return type

[**TypesGetIntegrationTasksMetadataResponse**](TypesGetIntegrationTasksMetadataResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integration_tasks_v2

> <TypesListIntegrationTasksResponse> get_integration_tasks_v2(opts)

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

api_instance = Falcon::ASPM.new
opts = {
  integration_task_type: 56, # Integer | 
  category: 'category_example', # String | 
  offset: 56, # Integer | 
  limit: 56, # Integer | 
  order_by: 'name', # String | 
  direction: 'asc', # String | 
  integration_task_types: 56, # Integer | 
  ids: 56, # Integer | 
  names: 'names_example' # String | 
}

begin
  # Get all the integration tasks
  result = api_instance.get_integration_tasks_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_v2: #{e}"
end
```

#### Using the get_integration_tasks_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationTasksResponse>, Integer, Hash)> get_integration_tasks_v2_with_http_info(opts)

```ruby
begin
  # Get all the integration tasks
  data, status_code, headers = api_instance.get_integration_tasks_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationTasksResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_tasks_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_task_type** | **Integer** |  | [optional] |
| **category** | **String** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order_by** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **integration_task_types** | **Integer** |  | [optional] |
| **ids** | **Integer** |  | [optional] |
| **names** | **String** |  | [optional] |

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

api_instance = Falcon::ASPM.new

begin
  # Get all the integration types
  result = api_instance.get_integration_types
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integration_types: #{e}"
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
  puts "Error when calling ASPM->get_integration_types_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
opts = {
  integration_type: 56, # Integer | 
  category: 'category_example' # String | 
}

begin
  # Get a list of all the integrations
  result = api_instance.get_integrations(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integrations: #{e}"
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
  puts "Error when calling ASPM->get_integrations_with_http_info: #{e}"
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


## get_integrations_v2

> <TypesListIntegrationsResponse> get_integrations_v2(opts)

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

api_instance = Falcon::ASPM.new
opts = {
  integration_type: 56, # Integer | 
  category: 'category_example' # String | 
}

begin
  # Get a list of all the integrations
  result = api_instance.get_integrations_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integrations_v2: #{e}"
end
```

#### Using the get_integrations_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesListIntegrationsResponse>, Integer, Hash)> get_integrations_v2_with_http_info(opts)

```ruby
begin
  # Get a list of all the integrations
  data, status_code, headers = api_instance.get_integrations_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesListIntegrationsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_integrations_v2_with_http_info: #{e}"
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


## get_service_artifacts

> <TypesArtifacts> get_service_artifacts(persistent_signature, opts)



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

api_instance = Falcon::ASPM.new
persistent_signature = 'persistent_signature_example' # String | 
opts = {
  optional_time: 56, # Integer | 
  revision_id: 56, # Integer | 
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  order_by: ['inner_example'], # Array<String> | 
  direction: 'asc' # String | 
}

begin
  
  result = api_instance.get_service_artifacts(persistent_signature, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_service_artifacts: #{e}"
end
```

#### Using the get_service_artifacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesArtifacts>, Integer, Hash)> get_service_artifacts_with_http_info(persistent_signature, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_service_artifacts_with_http_info(persistent_signature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesArtifacts>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_service_artifacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persistent_signature** | **String** |  |  |
| **optional_time** | **Integer** |  | [optional] |
| **revision_id** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **order_by** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **direction** | **String** |  | [optional] |

### Return type

[**TypesArtifacts**](TypesArtifacts.md)

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesGenericUserFacingRequest.new # TypesGenericUserFacingRequest | 

begin
  # Get the different types of violation
  result = api_instance.get_service_violation_types(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_service_violation_types: #{e}"
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
  puts "Error when calling ASPM->get_service_violation_types_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
body = Falcon::TypesGetServicesRequest.new # TypesGetServicesRequest | 

begin
  # Get the total amount of existing services
  api_instance.get_services_count(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_services_count: #{e}"
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
  puts "Error when calling ASPM->get_services_count_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
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
  puts "Error when calling ASPM->get_tags: #{e}"
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
  puts "Error when calling ASPM->get_tags_with_http_info: #{e}"
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


## get_users_v2

> <TypesUsersResponse> get_users_v2(opts)

List users

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

api_instance = Falcon::ASPM.new
opts = {
  pagination: 'pagination_example' # String | URL encoded pagination JSON - limit, offset, direction, orderBy
}

begin
  # List users
  result = api_instance.get_users_v2(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_users_v2: #{e}"
end
```

#### Using the get_users_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesUsersResponse>, Integer, Hash)> get_users_v2_with_http_info(opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.get_users_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesUsersResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->get_users_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | **String** | URL encoded pagination JSON - limit, offset, direction, orderBy | [optional] |

### Return type

[**TypesUsersResponse**](TypesUsersResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_group_id_09_update_default

> post_group_id_09_update_default(id)

Update default group

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | Group ID

begin
  # Update default group
  api_instance.post_group_id_09_update_default(id)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_id_09_update_default: #{e}"
end
```

#### Using the post_group_id_09_update_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_group_id_09_update_default_with_http_info(id)

```ruby
begin
  # Update default group
  data, status_code, headers = api_instance.post_group_id_09_update_default_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_id_09_update_default_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Group ID |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_group_id_09_v2

> post_group_id_09_v2(id, body)

Update group

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | Group ID
body = Falcon::TypesUpdateGroupRequest.new # TypesUpdateGroupRequest | 

begin
  # Update group
  api_instance.post_group_id_09_v2(id, body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_id_09_v2: #{e}"
end
```

#### Using the post_group_id_09_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_group_id_09_v2_with_http_info(id, body)

```ruby
begin
  # Update group
  data, status_code, headers = api_instance.post_group_id_09_v2_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_id_09_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Group ID |  |
| **body** | [**TypesUpdateGroupRequest**](TypesUpdateGroupRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_group_v2

> post_group_v2(body)

Create group

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesCreateGroupRequest.new # TypesCreateGroupRequest | 

begin
  # Create group
  api_instance.post_group_v2(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_v2: #{e}"
end
```

#### Using the post_group_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_group_v2_with_http_info(body)

```ruby
begin
  # Create group
  data, status_code, headers = api_instance.post_group_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->post_group_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesCreateGroupRequest**](TypesCreateGroupRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = Falcon::ASPM.new
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
  puts "Error when calling ASPM->run_integration_task: #{e}"
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
  puts "Error when calling ASPM->run_integration_task_with_http_info: #{e}"
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


## run_integration_task_admin

> <TypesIntegrationTaskTestConnectionResponse> run_integration_task_admin(id, body, opts)

Run an integration task by its ID - for admin scope

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 
body = Falcon::TypesRunIntegrationTaskRequest.new # TypesRunIntegrationTaskRequest | 
opts = {
  category: 'category_example' # String | 
}

begin
  # Run an integration task by its ID - for admin scope
  result = api_instance.run_integration_task_admin(id, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->run_integration_task_admin: #{e}"
end
```

#### Using the run_integration_task_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationTaskTestConnectionResponse>, Integer, Hash)> run_integration_task_admin_with_http_info(id, body, opts)

```ruby
begin
  # Run an integration task by its ID - for admin scope
  data, status_code, headers = api_instance.run_integration_task_admin_with_http_info(id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationTaskTestConnectionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->run_integration_task_admin_with_http_info: #{e}"
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


## run_integration_task_v2

> <TypesIntegrationTaskTestConnectionResponse> run_integration_task_v2(id, body, opts)

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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 
body = Falcon::TypesRunIntegrationTaskRequest.new # TypesRunIntegrationTaskRequest | 
opts = {
  category: 'category_example' # String | 
}

begin
  # Run an integration task by its ID
  result = api_instance.run_integration_task_v2(id, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->run_integration_task_v2: #{e}"
end
```

#### Using the run_integration_task_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TypesIntegrationTaskTestConnectionResponse>, Integer, Hash)> run_integration_task_v2_with_http_info(id, body, opts)

```ruby
begin
  # Run an integration task by its ID
  data, status_code, headers = api_instance.run_integration_task_v2_with_http_info(id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TypesIntegrationTaskTestConnectionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->run_integration_task_v2_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
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
  puts "Error when calling ASPM->service_now_get_deployments: #{e}"
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
  puts "Error when calling ASPM->service_now_get_deployments_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
opts = {
  ql_filters: 'ql_filters_example', # String | 
  exclude_artifacts: true, # Boolean | 
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  order_by: 'order_by_example', # String | 
  direction: 'direction_example' # String | 
}

begin
  
  result = api_instance.service_now_get_services(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->service_now_get_services: #{e}"
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
  puts "Error when calling ASPM->service_now_get_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ql_filters** | **String** |  | [optional] |
| **exclude_artifacts** | **Boolean** |  | [optional] |
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


## set_cloud_security_integration_state

> set_cloud_security_integration_state(body)

Set Cloud Security integration state

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

api_instance = Falcon::ASPM.new
body = Falcon::TypesSetCloudSecurityIntegrationStateRequest.new({is_enabled: false}) # TypesSetCloudSecurityIntegrationStateRequest | 

begin
  # Set Cloud Security integration state
  api_instance.set_cloud_security_integration_state(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->set_cloud_security_integration_state: #{e}"
end
```

#### Using the set_cloud_security_integration_state_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_cloud_security_integration_state_with_http_info(body)

```ruby
begin
  # Set Cloud Security integration state
  data, status_code, headers = api_instance.set_cloud_security_integration_state_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->set_cloud_security_integration_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TypesSetCloudSecurityIntegrationStateRequest**](TypesSetCloudSecurityIntegrationStateRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = Falcon::ASPM.new
body = Falcon::TypesExecutorNode.new # TypesExecutorNode | 

begin
  # Update an existing relay node
  result = api_instance.update_executor_node(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->update_executor_node: #{e}"
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
  puts "Error when calling ASPM->update_executor_node_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 
body = Falcon::TypesUpdateIntegrationRequest.new # TypesUpdateIntegrationRequest | 

begin
  # Update an existing integration by its ID
  result = api_instance.update_integration(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->update_integration: #{e}"
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
  puts "Error when calling ASPM->update_integration_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
id = 56 # Integer | 
body = Falcon::TypesUpdateIntegrationTaskRequest.new # TypesUpdateIntegrationTaskRequest | 

begin
  # Update an existing integration task by its ID
  result = api_instance.update_integration_task(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->update_integration_task: #{e}"
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
  puts "Error when calling ASPM->update_integration_task_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
body = Falcon::TypesUpsertBusinessApplicationRequest.new({name: 'name_example', persistent_signatures: ['persistent_signatures_example']}) # TypesUpsertBusinessApplicationRequest | 

begin
  # Create or Update Business Applications
  api_instance.upsert_business_applications(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->upsert_business_applications: #{e}"
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
  puts "Error when calling ASPM->upsert_business_applications_with_http_info: #{e}"
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

api_instance = Falcon::ASPM.new
body = Falcon::TypesEditUniqueTagRequest.new({entries: [Falcon::TypesUniqueTagEntry.new]}) # TypesEditUniqueTagRequest | 

begin
  # Create new or update existing tag. You can update unique tags table or regular tags table
  api_instance.upsert_tags(body)
rescue Falcon::ApiError => e
  puts "Error when calling ASPM->upsert_tags: #{e}"
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
  puts "Error when calling ASPM->upsert_tags_with_http_info: #{e}"
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

