# Falcon::Hosts

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**entities_perform_action**](Hosts.md#entities_perform_action) | **POST** /devices/entities/group-actions/v1 | Performs the specified action on the provided group IDs. |
| [**get_device_details_v2**](Hosts.md#get_device_details_v2) | **GET** /devices/entities/devices/v2 | Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs. |
| [**get_online_state_v1**](Hosts.md#get_online_state_v1) | **GET** /devices/entities/online-state/v1 | Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a &#x60;state&#x60; of &#x60;online&#x60;, &#x60;offline&#x60;, or &#x60;unknown&#x60; for each host, identified by host &#x60;id&#x60;.  Make a &#x60;GET&#x60; request to &#x60;/devices/queries/devices/v1&#x60; to get a list of host IDs. |
| [**perform_action_v2**](Hosts.md#perform_action_v2) | **POST** /devices/entities/devices-actions/v2 | Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host. |
| [**post_device_details_v2**](Hosts.md#post_device_details_v2) | **POST** /devices/entities/devices/v2 | Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs. |
| [**query_device_login_history**](Hosts.md#query_device_login_history) | **POST** /devices/combined/devices/login-history/v1 | Retrieve details about recent login sessions for a set of devices. |
| [**query_device_login_history_v2**](Hosts.md#query_device_login_history_v2) | **POST** /devices/combined/devices/login-history/v2 | Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified |
| [**query_devices_by_filter**](Hosts.md#query_devices_by_filter) | **GET** /devices/queries/devices/v1 | Search for hosts in your environment by platform, hostname, IP, and other criteria. |
| [**query_devices_by_filter_scroll**](Hosts.md#query_devices_by_filter_scroll) | **GET** /devices/queries/devices-scroll/v1 | Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit) |
| [**query_get_network_address_history_v1**](Hosts.md#query_get_network_address_history_v1) | **POST** /devices/combined/devices/network-address-history/v1 | Retrieve history of IP and MAC addresses of devices. |
| [**query_hidden_devices**](Hosts.md#query_hidden_devices) | **GET** /devices/queries/devices-hidden/v1 | Retrieve hidden hosts that match the provided filter criteria. |
| [**update_device_tags**](Hosts.md#update_device_tags) | **PATCH** /devices/entities/devices/tags/v1 | Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/ |


## entities_perform_action

> <DeviceapiGroupsResponseV1> entities_perform_action(ids, action_name, body, opts)

Performs the specified action on the provided group IDs.

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

api_instance = Falcon::Hosts.new
ids = ['inner_example'] # Array<String> | The group ids to act on
action_name = 'add_group_member' # String | The action to perform.
body = Falcon::MsaEntityActionRequest.new # MsaEntityActionRequest | 
opts = {
  disable_hostname_check: true # Boolean | Bool to disable hostname check on add-member
}

begin
  # Performs the specified action on the provided group IDs.
  result = api_instance.entities_perform_action(ids, action_name, body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->entities_perform_action: #{e}"
end
```

#### Using the entities_perform_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiGroupsResponseV1>, Integer, Hash)> entities_perform_action_with_http_info(ids, action_name, body, opts)

```ruby
begin
  # Performs the specified action on the provided group IDs.
  data, status_code, headers = api_instance.entities_perform_action_with_http_info(ids, action_name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiGroupsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->entities_perform_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The group ids to act on |  |
| **action_name** | **String** | The action to perform. |  |
| **body** | [**MsaEntityActionRequest**](MsaEntityActionRequest.md) |  |  |
| **disable_hostname_check** | **Boolean** | Bool to disable hostname check on add-member | [optional][default to false] |

### Return type

[**DeviceapiGroupsResponseV1**](DeviceapiGroupsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_device_details_v2

> <DeviceapiDeviceDetailsResponseSwagger> get_device_details_v2(ids)

Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.

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

api_instance = Falcon::Hosts.new
ids = ['inner_example'] # Array<String> | The host agentIDs used to get details on

begin
  # Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.
  result = api_instance.get_device_details_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->get_device_details_v2: #{e}"
end
```

#### Using the get_device_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiDeviceDetailsResponseSwagger>, Integer, Hash)> get_device_details_v2_with_http_info(ids)

```ruby
begin
  # Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.
  data, status_code, headers = api_instance.get_device_details_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiDeviceDetailsResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->get_device_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The host agentIDs used to get details on |  |

### Return type

[**DeviceapiDeviceDetailsResponseSwagger**](DeviceapiDeviceDetailsResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_online_state_v1

> <StateOnlineStateRespV1> get_online_state_v1(ids)

Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a `state` of `online`, `offline`, or `unknown` for each host, identified by host `id`.  Make a `GET` request to `/devices/queries/devices/v1` to get a list of host IDs.

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

api_instance = Falcon::Hosts.new
ids = ['inner_example'] # Array<String> | The unique ID of the host to get the online status of.

begin
  # Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a `state` of `online`, `offline`, or `unknown` for each host, identified by host `id`.  Make a `GET` request to `/devices/queries/devices/v1` to get a list of host IDs.
  result = api_instance.get_online_state_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->get_online_state_v1: #{e}"
end
```

#### Using the get_online_state_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateOnlineStateRespV1>, Integer, Hash)> get_online_state_v1_with_http_info(ids)

```ruby
begin
  # Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a `state` of `online`, `offline`, or `unknown` for each host, identified by host `id`.  Make a `GET` request to `/devices/queries/devices/v1` to get a list of host IDs.
  data, status_code, headers = api_instance.get_online_state_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateOnlineStateRespV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->get_online_state_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The unique ID of the host to get the online status of. |  |

### Return type

[**StateOnlineStateRespV1**](StateOnlineStateRespV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## perform_action_v2

> <MsaReplyAffectedEntities> perform_action_v2(action_name, body)

Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.

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

api_instance = Falcon::Hosts.new
action_name = 'action_name_example' # String | Specify one of these actions:  - `contain` - This action contains the host, which stops any network communications to locations other than the CrowdStrike cloud and IPs specified in your [containment policy](https://falcon.crowdstrike.com/support/documentation/11/getting-started-guide#containmentpolicy) - `lift_containment`: This action lifts containment on the host, which returns its network communications to normal - `hide_host`: This action will delete a host. After the host is deleted, no new detections for that host will be reported via UI or APIs - `unhide_host`: This action will restore a host. Detection reporting will resume after the host is restored
body = Falcon::MsaEntityActionRequestV2.new({ids: ['ids_example']}) # MsaEntityActionRequestV2 | The host agent ID (AID) of the host you want to contain. Get an agent ID from a detection, the Falcon console, or the Streaming API.  Provide the ID in JSON format with the key `ids` and the value in square brackets, such as:   `\"ids\": [\"123456789\"]`

begin
  # Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.
  result = api_instance.perform_action_v2(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->perform_action_v2: #{e}"
end
```

#### Using the perform_action_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyAffectedEntities>, Integer, Hash)> perform_action_v2_with_http_info(action_name, body)

```ruby
begin
  # Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.
  data, status_code, headers = api_instance.perform_action_v2_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyAffectedEntities>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->perform_action_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | Specify one of these actions:  - &#x60;contain&#x60; - This action contains the host, which stops any network communications to locations other than the CrowdStrike cloud and IPs specified in your [containment policy](https://falcon.crowdstrike.com/support/documentation/11/getting-started-guide#containmentpolicy) - &#x60;lift_containment&#x60;: This action lifts containment on the host, which returns its network communications to normal - &#x60;hide_host&#x60;: This action will delete a host. After the host is deleted, no new detections for that host will be reported via UI or APIs - &#x60;unhide_host&#x60;: This action will restore a host. Detection reporting will resume after the host is restored |  |
| **body** | [**MsaEntityActionRequestV2**](MsaEntityActionRequestV2.md) | The host agent ID (AID) of the host you want to contain. Get an agent ID from a detection, the Falcon console, or the Streaming API.  Provide the ID in JSON format with the key &#x60;ids&#x60; and the value in square brackets, such as:   &#x60;\&quot;ids\&quot;: [\&quot;123456789\&quot;]&#x60; |  |

### Return type

[**MsaReplyAffectedEntities**](MsaReplyAffectedEntities.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_device_details_v2

> <DeviceapiDeviceDetailsResponseSwagger> post_device_details_v2(body)

Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.

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

api_instance = Falcon::Hosts.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.
  result = api_instance.post_device_details_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->post_device_details_v2: #{e}"
end
```

#### Using the post_device_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiDeviceDetailsResponseSwagger>, Integer, Hash)> post_device_details_v2_with_http_info(body)

```ruby
begin
  # Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.
  data, status_code, headers = api_instance.post_device_details_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiDeviceDetailsResponseSwagger>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->post_device_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DeviceapiDeviceDetailsResponseSwagger**](DeviceapiDeviceDetailsResponseSwagger.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_device_login_history

> <DeviceapiLoginHistoryResponseV1> query_device_login_history(body)

Retrieve details about recent login sessions for a set of devices.

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

api_instance = Falcon::Hosts.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve details about recent login sessions for a set of devices.
  result = api_instance.query_device_login_history(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_device_login_history: #{e}"
end
```

#### Using the query_device_login_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiLoginHistoryResponseV1>, Integer, Hash)> query_device_login_history_with_http_info(body)

```ruby
begin
  # Retrieve details about recent login sessions for a set of devices.
  data, status_code, headers = api_instance.query_device_login_history_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiLoginHistoryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_device_login_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DeviceapiLoginHistoryResponseV1**](DeviceapiLoginHistoryResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_device_login_history_v2

> <DeviceapiLoginHistoryResponseV1> query_device_login_history_v2(body)

Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified

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

api_instance = Falcon::Hosts.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified
  result = api_instance.query_device_login_history_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_device_login_history_v2: #{e}"
end
```

#### Using the query_device_login_history_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiLoginHistoryResponseV1>, Integer, Hash)> query_device_login_history_v2_with_http_info(body)

```ruby
begin
  # Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified
  data, status_code, headers = api_instance.query_device_login_history_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiLoginHistoryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_device_login_history_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DeviceapiLoginHistoryResponseV1**](DeviceapiLoginHistoryResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_devices_by_filter

> <MsaQueryResponse> query_devices_by_filter(opts)

Search for hosts in your environment by platform, hostname, IP, and other criteria.

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

api_instance = Falcon::Hosts.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example', # String | The property to sort by (e.g. status.desc or hostname.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Search for hosts in your environment by platform, hostname, IP, and other criteria.
  result = api_instance.query_devices_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_devices_by_filter: #{e}"
end
```

#### Using the query_devices_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_devices_by_filter_with_http_info(opts)

```ruby
begin
  # Search for hosts in your environment by platform, hostname, IP, and other criteria.
  data, status_code, headers = api_instance.query_devices_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_devices_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by (e.g. status.desc or hostname.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_devices_by_filter_scroll

> <DeviceapiDeviceResponse> query_devices_by_filter_scroll(opts)

Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)

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

api_instance = Falcon::Hosts.new
opts = {
  offset: 'offset_example', # String | The offset to page from, provided from the previous scroll call, for the next result set. For the first call, do not supply an offset.
  limit: 56, # Integer | The maximum records to return. [1-10000]
  sort: 'sort_example', # String | The property to sort by (e.g. status.desc or hostname.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)
  result = api_instance.query_devices_by_filter_scroll(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_devices_by_filter_scroll: #{e}"
end
```

#### Using the query_devices_by_filter_scroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiDeviceResponse>, Integer, Hash)> query_devices_by_filter_scroll_with_http_info(opts)

```ruby
begin
  # Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)
  data, status_code, headers = api_instance.query_devices_by_filter_scroll_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiDeviceResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_devices_by_filter_scroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | The offset to page from, provided from the previous scroll call, for the next result set. For the first call, do not supply an offset. | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-10000] | [optional] |
| **sort** | **String** | The property to sort by (e.g. status.desc or hostname.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**DeviceapiDeviceResponse**](DeviceapiDeviceResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_get_network_address_history_v1

> <DeviceapiNetworkAddressHistoryResponseV1> query_get_network_address_history_v1(body)

Retrieve history of IP and MAC addresses of devices.

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

api_instance = Falcon::Hosts.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve history of IP and MAC addresses of devices.
  result = api_instance.query_get_network_address_history_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_get_network_address_history_v1: #{e}"
end
```

#### Using the query_get_network_address_history_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiNetworkAddressHistoryResponseV1>, Integer, Hash)> query_get_network_address_history_v1_with_http_info(body)

```ruby
begin
  # Retrieve history of IP and MAC addresses of devices.
  data, status_code, headers = api_instance.query_get_network_address_history_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiNetworkAddressHistoryResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_get_network_address_history_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DeviceapiNetworkAddressHistoryResponseV1**](DeviceapiNetworkAddressHistoryResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_hidden_devices

> <MsaQueryResponse> query_hidden_devices(opts)

Retrieve hidden hosts that match the provided filter criteria.

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

api_instance = Falcon::Hosts.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-5000]
  sort: 'sort_example', # String | The property to sort by (e.g. status.desc or hostname.asc)
  filter: 'filter_example' # String | The filter expression that should be used to limit the results
}

begin
  # Retrieve hidden hosts that match the provided filter criteria.
  result = api_instance.query_hidden_devices(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_hidden_devices: #{e}"
end
```

#### Using the query_hidden_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_hidden_devices_with_http_info(opts)

```ruby
begin
  # Retrieve hidden hosts that match the provided filter criteria.
  data, status_code, headers = api_instance.query_hidden_devices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->query_hidden_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-5000] | [optional] |
| **sort** | **String** | The property to sort by (e.g. status.desc or hostname.asc) | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_device_tags

> <DeviceapiUpdateDeviceTagsSwaggerV1> update_device_tags(body)

Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/

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

api_instance = Falcon::Hosts.new
body = Falcon::DeviceapiUpdateDeviceTagsRequestV1.new({action: 'action_example', device_ids: ['device_ids_example'], tags: ['tags_example']}) # DeviceapiUpdateDeviceTagsRequestV1 | 

begin
  # Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/
  result = api_instance.update_device_tags(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->update_device_tags: #{e}"
end
```

#### Using the update_device_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceapiUpdateDeviceTagsSwaggerV1>, Integer, Hash)> update_device_tags_with_http_info(body)

```ruby
begin
  # Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/
  data, status_code, headers = api_instance.update_device_tags_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceapiUpdateDeviceTagsSwaggerV1>
rescue Falcon::ApiError => e
  puts "Error when calling Hosts->update_device_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeviceapiUpdateDeviceTagsRequestV1**](DeviceapiUpdateDeviceTagsRequestV1.md) |  |  |

### Return type

[**DeviceapiUpdateDeviceTagsSwaggerV1**](DeviceapiUpdateDeviceTagsSwaggerV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

