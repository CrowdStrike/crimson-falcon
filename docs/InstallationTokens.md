# Falcon::InstallationTokens

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**audit_events_query**](InstallationTokens.md#audit_events_query) | **GET** /installation-tokens/queries/audit-events/v1 | Search for audit events by providing an FQL filter and paging details. |
| [**audit_events_read**](InstallationTokens.md#audit_events_read) | **GET** /installation-tokens/entities/audit-events/v1 | Gets the details of one or more audit events by id. |
| [**customer_settings_read**](InstallationTokens.md#customer_settings_read) | **GET** /installation-tokens/entities/customer-settings/v1 | Check current installation token settings. |
| [**tokens_create**](InstallationTokens.md#tokens_create) | **POST** /installation-tokens/entities/tokens/v1 | Creates a token. |
| [**tokens_delete**](InstallationTokens.md#tokens_delete) | **DELETE** /installation-tokens/entities/tokens/v1 | Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead. |
| [**tokens_query**](InstallationTokens.md#tokens_query) | **GET** /installation-tokens/queries/tokens/v1 | Search for tokens by providing an FQL filter and paging details. |
| [**tokens_read**](InstallationTokens.md#tokens_read) | **GET** /installation-tokens/entities/tokens/v1 | Gets the details of one or more tokens by id. |
| [**tokens_update**](InstallationTokens.md#tokens_update) | **PATCH** /installation-tokens/entities/tokens/v1 | Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore. |


## audit_events_query

> <MsaspecQueryResponse> audit_events_query(opts)

Search for audit events by providing an FQL filter and paging details.

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

api_instance = Falcon::InstallationTokens.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from.
  limit: 56, # Integer | The maximum records to return. [1-1000]. Defaults to 50.
  sort: 'sort_example', # String | The property to sort by (e.g. timestamp.desc).
  filter: 'filter_example' # String | The filter expression that should be used to limit the results (e.g., `action:'token_create'`).
}

begin
  # Search for audit events by providing an FQL filter and paging details.
  result = api_instance.audit_events_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->audit_events_query: #{e}"
end
```

#### Using the audit_events_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> audit_events_query_with_http_info(opts)

```ruby
begin
  # Search for audit events by providing an FQL filter and paging details.
  data, status_code, headers = api_instance.audit_events_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->audit_events_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-1000]. Defaults to 50. | [optional] |
| **sort** | **String** | The property to sort by (e.g. timestamp.desc). | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results (e.g., &#x60;action:&#39;token_create&#39;&#x60;). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## audit_events_read

> <ApiAuditEventDetailsResponseV1> audit_events_read(opts)

Gets the details of one or more audit events by id.

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

api_instance = Falcon::InstallationTokens.new
opts = {
  ids: ['inner_example'] # Array<String> | IDs of audit events to retrieve details for
}

begin
  # Gets the details of one or more audit events by id.
  result = api_instance.audit_events_read(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->audit_events_read: #{e}"
end
```

#### Using the audit_events_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiAuditEventDetailsResponseV1>, Integer, Hash)> audit_events_read_with_http_info(opts)

```ruby
begin
  # Gets the details of one or more audit events by id.
  data, status_code, headers = api_instance.audit_events_read_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiAuditEventDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->audit_events_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of audit events to retrieve details for | [optional] |

### Return type

[**ApiAuditEventDetailsResponseV1**](ApiAuditEventDetailsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_settings_read

> <ApiCustomerSettingsResponseV1> customer_settings_read

Check current installation token settings.

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

api_instance = Falcon::InstallationTokens.new

begin
  # Check current installation token settings.
  result = api_instance.customer_settings_read
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->customer_settings_read: #{e}"
end
```

#### Using the customer_settings_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCustomerSettingsResponseV1>, Integer, Hash)> customer_settings_read_with_http_info

```ruby
begin
  # Check current installation token settings.
  data, status_code, headers = api_instance.customer_settings_read_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCustomerSettingsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->customer_settings_read_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiCustomerSettingsResponseV1**](ApiCustomerSettingsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tokens_create

> <ApiTokenDetailsResponseV1> tokens_create(body)

Creates a token.

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

api_instance = Falcon::InstallationTokens.new
body = Falcon::ApiTokenCreateRequestV1.new # ApiTokenCreateRequestV1 | 

begin
  # Creates a token.
  result = api_instance.tokens_create(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_create: #{e}"
end
```

#### Using the tokens_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenDetailsResponseV1>, Integer, Hash)> tokens_create_with_http_info(body)

```ruby
begin
  # Creates a token.
  data, status_code, headers = api_instance.tokens_create_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiTokenCreateRequestV1**](ApiTokenCreateRequestV1.md) |  |  |

### Return type

[**ApiTokenDetailsResponseV1**](ApiTokenDetailsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tokens_delete

> <MsaspecResponseFields> tokens_delete(ids)

Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.

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

api_instance = Falcon::InstallationTokens.new
ids = ['inner_example'] # Array<String> | The token ids to delete.

begin
  # Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.
  result = api_instance.tokens_delete(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_delete: #{e}"
end
```

#### Using the tokens_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> tokens_delete_with_http_info(ids)

```ruby
begin
  # Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.
  data, status_code, headers = api_instance.tokens_delete_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The token ids to delete. |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tokens_query

> <MsaspecQueryResponse> tokens_query(opts)

Search for tokens by providing an FQL filter and paging details.

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

api_instance = Falcon::InstallationTokens.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from.
  limit: 56, # Integer | The maximum records to return. [1-1000]. Defaults to 50.
  sort: 'sort_example', # String | The property to sort by (e.g. created_timestamp.desc).
  filter: 'filter_example' # String | The filter expression that should be used to limit the results (e.g., `status:'valid'`).
}

begin
  # Search for tokens by providing an FQL filter and paging details.
  result = api_instance.tokens_query(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_query: #{e}"
end
```

#### Using the tokens_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> tokens_query_with_http_info(opts)

```ruby
begin
  # Search for tokens by providing an FQL filter and paging details.
  data, status_code, headers = api_instance.tokens_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-1000]. Defaults to 50. | [optional] |
| **sort** | **String** | The property to sort by (e.g. created_timestamp.desc). | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results (e.g., &#x60;status:&#39;valid&#39;&#x60;). | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tokens_read

> <ApiTokenDetailsResponseV1> tokens_read(opts)

Gets the details of one or more tokens by id.

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

api_instance = Falcon::InstallationTokens.new
opts = {
  ids: ['inner_example'] # Array<String> | IDs of tokens to retrieve details for
}

begin
  # Gets the details of one or more tokens by id.
  result = api_instance.tokens_read(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_read: #{e}"
end
```

#### Using the tokens_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiTokenDetailsResponseV1>, Integer, Hash)> tokens_read_with_http_info(opts)

```ruby
begin
  # Gets the details of one or more tokens by id.
  data, status_code, headers = api_instance.tokens_read_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiTokenDetailsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of tokens to retrieve details for | [optional] |

### Return type

[**ApiTokenDetailsResponseV1**](ApiTokenDetailsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tokens_update

> <MsaspecQueryResponse> tokens_update(ids, body)

Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.

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

api_instance = Falcon::InstallationTokens.new
ids = ['inner_example'] # Array<String> | The token ids to update.
body = Falcon::ApiTokenPatchRequestV1.new # ApiTokenPatchRequestV1 | 

begin
  # Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.
  result = api_instance.tokens_update(ids, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_update: #{e}"
end
```

#### Using the tokens_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> tokens_update_with_http_info(ids, body)

```ruby
begin
  # Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.
  data, status_code, headers = api_instance.tokens_update_with_http_info(ids, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling InstallationTokens->tokens_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The token ids to update. |  |
| **body** | [**ApiTokenPatchRequestV1**](ApiTokenPatchRequestV1.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

