# Falcon::MalqueryRateLimitsMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days_left** | **Integer** | Days left until the limits are refreshed |  |
| **download_count** | **Integer** | How many downloads were executed in the last month |  |
| **download_counts** | [**Array&lt;MalqueryUserRequestCount&gt;**](MalqueryUserRequestCount.md) | Download counts per user | [optional] |
| **download_limit** | **Integer** | Total download limit per month |  |
| **hunt_count** | **Integer** | How many hunts were executed in the last month |  |
| **hunt_counts** | [**Array&lt;MalqueryUserRequestCount&gt;**](MalqueryUserRequestCount.md) | Hunt counts per user | [optional] |
| **hunt_limit** | **Integer** | Total hunt limit per month |  |
| **monitor_count** | **Integer** | How many monitors were created in the last month |  |
| **monitor_limit** | **Integer** | Total monitor limit per month |  |
| **refresh_time** | **String** | Time when the limits are refreshed. ISO 8601 format |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryRateLimitsMeta.new(
  days_left: null,
  download_count: null,
  download_counts: null,
  download_limit: null,
  hunt_count: null,
  hunt_counts: null,
  hunt_limit: null,
  monitor_count: null,
  monitor_limit: null,
  refresh_time: null
)
```

