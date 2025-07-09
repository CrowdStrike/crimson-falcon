# Falcon::SecurityCheck

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dismiss_affected_entity_v3**](SecurityCheck.md#dismiss_affected_entity_v3) | **POST** /saas-security/entities/check-dismiss-affected/v3 | POST Dismiss Affected Entity |
| [**dismiss_security_check_v3**](SecurityCheck.md#dismiss_security_check_v3) | **POST** /saas-security/entities/check-dismiss/v3 | POST Dismiss Security Check by ID |
| [**get_metrics_v3**](SecurityCheck.md#get_metrics_v3) | **GET** /saas-security/aggregates/check-metrics/v3 | GET Metrics |
| [**get_security_check_affected_v3**](SecurityCheck.md#get_security_check_affected_v3) | **GET** /saas-security/entities/check-affected/v3 | GET Security Check Affected |
| [**get_security_check_compliance_v3**](SecurityCheck.md#get_security_check_compliance_v3) | **GET** /saas-security/entities/compliance/v3 | GET Compliance |
| [**get_security_checks_v3**](SecurityCheck.md#get_security_checks_v3) | **GET** /saas-security/entities/checks/v3 | GET Security Check by ID or GET List Security Checks |


## dismiss_affected_entity_v3

> <DismissAffected> dismiss_affected_entity_v3(id)

POST Dismiss Affected Entity

Preform dismiss to an affected entity in a security check

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

api_instance = Falcon::SecurityCheck.new
id = 'id_example' # String | Security Check ID

begin
  # POST Dismiss Affected Entity
  result = api_instance.dismiss_affected_entity_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->dismiss_affected_entity_v3: #{e}"
end
```

#### Using the dismiss_affected_entity_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DismissAffected>, Integer, Hash)> dismiss_affected_entity_v3_with_http_info(id)

```ruby
begin
  # POST Dismiss Affected Entity
  data, status_code, headers = api_instance.dismiss_affected_entity_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DismissAffected>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->dismiss_affected_entity_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Security Check ID |  |

### Return type

[**DismissAffected**](DismissAffected.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dismiss_security_check_v3

> <DismissSecurityCheck> dismiss_security_check_v3(id)

POST Dismiss Security Check by ID

Preform dismiss to a security check

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

api_instance = Falcon::SecurityCheck.new
id = 'id_example' # String | Security Check ID

begin
  # POST Dismiss Security Check by ID
  result = api_instance.dismiss_security_check_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->dismiss_security_check_v3: #{e}"
end
```

#### Using the dismiss_security_check_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DismissSecurityCheck>, Integer, Hash)> dismiss_security_check_v3_with_http_info(id)

```ruby
begin
  # POST Dismiss Security Check by ID
  data, status_code, headers = api_instance.dismiss_security_check_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DismissSecurityCheck>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->dismiss_security_check_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Security Check ID |  |

### Return type

[**DismissSecurityCheck**](DismissSecurityCheck.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_metrics_v3

> <GetMetrics> get_metrics_v3(opts)

GET Metrics

Get metrics on security checks 

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

api_instance = Falcon::SecurityCheck.new
opts = {
  status: 'Passed', # String | Exposure status
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  integration_id: 'integration_id_example', # String | Comma separated list of integration IDs
  impact: '1', # String | Impact
  compliance: true, # Boolean | Compliance
  check_type: 'apps' # String | Check Type
}

begin
  # GET Metrics
  result = api_instance.get_metrics_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_metrics_v3: #{e}"
end
```

#### Using the get_metrics_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMetrics>, Integer, Hash)> get_metrics_v3_with_http_info(opts)

```ruby
begin
  # GET Metrics
  data, status_code, headers = api_instance.get_metrics_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMetrics>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_metrics_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Exposure status | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **integration_id** | **String** | Comma separated list of integration IDs | [optional] |
| **impact** | **String** | Impact | [optional] |
| **compliance** | **Boolean** | Compliance | [optional] |
| **check_type** | **String** | Check Type | [optional] |

### Return type

[**GetMetrics**](GetMetrics.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_check_affected_v3

> <GetAffected> get_security_check_affected_v3(id, opts)

GET Security Check Affected

Get a list of affected entities 

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

api_instance = Falcon::SecurityCheck.new
id = 'id_example' # String | Security Check ID
opts = {
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56 # Integer | The starting index of the results
}

begin
  # GET Security Check Affected
  result = api_instance.get_security_check_affected_v3(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_check_affected_v3: #{e}"
end
```

#### Using the get_security_check_affected_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAffected>, Integer, Hash)> get_security_check_affected_v3_with_http_info(id, opts)

```ruby
begin
  # GET Security Check Affected
  data, status_code, headers = api_instance.get_security_check_affected_v3_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAffected>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_check_affected_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Security Check ID |  |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |

### Return type

[**GetAffected**](GetAffected.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_check_compliance_v3

> <GetSecurityCompliance> get_security_check_compliance_v3(id)

GET Compliance

Get a list of compliance standards attached to a check

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

api_instance = Falcon::SecurityCheck.new
id = 'id_example' # String | Security Check ID

begin
  # GET Compliance
  result = api_instance.get_security_check_compliance_v3(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_check_compliance_v3: #{e}"
end
```

#### Using the get_security_check_compliance_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSecurityCompliance>, Integer, Hash)> get_security_check_compliance_v3_with_http_info(id)

```ruby
begin
  # GET Compliance
  data, status_code, headers = api_instance.get_security_check_compliance_v3_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSecurityCompliance>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_check_compliance_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Security Check ID |  |

### Return type

[**GetSecurityCompliance**](GetSecurityCompliance.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_checks_v3

> <GetSecurityChecks> get_security_checks_v3(opts)

GET Security Check by ID or GET List Security Checks

Get a specific security check by ID or Get all security checks

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

api_instance = Falcon::SecurityCheck.new
opts = {
  id: 'id_example', # String | Security Check ID
  limit: 56, # Integer | The maximum number of objects to return
  offset: 56, # Integer | The starting index of the results
  status: 'Passed', # String | Exposure status
  integration_id: 'integration_id_example', # String | Comma separated list of integration IDs
  impact: '1', # String | Impact
  compliance: true, # Boolean | Compliance
  check_type: 'apps' # String | Check Type
}

begin
  # GET Security Check by ID or GET List Security Checks
  result = api_instance.get_security_checks_v3(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_checks_v3: #{e}"
end
```

#### Using the get_security_checks_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSecurityChecks>, Integer, Hash)> get_security_checks_v3_with_http_info(opts)

```ruby
begin
  # GET Security Check by ID or GET List Security Checks
  data, status_code, headers = api_instance.get_security_checks_v3_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSecurityChecks>
rescue Falcon::ApiError => e
  puts "Error when calling SecurityCheck->get_security_checks_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Security Check ID | [optional] |
| **limit** | **Integer** | The maximum number of objects to return | [optional] |
| **offset** | **Integer** | The starting index of the results | [optional] |
| **status** | **String** | Exposure status | [optional] |
| **integration_id** | **String** | Comma separated list of integration IDs | [optional] |
| **impact** | **String** | Impact | [optional] |
| **compliance** | **Boolean** | Compliance | [optional] |
| **check_type** | **String** | Check Type | [optional] |

### Return type

[**GetSecurityChecks**](GetSecurityChecks.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

