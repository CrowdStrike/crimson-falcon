# Falcon::IntelligenceFeeds

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_feed_archive**](IntelligenceFeeds.md#download_feed_archive) | **GET** /indicator-feed/entities/feed-download/v1 | Downloads the content as a zip archive for a given feed item ID |
| [**list_feed_types**](IntelligenceFeeds.md#list_feed_types) | **GET** /indicator-feed/entities/feed/v1 | Lists the accessible feed types for a given customer |
| [**query_feed_archives**](IntelligenceFeeds.md#query_feed_archives) | **GET** /indicator-feed/queries/feed/v1 | Queries the accessible feed types for a customer. Returns a list of feed item IDs which can be later downloaded |


## download_feed_archive

> download_feed_archive(feed_item_id)

Downloads the content as a zip archive for a given feed item ID

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

api_instance = Falcon::IntelligenceFeeds.new
feed_item_id = 'feed_item_id_example' # String | Feed ID

begin
  # Downloads the content as a zip archive for a given feed item ID
  api_instance.download_feed_archive(feed_item_id)
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->download_feed_archive: #{e}"
end
```

#### Using the download_feed_archive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> download_feed_archive_with_http_info(feed_item_id)

```ruby
begin
  # Downloads the content as a zip archive for a given feed item ID
  data, status_code, headers = api_instance.download_feed_archive_with_http_info(feed_item_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->download_feed_archive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_item_id** | **String** | Feed ID |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_feed_types

> <RestapiIndicatorGetFeedsResponse> list_feed_types

Lists the accessible feed types for a given customer

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

api_instance = Falcon::IntelligenceFeeds.new

begin
  # Lists the accessible feed types for a given customer
  result = api_instance.list_feed_types
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->list_feed_types: #{e}"
end
```

#### Using the list_feed_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiIndicatorGetFeedsResponse>, Integer, Hash)> list_feed_types_with_http_info

```ruby
begin
  # Lists the accessible feed types for a given customer
  data, status_code, headers = api_instance.list_feed_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestapiIndicatorGetFeedsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->list_feed_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RestapiIndicatorGetFeedsResponse**](RestapiIndicatorGetFeedsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_feed_archives

> <RestapiIndicatorFeedQueryResponse> query_feed_archives(feed_name, feed_interval, opts)

Queries the accessible feed types for a customer. Returns a list of feed item IDs which can be later downloaded

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

api_instance = Falcon::IntelligenceFeeds.new
feed_name = 'feed_name_example' # String | Feed Name
feed_interval = 'feed_interval_example' # String | Feed interval must be one of: dump|daily|hourly|minutely
opts = {
  since: 'since_example' # String | Since is a valid timestamp in RFC3399 format. Restrictions: minutely: now()-2h, hourly: now()-2d, daily: now()-5d; dump: now()-7d
}

begin
  # Queries the accessible feed types for a customer. Returns a list of feed item IDs which can be later downloaded
  result = api_instance.query_feed_archives(feed_name, feed_interval, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->query_feed_archives: #{e}"
end
```

#### Using the query_feed_archives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestapiIndicatorFeedQueryResponse>, Integer, Hash)> query_feed_archives_with_http_info(feed_name, feed_interval, opts)

```ruby
begin
  # Queries the accessible feed types for a customer. Returns a list of feed item IDs which can be later downloaded
  data, status_code, headers = api_instance.query_feed_archives_with_http_info(feed_name, feed_interval, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestapiIndicatorFeedQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelligenceFeeds->query_feed_archives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_name** | **String** | Feed Name |  |
| **feed_interval** | **String** | Feed interval must be one of: dump|daily|hourly|minutely |  |
| **since** | **String** | Since is a valid timestamp in RFC3399 format. Restrictions: minutely: now()-2h, hourly: now()-2d, daily: now()-5d; dump: now()-7d | [optional] |

### Return type

[**RestapiIndicatorFeedQueryResponse**](RestapiIndicatorFeedQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

