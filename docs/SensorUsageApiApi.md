# Falcon::SensorUsageApiApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sensor_usage_weekly**](SensorUsageApiApi.md#get_sensor_usage_weekly) | **GET** /billing-dashboards-usage/aggregates/weekly-average/v1 | Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days. |


## get_sensor_usage_weekly

> <ApiWeeklyAverageResponse> get_sensor_usage_weekly(opts)

Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days.

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

api_instance = Falcon::SensorUsageApiApi.new
opts = {
  filter: 'filter_example' # String | The FQL search filter. Allowed fields: \"event_date\" : A specified date that will be final date of the results returned. Specified date cannot be after the default.  Format: '2024-06-11'  Default: the current date, minus 2 days, in UTC \"period\" : An integer surrounded by single quotes representing the number of days to return.  Format: '30'  Default: '28'  Minimum: '1'  Maximum: '395' \"selected_cids\" : A comma separated list of CIDs to return data for. Caller must be a parent CID or have special access enabled.  Format: 'cid_1,cid_2,cid_3'  Default: for parent CIDs the default is the parent and all children, otherwise the current CID
}

begin
  # Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days.
  result = api_instance.get_sensor_usage_weekly(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling SensorUsageApiApi->get_sensor_usage_weekly: #{e}"
end
```

#### Using the get_sensor_usage_weekly_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiWeeklyAverageResponse>, Integer, Hash)> get_sensor_usage_weekly_with_http_info(opts)

```ruby
begin
  # Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days.
  data, status_code, headers = api_instance.get_sensor_usage_weekly_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiWeeklyAverageResponse>
rescue Falcon::ApiError => e
  puts "Error when calling SensorUsageApiApi->get_sensor_usage_weekly_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | The FQL search filter. Allowed fields: \&quot;event_date\&quot; : A specified date that will be final date of the results returned. Specified date cannot be after the default.  Format: &#39;2024-06-11&#39;  Default: the current date, minus 2 days, in UTC \&quot;period\&quot; : An integer surrounded by single quotes representing the number of days to return.  Format: &#39;30&#39;  Default: &#39;28&#39;  Minimum: &#39;1&#39;  Maximum: &#39;395&#39; \&quot;selected_cids\&quot; : A comma separated list of CIDs to return data for. Caller must be a parent CID or have special access enabled.  Format: &#39;cid_1,cid_2,cid_3&#39;  Default: for parent CIDs the default is the parent and all children, otherwise the current CID | [optional] |

### Return type

[**ApiWeeklyAverageResponse**](ApiWeeklyAverageResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

