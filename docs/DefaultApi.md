# Falcon::DefaultApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cloud_registration_aws_create_account**](DefaultApi.md#cloud_registration_aws_create_account) | **POST** /cloud-security-registration-aws/entities/account/v1 | Creates a new account in our system for a customer. |
| [**cloud_registration_aws_delete_account**](DefaultApi.md#cloud_registration_aws_delete_account) | **DELETE** /cloud-security-registration-aws/entities/account/v1 | Deletes an existing AWS account or organization in our system. |
| [**cloud_registration_aws_get_accounts**](DefaultApi.md#cloud_registration_aws_get_accounts) | **GET** /cloud-security-registration-aws/entities/account/v1 | Retrieve existing AWS accounts by account IDs |
| [**cloud_registration_aws_query_accounts**](DefaultApi.md#cloud_registration_aws_query_accounts) | **GET** /cloud-security-registration-aws/queries/account/v1 | Retrieve existing AWS accounts by account IDs |
| [**cloud_registration_aws_update_account**](DefaultApi.md#cloud_registration_aws_update_account) | **PATCH** /cloud-security-registration-aws/entities/account/v1 | Patches a existing account in our system for a customer. |
| [**cloud_registration_aws_validate_accounts**](DefaultApi.md#cloud_registration_aws_validate_accounts) | **POST** /cloud-security-registration-aws/entities/account/validate/v1 | Validates the AWS account in our system for a provided CID. For internal clients only. |


## cloud_registration_aws_create_account

> <RestAWSAccountCreateResponseExtV1> cloud_registration_aws_create_account(body)

Creates a new account in our system for a customer.

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

api_instance = Falcon::DefaultApi.new
body = Falcon::RestAWSAccountCreateRequestExtv1.new({resources: [Falcon::RestCloudAWSAccountCreateExtV1.new({organization_id: 'organization_id_example'})]}) # RestAWSAccountCreateRequestExtv1 | 

begin
  # Creates a new account in our system for a customer.
  result = api_instance.cloud_registration_aws_create_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_create_account: #{e}"
end
```

#### Using the cloud_registration_aws_create_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAWSAccountCreateResponseExtV1>, Integer, Hash)> cloud_registration_aws_create_account_with_http_info(body)

```ruby
begin
  # Creates a new account in our system for a customer.
  data, status_code, headers = api_instance.cloud_registration_aws_create_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAWSAccountCreateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_create_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestAWSAccountCreateRequestExtv1**](RestAWSAccountCreateRequestExtv1.md) |  |  |

### Return type

[**RestAWSAccountCreateResponseExtV1**](RestAWSAccountCreateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_registration_aws_delete_account

> <MsaspecResponseFields> cloud_registration_aws_delete_account(opts)

Deletes an existing AWS account or organization in our system.

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

api_instance = Falcon::DefaultApi.new
opts = {
  ids: ['inner_example'], # Array<String> | AWS account IDs to remove
  organization_ids: ['inner_example'] # Array<String> | AWS organization IDs to remove
}

begin
  # Deletes an existing AWS account or organization in our system.
  result = api_instance.cloud_registration_aws_delete_account(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_delete_account: #{e}"
end
```

#### Using the cloud_registration_aws_delete_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> cloud_registration_aws_delete_account_with_http_info(opts)

```ruby
begin
  # Deletes an existing AWS account or organization in our system.
  data, status_code, headers = api_instance.cloud_registration_aws_delete_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_delete_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs to remove | [optional] |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | AWS organization IDs to remove | [optional] |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_registration_aws_get_accounts

> <RestAWSAccountCreateResponseExtV1> cloud_registration_aws_get_accounts(opts)

Retrieve existing AWS accounts by account IDs

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

api_instance = Falcon::DefaultApi.new
opts = {
  ids: ['inner_example'] # Array<String> | AWS account IDs to filter
}

begin
  # Retrieve existing AWS accounts by account IDs
  result = api_instance.cloud_registration_aws_get_accounts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_get_accounts: #{e}"
end
```

#### Using the cloud_registration_aws_get_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAWSAccountCreateResponseExtV1>, Integer, Hash)> cloud_registration_aws_get_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve existing AWS accounts by account IDs
  data, status_code, headers = api_instance.cloud_registration_aws_get_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAWSAccountCreateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_get_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | AWS account IDs to filter | [optional] |

### Return type

[**RestAWSAccountCreateResponseExtV1**](RestAWSAccountCreateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_registration_aws_query_accounts

> <RestAWSAccountCreateResponseExtV1> cloud_registration_aws_query_accounts(products, features, opts)

Retrieve existing AWS accounts by account IDs

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

api_instance = Falcon::DefaultApi.new
products = ['inner_example'] # Array<String> | Products registered for an account
features = ['inner_example'] # Array<String> | Features registered for an account
opts = {
  organization_ids: ['inner_example'], # Array<String> | Organization IDs used to filter accounts
  account_status: 'provisioned', # String | Account status to filter results by.
  limit: 56, # Integer | The maximum number of items to return. When not specified or 0, 100 is used. When larger than 500, 500 is used.
  offset: 56, # Integer | The offset to start retrieving records from.
  group_by: 'organization' # String | Field to group by.
}

begin
  # Retrieve existing AWS accounts by account IDs
  result = api_instance.cloud_registration_aws_query_accounts(products, features, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_query_accounts: #{e}"
end
```

#### Using the cloud_registration_aws_query_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAWSAccountCreateResponseExtV1>, Integer, Hash)> cloud_registration_aws_query_accounts_with_http_info(products, features, opts)

```ruby
begin
  # Retrieve existing AWS accounts by account IDs
  data, status_code, headers = api_instance.cloud_registration_aws_query_accounts_with_http_info(products, features, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAWSAccountCreateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_query_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products** | [**Array&lt;String&gt;**](String.md) | Products registered for an account |  |
| **features** | [**Array&lt;String&gt;**](String.md) | Features registered for an account |  |
| **organization_ids** | [**Array&lt;String&gt;**](String.md) | Organization IDs used to filter accounts | [optional] |
| **account_status** | **String** | Account status to filter results by. | [optional] |
| **limit** | **Integer** | The maximum number of items to return. When not specified or 0, 100 is used. When larger than 500, 500 is used. | [optional][default to 100] |
| **offset** | **Integer** | The offset to start retrieving records from. | [optional] |
| **group_by** | **String** | Field to group by. | [optional] |

### Return type

[**RestAWSAccountCreateResponseExtV1**](RestAWSAccountCreateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cloud_registration_aws_update_account

> <RestAWSAccountCreateResponseExtV1> cloud_registration_aws_update_account(body)

Patches a existing account in our system for a customer.

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

api_instance = Falcon::DefaultApi.new
body = Falcon::RestAWSAccountCreateRequestExtv1.new({resources: [Falcon::RestCloudAWSAccountCreateExtV1.new({organization_id: 'organization_id_example'})]}) # RestAWSAccountCreateRequestExtv1 | 

begin
  # Patches a existing account in our system for a customer.
  result = api_instance.cloud_registration_aws_update_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_update_account: #{e}"
end
```

#### Using the cloud_registration_aws_update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAWSAccountCreateResponseExtV1>, Integer, Hash)> cloud_registration_aws_update_account_with_http_info(body)

```ruby
begin
  # Patches a existing account in our system for a customer.
  data, status_code, headers = api_instance.cloud_registration_aws_update_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAWSAccountCreateResponseExtV1>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**RestAWSAccountCreateRequestExtv1**](RestAWSAccountCreateRequestExtv1.md) |  |  |

### Return type

[**RestAWSAccountCreateResponseExtV1**](RestAWSAccountCreateResponseExtV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cloud_registration_aws_validate_accounts

> <RestAWSAccountValidationResponse> cloud_registration_aws_validate_accounts(products, feature, opts)

Validates the AWS account in our system for a provided CID. For internal clients only.

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

api_instance = Falcon::DefaultApi.new
products = 'products_example' # String | Product registered for an account
feature = ['inner_example'] # Array<String> | Features registered for an account
opts = {
  account_id: 'account_id_example', # String | AWS Account ID
  iam_role_arn: 'iam_role_arn_example' # String | IAM Role ARN
}

begin
  # Validates the AWS account in our system for a provided CID. For internal clients only.
  result = api_instance.cloud_registration_aws_validate_accounts(products, feature, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_validate_accounts: #{e}"
end
```

#### Using the cloud_registration_aws_validate_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestAWSAccountValidationResponse>, Integer, Hash)> cloud_registration_aws_validate_accounts_with_http_info(products, feature, opts)

```ruby
begin
  # Validates the AWS account in our system for a provided CID. For internal clients only.
  data, status_code, headers = api_instance.cloud_registration_aws_validate_accounts_with_http_info(products, feature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestAWSAccountValidationResponse>
rescue Falcon::ApiError => e
  puts "Error when calling DefaultApi->cloud_registration_aws_validate_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products** | **String** | Product registered for an account |  |
| **feature** | [**Array&lt;String&gt;**](String.md) | Features registered for an account |  |
| **account_id** | **String** | AWS Account ID | [optional] |
| **iam_role_arn** | **String** | IAM Role ARN | [optional] |

### Return type

[**RestAWSAccountValidationResponse**](RestAWSAccountValidationResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

