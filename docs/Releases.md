# Falcon::Releases

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_releases_v1_mixin0**](Releases.md#combined_releases_v1_mixin0) | **GET** /deployment-coordinator/combined/releases/v1 | Queries for releases resources and returns details |


## combined_releases_v1_mixin0

> <ReleasesReleaseWrapper> combined_releases_v1_mixin0(authorization, opts)

Queries for releases resources and returns details

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

api_instance = Falcon::Releases.new
authorization = 'authorization_example' # String | authorization header
opts = {
  x_cs_username: 'x_cs_username_example', # String | user name
  filter: 'filter_example', # String | FQL query specifying filter parameters.
  limit: 56, # Integer | Maximum number of records to return.
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  sort: 'sort_example' # String | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending.
}

begin
  # Queries for releases resources and returns details
  result = api_instance.combined_releases_v1_mixin0(authorization, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Releases->combined_releases_v1_mixin0: #{e}"
end
```

#### Using the combined_releases_v1_mixin0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasesReleaseWrapper>, Integer, Hash)> combined_releases_v1_mixin0_with_http_info(authorization, opts)

```ruby
begin
  # Queries for releases resources and returns details
  data, status_code, headers = api_instance.combined_releases_v1_mixin0_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasesReleaseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling Releases->combined_releases_v1_mixin0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | authorization header |  |
| **x_cs_username** | **String** | user name | [optional] |
| **filter** | **String** | FQL query specifying filter parameters. | [optional] |
| **limit** | **Integer** | Maximum number of records to return. | [optional] |
| **offset** | **String** | Starting pagination offset of records to return. | [optional] |
| **sort** | **String** | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending. | [optional] |

### Return type

[**ReleasesReleaseWrapper**](ReleasesReleaseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

