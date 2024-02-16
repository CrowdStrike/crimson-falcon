# Falcon::ImageAssessmentPoliciesApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policies**](ImageAssessmentPoliciesApi.md#create_policies) | **POST** /container-security/entities/image-assessment-policies/v1 | Create Image Assessment policies |
| [**create_policy_groups**](ImageAssessmentPoliciesApi.md#create_policy_groups) | **POST** /container-security/entities/image-assessment-policy-groups/v1 | Create Image Assessment Policy Group entities |
| [**delete_policy**](ImageAssessmentPoliciesApi.md#delete_policy) | **DELETE** /container-security/entities/image-assessment-policies/v1 | Delete Image Assessment Policy by policy UUID |
| [**delete_policy_group**](ImageAssessmentPoliciesApi.md#delete_policy_group) | **DELETE** /container-security/entities/image-assessment-policy-groups/v1 | Delete Image Assessment Policy Group entities |
| [**read_policies**](ImageAssessmentPoliciesApi.md#read_policies) | **GET** /container-security/entities/image-assessment-policies/v1 | Get all Image Assessment policies |
| [**read_policy_exclusions**](ImageAssessmentPoliciesApi.md#read_policy_exclusions) | **GET** /container-security/entities/image-assessment-policy-exclusions/v1 | Retrieve Image Assessment Policy Exclusion entities |
| [**read_policy_groups**](ImageAssessmentPoliciesApi.md#read_policy_groups) | **GET** /container-security/entities/image-assessment-policy-groups/v1 | Retrieve Image Assessment Policy Group entities |
| [**update_policies**](ImageAssessmentPoliciesApi.md#update_policies) | **PATCH** /container-security/entities/image-assessment-policies/v1 | Update Image Assessment Policy entities |
| [**update_policy_exclusions**](ImageAssessmentPoliciesApi.md#update_policy_exclusions) | **POST** /container-security/entities/image-assessment-policy-exclusions/v1 | Update Image Assessment Policy Exclusion entities |
| [**update_policy_groups**](ImageAssessmentPoliciesApi.md#update_policy_groups) | **PATCH** /container-security/entities/image-assessment-policy-groups/v1 | Update Image Assessment Policy Group entities |
| [**update_policy_precedence**](ImageAssessmentPoliciesApi.md#update_policy_precedence) | **POST** /container-security/entities/image-assessment-policy-precedence/v1 | Update Image Assessment Policy precedence |


## create_policies

> <ModelsPolicyEntityResponse> create_policies(body)

Create Image Assessment policies

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
body = Falcon::ModelsCreatePolicyRequest.new({description: 'description_example', name: 'name_example'}) # ModelsCreatePolicyRequest | 

begin
  # Create Image Assessment policies
  result = api_instance.create_policies(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->create_policies: #{e}"
end
```

#### Using the create_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyEntityResponse>, Integer, Hash)> create_policies_with_http_info(body)

```ruby
begin
  # Create Image Assessment policies
  data, status_code, headers = api_instance.create_policies_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->create_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsCreatePolicyRequest**](ModelsCreatePolicyRequest.md) |  |  |

### Return type

[**ModelsPolicyEntityResponse**](ModelsPolicyEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_policy_groups

> <ModelsPolicyGroupEntityResponse> create_policy_groups(body)

Create Image Assessment Policy Group entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
body = Falcon::ModelsCreateImageGroupRequest.new({description: 'description_example', name: 'name_example'}) # ModelsCreateImageGroupRequest | 

begin
  # Create Image Assessment Policy Group entities
  result = api_instance.create_policy_groups(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->create_policy_groups: #{e}"
end
```

#### Using the create_policy_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyGroupEntityResponse>, Integer, Hash)> create_policy_groups_with_http_info(body)

```ruby
begin
  # Create Image Assessment Policy Group entities
  data, status_code, headers = api_instance.create_policy_groups_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyGroupEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->create_policy_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsCreateImageGroupRequest**](ModelsCreateImageGroupRequest.md) |  |  |

### Return type

[**ModelsPolicyGroupEntityResponse**](ModelsPolicyGroupEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_policy

> <CoreEntitiesResponse> delete_policy(id)

Delete Image Assessment Policy by policy UUID

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
id = 'id_example' # String | Image Assessment Policy entity UUID

begin
  # Delete Image Assessment Policy by policy UUID
  result = api_instance.delete_policy(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->delete_policy: #{e}"
end
```

#### Using the delete_policy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> delete_policy_with_http_info(id)

```ruby
begin
  # Delete Image Assessment Policy by policy UUID
  data, status_code, headers = api_instance.delete_policy_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->delete_policy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Image Assessment Policy entity UUID |  |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_policy_group

> <CoreEntitiesResponse> delete_policy_group(id)

Delete Image Assessment Policy Group entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
id = 'id_example' # String | Policy Image Group entity UUID

begin
  # Delete Image Assessment Policy Group entities
  result = api_instance.delete_policy_group(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->delete_policy_group: #{e}"
end
```

#### Using the delete_policy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoreEntitiesResponse>, Integer, Hash)> delete_policy_group_with_http_info(id)

```ruby
begin
  # Delete Image Assessment Policy Group entities
  data, status_code, headers = api_instance.delete_policy_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoreEntitiesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->delete_policy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Policy Image Group entity UUID |  |

### Return type

[**CoreEntitiesResponse**](CoreEntitiesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_policies

> <ModelsPolicyEntityResponse> read_policies

Get all Image Assessment policies

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new

begin
  # Get all Image Assessment policies
  result = api_instance.read_policies
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policies: #{e}"
end
```

#### Using the read_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyEntityResponse>, Integer, Hash)> read_policies_with_http_info

```ruby
begin
  # Get all Image Assessment policies
  data, status_code, headers = api_instance.read_policies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsPolicyEntityResponse**](ModelsPolicyEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_policy_exclusions

> <ModelsPolicyExclusionEntityResponse> read_policy_exclusions

Retrieve Image Assessment Policy Exclusion entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new

begin
  # Retrieve Image Assessment Policy Exclusion entities
  result = api_instance.read_policy_exclusions
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policy_exclusions: #{e}"
end
```

#### Using the read_policy_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyExclusionEntityResponse>, Integer, Hash)> read_policy_exclusions_with_http_info

```ruby
begin
  # Retrieve Image Assessment Policy Exclusion entities
  data, status_code, headers = api_instance.read_policy_exclusions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyExclusionEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policy_exclusions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsPolicyExclusionEntityResponse**](ModelsPolicyExclusionEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_policy_groups

> <ModelsPolicyGroupEntityResponse> read_policy_groups

Retrieve Image Assessment Policy Group entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new

begin
  # Retrieve Image Assessment Policy Group entities
  result = api_instance.read_policy_groups
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policy_groups: #{e}"
end
```

#### Using the read_policy_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyGroupEntityResponse>, Integer, Hash)> read_policy_groups_with_http_info

```ruby
begin
  # Retrieve Image Assessment Policy Group entities
  data, status_code, headers = api_instance.read_policy_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyGroupEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->read_policy_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelsPolicyGroupEntityResponse**](ModelsPolicyGroupEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_policies

> <ModelsPolicyEntityResponse> update_policies(id, body)

Update Image Assessment Policy entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
id = 'id_example' # String | Image Assessment Policy entity UUID
body = Falcon::ModelsPatchPolicyRequest.new({description: 'description_example', is_enabled: false, name: 'name_example'}) # ModelsPatchPolicyRequest | 

begin
  # Update Image Assessment Policy entities
  result = api_instance.update_policies(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policies: #{e}"
end
```

#### Using the update_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyEntityResponse>, Integer, Hash)> update_policies_with_http_info(id, body)

```ruby
begin
  # Update Image Assessment Policy entities
  data, status_code, headers = api_instance.update_policies_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Image Assessment Policy entity UUID |  |
| **body** | [**ModelsPatchPolicyRequest**](ModelsPatchPolicyRequest.md) |  |  |

### Return type

[**ModelsPolicyEntityResponse**](ModelsPolicyEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_exclusions

> <ModelsPolicyExclusionEntityResponse> update_policy_exclusions(body)

Update Image Assessment Policy Exclusion entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
body = Falcon::ModelsUpdateExclusionsRequest.new({conditions: [Falcon::ModelsExclusionConditionRequest.new({prop: 'prop_example', value: ['value_example']})]}) # ModelsUpdateExclusionsRequest | 

begin
  # Update Image Assessment Policy Exclusion entities
  result = api_instance.update_policy_exclusions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_exclusions: #{e}"
end
```

#### Using the update_policy_exclusions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyExclusionEntityResponse>, Integer, Hash)> update_policy_exclusions_with_http_info(body)

```ruby
begin
  # Update Image Assessment Policy Exclusion entities
  data, status_code, headers = api_instance.update_policy_exclusions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyExclusionEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_exclusions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsUpdateExclusionsRequest**](ModelsUpdateExclusionsRequest.md) |  |  |

### Return type

[**ModelsPolicyExclusionEntityResponse**](ModelsPolicyExclusionEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_groups

> <ModelsPolicyGroupEntityResponse> update_policy_groups(id, body)

Update Image Assessment Policy Group entities

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
id = 'id_example' # String | Policy Image Group entity UUID
body = Falcon::ModelsPatchImageGroupRequest.new({description: 'description_example', name: 'name_example'}) # ModelsPatchImageGroupRequest | 

begin
  # Update Image Assessment Policy Group entities
  result = api_instance.update_policy_groups(id, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_groups: #{e}"
end
```

#### Using the update_policy_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyGroupEntityResponse>, Integer, Hash)> update_policy_groups_with_http_info(id, body)

```ruby
begin
  # Update Image Assessment Policy Group entities
  data, status_code, headers = api_instance.update_policy_groups_with_http_info(id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyGroupEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Policy Image Group entity UUID |  |
| **body** | [**ModelsPatchImageGroupRequest**](ModelsPatchImageGroupRequest.md) |  |  |

### Return type

[**ModelsPolicyGroupEntityResponse**](ModelsPolicyGroupEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_policy_precedence

> <ModelsPolicyEntityResponse> update_policy_precedence(body)

Update Image Assessment Policy precedence

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

api_instance = Falcon::ImageAssessmentPoliciesApi.new
body = Falcon::ModelsAPIPrecedenceRequest.new({precedence: ['precedence_example']}) # ModelsAPIPrecedenceRequest | 

begin
  # Update Image Assessment Policy precedence
  result = api_instance.update_policy_precedence(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_precedence: #{e}"
end
```

#### Using the update_policy_precedence_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsPolicyEntityResponse>, Integer, Hash)> update_policy_precedence_with_http_info(body)

```ruby
begin
  # Update Image Assessment Policy precedence
  data, status_code, headers = api_instance.update_policy_precedence_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsPolicyEntityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling ImageAssessmentPoliciesApi->update_policy_precedence_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsAPIPrecedenceRequest**](ModelsAPIPrecedenceRequest.md) |  |  |

### Return type

[**ModelsPolicyEntityResponse**](ModelsPolicyEntityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

