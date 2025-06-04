# Falcon::Handle

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**handle**](Handle.md#handle) | **POST** /data-security-dspm/entities/kafka-rest-produce/v1 |  |


## handle

> Hash&lt;String, String&gt; handle



- Handle is responsible for producing the input message into the corresponded Kafka Topic

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

api_instance = Falcon::Handle.new

begin
  
  result = api_instance.handle
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Handle->handle: #{e}"
end
```

#### Using the handle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> handle_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.handle_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue Falcon::ApiError => e
  puts "Error when calling Handle->handle_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Hash&lt;String, String&gt;**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

