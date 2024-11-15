# Falcon::MobileEnrollment

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**request_device_enrollment_v3**](MobileEnrollment.md#request_device_enrollment_v3) | **POST** /enrollments/entities/details/v3 | Trigger on-boarding process for a mobile device |
| [**request_device_enrollment_v4**](MobileEnrollment.md#request_device_enrollment_v4) | **POST** /enrollments/entities/details/v4 | Trigger on-boarding process for a mobile device |


## request_device_enrollment_v3

> <ApiPostEnrollmentDetailsResponse> request_device_enrollment_v3(body, opts)

Trigger on-boarding process for a mobile device

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

api_instance = Falcon::MobileEnrollment.new
body = Falcon::ApiPostEnrollmentDetails.new({email_addresses: ['email_addresses_example'], expires_at: Time.now}) # ApiPostEnrollmentDetails | 
opts = {
  action_name: 'enroll', # String | Action to perform
  filter: 'filter_example' # String | FQL filter
}

begin
  # Trigger on-boarding process for a mobile device
  result = api_instance.request_device_enrollment_v3(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MobileEnrollment->request_device_enrollment_v3: #{e}"
end
```

#### Using the request_device_enrollment_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiPostEnrollmentDetailsResponse>, Integer, Hash)> request_device_enrollment_v3_with_http_info(body, opts)

```ruby
begin
  # Trigger on-boarding process for a mobile device
  data, status_code, headers = api_instance.request_device_enrollment_v3_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPostEnrollmentDetailsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MobileEnrollment->request_device_enrollment_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiPostEnrollmentDetails**](ApiPostEnrollmentDetails.md) |  |  |
| **action_name** | **String** | Action to perform | [optional] |
| **filter** | **String** | FQL filter | [optional] |

### Return type

[**ApiPostEnrollmentDetailsResponse**](ApiPostEnrollmentDetailsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## request_device_enrollment_v4

> <ApiPostEnrollmentDetailsResponse> request_device_enrollment_v4(body, opts)

Trigger on-boarding process for a mobile device

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

api_instance = Falcon::MobileEnrollment.new
body = Falcon::ApiPostEnrollmentDetailsV4.new({email_addresses: ['email_addresses_example'], enrollment_type: 'enrollment_type_example', expires_at: Time.now}) # ApiPostEnrollmentDetailsV4 | 
opts = {
  action_name: 'enroll', # String | Action to perform
  filter: 'filter_example' # String | FQL filter
}

begin
  # Trigger on-boarding process for a mobile device
  result = api_instance.request_device_enrollment_v4(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MobileEnrollment->request_device_enrollment_v4: #{e}"
end
```

#### Using the request_device_enrollment_v4_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiPostEnrollmentDetailsResponse>, Integer, Hash)> request_device_enrollment_v4_with_http_info(body, opts)

```ruby
begin
  # Trigger on-boarding process for a mobile device
  data, status_code, headers = api_instance.request_device_enrollment_v4_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiPostEnrollmentDetailsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MobileEnrollment->request_device_enrollment_v4_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiPostEnrollmentDetailsV4**](ApiPostEnrollmentDetailsV4.md) |  |  |
| **action_name** | **String** | Action to perform | [optional] |
| **filter** | **String** | FQL filter | [optional] |

### Return type

[**ApiPostEnrollmentDetailsResponse**](ApiPostEnrollmentDetailsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

