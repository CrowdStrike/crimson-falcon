# Falcon::ReleaseNotes

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**combined_release_notes_v1**](ReleaseNotes.md#combined_release_notes_v1) | **GET** /deployment-coordinator/combined/release-notes/v1 | Queries for release-notes resources and returns details |
| [**get_entity_ids_by_query_post**](ReleaseNotes.md#get_entity_ids_by_query_post) | **POST** /deployment-coordinator/entities/release-notes/GET/v1 | returns the release notes for the IDs in the request |
| [**query_release_notes_v1**](ReleaseNotes.md#query_release_notes_v1) | **GET** /deployment-coordinator/queries/release-notes/v1 | Queries for release-notes resources and returns ids |


## combined_release_notes_v1

> <ReleasenotesReleaseNoteWrapperV1> combined_release_notes_v1(authorization, opts)

Queries for release-notes resources and returns details

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

api_instance = Falcon::ReleaseNotes.new
authorization = 'authorization_example' # String | authorization header
opts = {
  x_cs_username: 'x_cs_username_example', # String | user name
  filter: 'filter_example', # String | FQL query specifying filter parameters.
  limit: 56, # Integer | Maximum number of records to return.
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  sort: 'sort_example' # String | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending.
}

begin
  # Queries for release-notes resources and returns details
  result = api_instance.combined_release_notes_v1(authorization, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->combined_release_notes_v1: #{e}"
end
```

#### Using the combined_release_notes_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasenotesReleaseNoteWrapperV1>, Integer, Hash)> combined_release_notes_v1_with_http_info(authorization, opts)

```ruby
begin
  # Queries for release-notes resources and returns details
  data, status_code, headers = api_instance.combined_release_notes_v1_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasenotesReleaseNoteWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->combined_release_notes_v1_with_http_info: #{e}"
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

[**ReleasenotesReleaseNoteWrapperV1**](ReleasenotesReleaseNoteWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_ids_by_query_post

> <ReleasenotesReleaseNoteWrapperV1> get_entity_ids_by_query_post(authorization, body, opts)

returns the release notes for the IDs in the request

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

api_instance = Falcon::ReleaseNotes.new
authorization = 'authorization_example' # String | authorization header
body = Falcon::ReleasenotesEntitiesGetRequest.new({ids: ['ids_example']}) # ReleasenotesEntitiesGetRequest | 
opts = {
  x_cs_username: 'x_cs_username_example' # String | user name
}

begin
  # returns the release notes for the IDs in the request
  result = api_instance.get_entity_ids_by_query_post(authorization, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->get_entity_ids_by_query_post: #{e}"
end
```

#### Using the get_entity_ids_by_query_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasenotesReleaseNoteWrapperV1>, Integer, Hash)> get_entity_ids_by_query_post_with_http_info(authorization, body, opts)

```ruby
begin
  # returns the release notes for the IDs in the request
  data, status_code, headers = api_instance.get_entity_ids_by_query_post_with_http_info(authorization, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasenotesReleaseNoteWrapperV1>
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->get_entity_ids_by_query_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | authorization header |  |
| **body** | [**ReleasenotesEntitiesGetRequest**](ReleasenotesEntitiesGetRequest.md) |  |  |
| **x_cs_username** | **String** | user name | [optional] |

### Return type

[**ReleasenotesReleaseNoteWrapperV1**](ReleasenotesReleaseNoteWrapperV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_release_notes_v1

> <StringWrapper> query_release_notes_v1(authorization, opts)

Queries for release-notes resources and returns ids

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

api_instance = Falcon::ReleaseNotes.new
authorization = 'authorization_example' # String | authorization header
opts = {
  x_cs_username: 'x_cs_username_example', # String | user name
  filter: 'filter_example', # String | FQL query specifying filter parameters.
  limit: 56, # Integer | Maximum number of records to return.
  offset: 'offset_example', # String | Starting pagination offset of records to return.
  sort: 'sort_example' # String | Sort items by providing a comma separated list of property and direction (eg name.desc,time.asc). If direction is omitted, defaults to descending.
}

begin
  # Queries for release-notes resources and returns ids
  result = api_instance.query_release_notes_v1(authorization, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->query_release_notes_v1: #{e}"
end
```

#### Using the query_release_notes_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> query_release_notes_v1_with_http_info(authorization, opts)

```ruby
begin
  # Queries for release-notes resources and returns ids
  data, status_code, headers = api_instance.query_release_notes_v1_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling ReleaseNotes->query_release_notes_v1_with_http_info: #{e}"
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

[**StringWrapper**](StringWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

