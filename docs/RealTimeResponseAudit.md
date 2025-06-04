# Falcon::RealTimeResponseAudit

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**r_tr_audit_sessions**](RealTimeResponseAudit.md#r_tr_audit_sessions) | **GET** /real-time-response-audit/combined/sessions/v1 | Get all the RTR sessions created for a customer in a specified duration |


## r_tr_audit_sessions

> <DomainSessionResponseWrapper> r_tr_audit_sessions(opts)

Get all the RTR sessions created for a customer in a specified duration

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

api_instance = Falcon::RealTimeResponseAudit.new
opts = {
  filter: 'filter_example', # String | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  sort: 'created_at', # String | how to sort the session IDs. e.g. sort=created_at|desc will sort the results based on createdAt in descending order
  limit: 'limit_example', # String | number of sessions to be returned
  offset: 'offset_example', # String | offset value to be used for paginated results
  with_command_info: true # Boolean | get sessions with command info included; by default sessions are returned without command info which include cloud_request_ids and logs fields
}

begin
  # Get all the RTR sessions created for a customer in a specified duration
  result = api_instance.r_tr_audit_sessions(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAudit->r_tr_audit_sessions: #{e}"
end
```

#### Using the r_tr_audit_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSessionResponseWrapper>, Integer, Hash)> r_tr_audit_sessions_with_http_info(opts)

```ruby
begin
  # Get all the RTR sessions created for a customer in a specified duration
  data, status_code, headers = api_instance.r_tr_audit_sessions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSessionResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAudit->r_tr_audit_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **sort** | **String** | how to sort the session IDs. e.g. sort&#x3D;created_at|desc will sort the results based on createdAt in descending order | [optional] |
| **limit** | **String** | number of sessions to be returned | [optional] |
| **offset** | **String** | offset value to be used for paginated results | [optional] |
| **with_command_info** | **Boolean** | get sessions with command info included; by default sessions are returned without command info which include cloud_request_ids and logs fields | [optional][default to false] |

### Return type

[**DomainSessionResponseWrapper**](DomainSessionResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

