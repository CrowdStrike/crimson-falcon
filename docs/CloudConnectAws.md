# Falcon::CloudConnectAws

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_or_update_aws_settings**](CloudConnectAws.md#create_or_update_aws_settings) | **POST** /cloud-connect-aws/entities/settings/v1 | Create or update Global Settings which are applicable to all provisioned AWS accounts |
| [**delete_aws_accounts**](CloudConnectAws.md#delete_aws_accounts) | **DELETE** /cloud-connect-aws/entities/accounts/v1 | Delete a set of AWS Accounts by specifying their IDs |
| [**get_aws_accounts**](CloudConnectAws.md#get_aws_accounts) | **GET** /cloud-connect-aws/entities/accounts/v1 | Retrieve a set of AWS Accounts by specifying their IDs |
| [**get_aws_settings**](CloudConnectAws.md#get_aws_settings) | **GET** /cloud-connect-aws/combined/settings/v1 | Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts |
| [**provision_aws_accounts**](CloudConnectAws.md#provision_aws_accounts) | **POST** /cloud-connect-aws/entities/accounts/v1 | Provision AWS Accounts by specifying details about the accounts to provision |
| [**query_aws_accounts**](CloudConnectAws.md#query_aws_accounts) | **GET** /cloud-connect-aws/combined/accounts/v1 | Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria |
| [**query_aws_accounts_for_ids**](CloudConnectAws.md#query_aws_accounts_for_ids) | **GET** /cloud-connect-aws/queries/accounts/v1 | Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria |
| [**update_aws_accounts**](CloudConnectAws.md#update_aws_accounts) | **PATCH** /cloud-connect-aws/entities/accounts/v1 | Update AWS Accounts by specifying the ID of the account and details to update |
| [**verify_aws_account_access**](CloudConnectAws.md#verify_aws_account_access) | **POST** /cloud-connect-aws/entities/verify-account-access/v1 | Performs an Access Verification check on the specified AWS Account IDs |


## create_or_update_aws_settings

> <ModelsCustomerConfigurationsV1> create_or_update_aws_settings(body)

Create or update Global Settings which are applicable to all provisioned AWS accounts

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

api_instance = Falcon::CloudConnectAws.new
body = Falcon::ModelsModifyAWSCustomerSettingsV1.new({resources: [Falcon::ModelsAWSCustomerSettingsRequestV1.new]}) # ModelsModifyAWSCustomerSettingsV1 | 

begin
  # Create or update Global Settings which are applicable to all provisioned AWS accounts
  result = api_instance.create_or_update_aws_settings(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->create_or_update_aws_settings: #{e}"
end
```

#### Using the create_or_update_aws_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsCustomerConfigurationsV1>, Integer, Hash)> create_or_update_aws_settings_with_http_info(body)

```ruby
begin
  # Create or update Global Settings which are applicable to all provisioned AWS accounts
  data, status_code, headers = api_instance.create_or_update_aws_settings_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsCustomerConfigurationsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->create_or_update_aws_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsModifyAWSCustomerSettingsV1**](ModelsModifyAWSCustomerSettingsV1.md) |  |  |

### Return type

[**ModelsCustomerConfigurationsV1**](ModelsCustomerConfigurationsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_aws_accounts

> <ModelsBaseResponseV1> delete_aws_accounts(ids)

Delete a set of AWS Accounts by specifying their IDs

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

api_instance = Falcon::CloudConnectAws.new
ids = ['inner_example'] # Array<String> | IDs of accounts to remove

begin
  # Delete a set of AWS Accounts by specifying their IDs
  result = api_instance.delete_aws_accounts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->delete_aws_accounts: #{e}"
end
```

#### Using the delete_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsBaseResponseV1>, Integer, Hash)> delete_aws_accounts_with_http_info(ids)

```ruby
begin
  # Delete a set of AWS Accounts by specifying their IDs
  data, status_code, headers = api_instance.delete_aws_accounts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsBaseResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->delete_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of accounts to remove |  |

### Return type

[**ModelsBaseResponseV1**](ModelsBaseResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_accounts

> <ModelsAWSAccountsV1> get_aws_accounts(ids)

Retrieve a set of AWS Accounts by specifying their IDs

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

api_instance = Falcon::CloudConnectAws.new
ids = ['inner_example'] # Array<String> | IDs of accounts to retrieve details

begin
  # Retrieve a set of AWS Accounts by specifying their IDs
  result = api_instance.get_aws_accounts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->get_aws_accounts: #{e}"
end
```

#### Using the get_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAWSAccountsV1>, Integer, Hash)> get_aws_accounts_with_http_info(ids)

```ruby
begin
  # Retrieve a set of AWS Accounts by specifying their IDs
  data, status_code, headers = api_instance.get_aws_accounts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAWSAccountsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->get_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of accounts to retrieve details |  |

### Return type

[**ModelsAWSAccountsV1**](ModelsAWSAccountsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_settings

> <ModelsCustomerConfigurationsV1> get_aws_settings

Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts

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

api_instance = Falcon::CloudConnectAws.new

begin
  # Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts
  result = api_instance.get_aws_settings
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->get_aws_settings: #{e}"
end
```

#### Using the get_aws_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsCustomerConfigurationsV1>, Integer, Hash)> get_aws_settings_with_http_info

```ruby
begin
  # Retrieve a set of Global Settings which are applicable to all provisioned AWS accounts
  data, status_code, headers = api_instance.get_aws_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsCustomerConfigurationsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->get_aws_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsCustomerConfigurationsV1**](ModelsCustomerConfigurationsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## provision_aws_accounts

> <ModelsAWSAccountsV1> provision_aws_accounts(body, opts)

Provision AWS Accounts by specifying details about the accounts to provision

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

api_instance = Falcon::CloudConnectAws.new
body = Falcon::ModelsCreateAWSAccountsV1.new({resources: [Falcon::ModelsAWSAccountRequestV1.new]}) # ModelsCreateAWSAccountsV1 | 
opts = {
  mode: 'cloudformation' # String | Mode for provisioning. Allowed values are `manual` or `cloudformation`. Defaults to manual if not defined.
}

begin
  # Provision AWS Accounts by specifying details about the accounts to provision
  result = api_instance.provision_aws_accounts(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->provision_aws_accounts: #{e}"
end
```

#### Using the provision_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAWSAccountsV1>, Integer, Hash)> provision_aws_accounts_with_http_info(body, opts)

```ruby
begin
  # Provision AWS Accounts by specifying details about the accounts to provision
  data, status_code, headers = api_instance.provision_aws_accounts_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAWSAccountsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->provision_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsCreateAWSAccountsV1**](ModelsCreateAWSAccountsV1.md) |  |  |
| **mode** | **String** | Mode for provisioning. Allowed values are &#x60;manual&#x60; or &#x60;cloudformation&#x60;. Defaults to manual if not defined. | [optional][default to &#39;manual&#39;] |

### Return type

[**ModelsAWSAccountsV1**](ModelsAWSAccountsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_aws_accounts

> <ModelsAWSAccountsV1> query_aws_accounts(opts)

Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria

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

api_instance = Falcon::CloudConnectAws.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-1000]. Defaults to 100.
  offset: 56, # Integer | The offset to start retrieving records from
  sort: 'sort_example', # String | The property to sort by (e.g. alias.desc or state.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria
  result = api_instance.query_aws_accounts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->query_aws_accounts: #{e}"
end
```

#### Using the query_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAWSAccountsV1>, Integer, Hash)> query_aws_accounts_with_http_info(opts)

```ruby
begin
  # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS accounts which match the filter criteria
  data, status_code, headers = api_instance.query_aws_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAWSAccountsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->query_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-1000]. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **sort** | **String** | The property to sort by (e.g. alias.desc or state.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**ModelsAWSAccountsV1**](ModelsAWSAccountsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_aws_accounts_for_ids

> <MsaQueryResponse> query_aws_accounts_for_ids(opts)

Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria

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

api_instance = Falcon::CloudConnectAws.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-1000]. Defaults to 100.
  offset: 56, # Integer | The offset to start retrieving records from
  sort: 'sort_example', # String | The property to sort by (e.g. alias.desc or state.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria
  result = api_instance.query_aws_accounts_for_ids(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->query_aws_accounts_for_ids: #{e}"
end
```

#### Using the query_aws_accounts_for_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_aws_accounts_for_ids_with_http_info(opts)

```ruby
begin
  # Search for provisioned AWS Accounts by providing an FQL filter and paging details. Returns a set of AWS account IDs which match the filter criteria
  data, status_code, headers = api_instance.query_aws_accounts_for_ids_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->query_aws_accounts_for_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-1000]. Defaults to 100. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **sort** | **String** | The property to sort by (e.g. alias.desc or state.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_aws_accounts

> <ModelsAWSAccountsV1> update_aws_accounts(body)

Update AWS Accounts by specifying the ID of the account and details to update

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

api_instance = Falcon::CloudConnectAws.new
body = Falcon::ModelsUpdateAWSAccountsV1.new({resources: [Falcon::ModelsAWSAccountRequestV1.new]}) # ModelsUpdateAWSAccountsV1 | 

begin
  # Update AWS Accounts by specifying the ID of the account and details to update
  result = api_instance.update_aws_accounts(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->update_aws_accounts: #{e}"
end
```

#### Using the update_aws_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAWSAccountsV1>, Integer, Hash)> update_aws_accounts_with_http_info(body)

```ruby
begin
  # Update AWS Accounts by specifying the ID of the account and details to update
  data, status_code, headers = api_instance.update_aws_accounts_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAWSAccountsV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->update_aws_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsUpdateAWSAccountsV1**](ModelsUpdateAWSAccountsV1.md) |  |  |

### Return type

[**ModelsAWSAccountsV1**](ModelsAWSAccountsV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_aws_account_access

> <ModelsVerifyAccessResponseV1> verify_aws_account_access(ids)

Performs an Access Verification check on the specified AWS Account IDs

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

api_instance = Falcon::CloudConnectAws.new
ids = ['inner_example'] # Array<String> | IDs of accounts to verify access on

begin
  # Performs an Access Verification check on the specified AWS Account IDs
  result = api_instance.verify_aws_account_access(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->verify_aws_account_access: #{e}"
end
```

#### Using the verify_aws_account_access_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsVerifyAccessResponseV1>, Integer, Hash)> verify_aws_account_access_with_http_info(ids)

```ruby
begin
  # Performs an Access Verification check on the specified AWS Account IDs
  data, status_code, headers = api_instance.verify_aws_account_access_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsVerifyAccessResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling CloudConnectAws->verify_aws_account_access_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of accounts to verify access on |  |

### Return type

[**ModelsVerifyAccessResponseV1**](ModelsVerifyAccessResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

