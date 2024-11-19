# Falcon::ApiIntegrations

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**execute_command**](ApiIntegrations.md#execute_command) | **POST** /plugins/entities/execute/v1 | Execute a command. |
| [**execute_command_proxy**](ApiIntegrations.md#execute_command_proxy) | **POST** /plugins/entities/execute-proxy/v1 | Execute a command and proxy the response directly. |
| [**get_combined_plugin_configs**](ApiIntegrations.md#get_combined_plugin_configs) | **GET** /plugins/combined/configs/v1 | Queries for config resources and returns details |


## execute_command

> <DomainExecuteCommandResultsV1> execute_command(resources)

Execute a command.

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

api_instance = Falcon::ApiIntegrations.new
resources = [Falcon::DomainExecuteCommandV1.new({config_auth_type: 'config_auth_type_example', config_id: 'config_id_example', definition_id: 'definition_id_example', id: 'id_example', operation_id: 'operation_id_example', request: Falcon::DomainRequest.new({description: 'description_example'}), version: 37})] # Array<DomainExecuteCommandV1> | List of commands to execute

begin
  # Execute a command.
  result = api_instance.execute_command(resources)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->execute_command: #{e}"
end
```

#### Using the execute_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainExecuteCommandResultsV1>, Integer, Hash)> execute_command_with_http_info(resources)

```ruby
begin
  # Execute a command.
  data, status_code, headers = api_instance.execute_command_with_http_info(resources)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainExecuteCommandResultsV1>
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->execute_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | [**Array&lt;DomainExecuteCommandV1&gt;**](DomainExecuteCommandV1.md) | List of commands to execute |  |

### Return type

[**DomainExecuteCommandResultsV1**](DomainExecuteCommandResultsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## execute_command_proxy

> Object execute_command_proxy(body)

Execute a command and proxy the response directly.

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

api_instance = Falcon::ApiIntegrations.new
body = Falcon::DomainExecuteCommandRequestV1.new({resources: [Falcon::DomainExecuteCommandV1.new({config_auth_type: 'config_auth_type_example', config_id: 'config_id_example', definition_id: 'definition_id_example', id: 'id_example', operation_id: 'operation_id_example', request: Falcon::DomainRequest.new({description: 'description_example'}), version: 37})]}) # DomainExecuteCommandRequestV1 | 

begin
  # Execute a command and proxy the response directly.
  result = api_instance.execute_command_proxy(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->execute_command_proxy: #{e}"
end
```

#### Using the execute_command_proxy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> execute_command_proxy_with_http_info(body)

```ruby
begin
  # Execute a command and proxy the response directly.
  data, status_code, headers = api_instance.execute_command_proxy_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->execute_command_proxy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainExecuteCommandRequestV1**](DomainExecuteCommandRequestV1.md) |  |  |

### Return type

**Object**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_combined_plugin_configs

> <DomainConfigsV1> get_combined_plugin_configs(opts)

Queries for config resources and returns details

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

api_instance = Falcon::ApiIntegrations.new
opts = {
  filter: 'filter_example', # String | Filter items using a query in Falcon Query Language (FQL).
  limit: 56, # Integer | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results.
  offset: 56, # Integer | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results.
  sort: 'sort_example' # String | Sort items using their properties.
}

begin
  # Queries for config resources and returns details
  result = api_instance.get_combined_plugin_configs(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->get_combined_plugin_configs: #{e}"
end
```

#### Using the get_combined_plugin_configs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainConfigsV1>, Integer, Hash)> get_combined_plugin_configs_with_http_info(opts)

```ruby
begin
  # Queries for config resources and returns details
  data, status_code, headers = api_instance.get_combined_plugin_configs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainConfigsV1>
rescue Falcon::ApiError => e
  puts "Error when calling ApiIntegrations->get_combined_plugin_configs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Filter items using a query in Falcon Query Language (FQL). | [optional] |
| **limit** | **Integer** | The number of items to return in this response (default: 100, max: 500). Use with the offset parameter to manage pagination of results. | [optional][default to 100] |
| **offset** | **Integer** | The first item to return, where 0 is the latest item. Use with the limit parameter to manage pagination of results. | [optional] |
| **sort** | **String** | Sort items using their properties. | [optional] |

### Return type

[**DomainConfigsV1**](DomainConfigsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

