# Falcon::RealTimeResponse

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_active_responder_cmd**](RealTimeResponse.md#batch_active_responder_cmd) | **POST** /real-time-response/combined/batch-active-responder-command/v1 | Batch executes a RTR active-responder command across the hosts mapped to the given batch ID. |
| [**batch_cmd**](RealTimeResponse.md#batch_cmd) | **POST** /real-time-response/combined/batch-command/v1 | Batch executes a RTR read-only command across the hosts mapped to the given batch ID. |
| [**batch_get_cmd**](RealTimeResponse.md#batch_get_cmd) | **POST** /real-time-response/combined/batch-get-command/v1 | Batch executes &#x60;get&#x60; command across hosts to retrieve files. After this call is made &#x60;GET /real-time-response/combined/batch-get-command/v1&#x60; is used to query for the results. |
| [**batch_get_cmd_status**](RealTimeResponse.md#batch_get_cmd_status) | **GET** /real-time-response/combined/batch-get-command/v1 | Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing. |
| [**batch_init_sessions**](RealTimeResponse.md#batch_init_sessions) | **POST** /real-time-response/combined/batch-init-session/v1 | Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host. |
| [**batch_refresh_sessions**](RealTimeResponse.md#batch_refresh_sessions) | **POST** /real-time-response/combined/batch-refresh-session/v1 | Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed. |
| [**r_tr_aggregate_sessions**](RealTimeResponse.md#r_tr_aggregate_sessions) | **POST** /real-time-response/aggregates/sessions/GET/v1 | Get aggregates on session data. |
| [**r_tr_check_active_responder_command_status**](RealTimeResponse.md#r_tr_check_active_responder_command_status) | **GET** /real-time-response/entities/active-responder-command/v1 | Get status of an executed active-responder command on a single host. |
| [**r_tr_check_command_status**](RealTimeResponse.md#r_tr_check_command_status) | **GET** /real-time-response/entities/command/v1 | Get status of an executed command on a single host. |
| [**r_tr_delete_file**](RealTimeResponse.md#r_tr_delete_file) | **DELETE** /real-time-response/entities/file/v1 | Delete a RTR session file. |
| [**r_tr_delete_file_v2**](RealTimeResponse.md#r_tr_delete_file_v2) | **DELETE** /real-time-response/entities/file/v2 | Delete a RTR session file. |
| [**r_tr_delete_queued_session**](RealTimeResponse.md#r_tr_delete_queued_session) | **DELETE** /real-time-response/entities/queued-sessions/command/v1 | Delete a queued session command |
| [**r_tr_delete_session**](RealTimeResponse.md#r_tr_delete_session) | **DELETE** /real-time-response/entities/sessions/v1 | Delete a session. |
| [**r_tr_execute_active_responder_command**](RealTimeResponse.md#r_tr_execute_active_responder_command) | **POST** /real-time-response/entities/active-responder-command/v1 | Execute an active responder command on a single host. |
| [**r_tr_execute_command**](RealTimeResponse.md#r_tr_execute_command) | **POST** /real-time-response/entities/command/v1 | Execute a command on a single host. |
| [**r_tr_get_extracted_file_contents**](RealTimeResponse.md#r_tr_get_extracted_file_contents) | **GET** /real-time-response/entities/extracted-file-contents/v1 | Get RTR extracted file contents for specified session and sha256. |
| [**r_tr_init_session**](RealTimeResponse.md#r_tr_init_session) | **POST** /real-time-response/entities/sessions/v1 | Initialize a new session with the RTR cloud. |
| [**r_tr_list_all_sessions**](RealTimeResponse.md#r_tr_list_all_sessions) | **GET** /real-time-response/queries/sessions/v1 | Get a list of session_ids. |
| [**r_tr_list_files**](RealTimeResponse.md#r_tr_list_files) | **GET** /real-time-response/entities/file/v1 | Get a list of files for the specified RTR session. |
| [**r_tr_list_files_v2**](RealTimeResponse.md#r_tr_list_files_v2) | **GET** /real-time-response/entities/file/v2 | Get a list of files for the specified RTR session. |
| [**r_tr_list_queued_sessions**](RealTimeResponse.md#r_tr_list_queued_sessions) | **POST** /real-time-response/entities/queued-sessions/GET/v1 | Get queued session metadata by session ID. |
| [**r_tr_list_sessions**](RealTimeResponse.md#r_tr_list_sessions) | **POST** /real-time-response/entities/sessions/GET/v1 | Get session metadata by session id. |
| [**r_tr_pulse_session**](RealTimeResponse.md#r_tr_pulse_session) | **POST** /real-time-response/entities/refresh-session/v1 | Refresh a session timeout on a single host. |


## batch_active_responder_cmd

> <DomainMultiCommandExecuteResponseWrapper> batch_active_responder_cmd(body, opts)

Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainBatchExecuteCommandRequest.new({base_command: 'base_command_example', batch_id: 'batch_id_example', command_string: 'command_string_example', optional_hosts: ['optional_hosts_example'], persist_all: false}) # DomainBatchExecuteCommandRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `cp` - `encrypt` - `env` - `eventlog` - `filehash` - `get` - `getsid` - `help` - `history` - `ipconfig` - `kill` - `ls` - `map` - `memdump` - `mkdir` - `mount` - `mv` - `netstat` - `ps` - `reg query` - `reg set` - `reg delete` - `reg load` - `reg unload` - `restart` - `rm` - `runscript` - `shutdown` - `unmap` - `update history` - `update install` - `update list` - `update query` - `xmemdump` - `zip`  **`base_command`** Active-Responder command type we are going to execute, for example: `get` or `cp`.  Refer to the RTR documentation for the full list of commands. **`batch_id`** Batch ID to execute the command on.  Received from `/real-time-response/combined/batch-init-session/v1`. **`command_string`** Full command string for the command. For example  `get some_file.txt` **`optional_hosts`** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example', # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
  host_timeout_duration: 'host_timeout_duration_example' # String | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is < 5 minutes. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. 
}

begin
  # Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.
  result = api_instance.batch_active_responder_cmd(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_active_responder_cmd: #{e}"
end
```

#### Using the batch_active_responder_cmd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMultiCommandExecuteResponseWrapper>, Integer, Hash)> batch_active_responder_cmd_with_http_info(body, opts)

```ruby
begin
  # Batch executes a RTR active-responder command across the hosts mapped to the given batch ID.
  data, status_code, headers = api_instance.batch_active_responder_cmd_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMultiCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_active_responder_cmd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchExecuteCommandRequest**](DomainBatchExecuteCommandRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;optional_hosts&#x60;** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |
| **host_timeout_duration** | **String** | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is &lt; 5 minutes. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;.  | [optional][default to &#39;tiny bit less than overall request timeout&#39;] |

### Return type

[**DomainMultiCommandExecuteResponseWrapper**](DomainMultiCommandExecuteResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_cmd

> <DomainMultiCommandExecuteResponseWrapper> batch_cmd(body, opts)

Batch executes a RTR read-only command across the hosts mapped to the given batch ID.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainBatchExecuteCommandRequest.new({base_command: 'base_command_example', batch_id: 'batch_id_example', command_string: 'command_string_example', optional_hosts: ['optional_hosts_example'], persist_all: false}) # DomainBatchExecuteCommandRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `env` - `eventlog` - `filehash` - `getsid` - `help` - `history` - `ipconfig` - `ls` - `mount` - `netstat` - `ps` - `reg query`  **`base_command`** read-only command type we are going to execute, for example: `ls` or `cd`.  Refer to the RTR documentation for the full list of commands. **`batch_id`** Batch ID to execute the command on.  Received from `/real-time-response/combined/batch-init-session/v1`. **`command_string`** Full command string for the command. For example  `cd C:\\some_directory` **`optional_hosts`** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example', # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
  host_timeout_duration: 'host_timeout_duration_example' # String | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is < 5 minutes. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. 
}

begin
  # Batch executes a RTR read-only command across the hosts mapped to the given batch ID.
  result = api_instance.batch_cmd(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_cmd: #{e}"
end
```

#### Using the batch_cmd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMultiCommandExecuteResponseWrapper>, Integer, Hash)> batch_cmd_with_http_info(body, opts)

```ruby
begin
  # Batch executes a RTR read-only command across the hosts mapped to the given batch ID.
  data, status_code, headers = api_instance.batch_cmd_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMultiCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_cmd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchExecuteCommandRequest**](DomainBatchExecuteCommandRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;ls&#x60; - &#x60;mount&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;reg query&#x60;  **&#x60;base_command&#x60;** read-only command type we are going to execute, for example: &#x60;ls&#x60; or &#x60;cd&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;cd C:\\some_directory&#x60; **&#x60;optional_hosts&#x60;** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |
| **host_timeout_duration** | **String** | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is &lt; 5 minutes. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;.  | [optional][default to &#39;tiny bit less than overall request timeout&#39;] |

### Return type

[**DomainMultiCommandExecuteResponseWrapper**](DomainMultiCommandExecuteResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_get_cmd

> <DomainBatchGetCommandResponse> batch_get_cmd(body, opts)

Batch executes `get` command across hosts to retrieve files. After this call is made `GET /real-time-response/combined/batch-get-command/v1` is used to query for the results.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainBatchGetCommandRequest.new({batch_id: 'batch_id_example', file_path: 'file_path_example', optional_hosts: ['optional_hosts_example']}) # DomainBatchGetCommandRequest | **`batch_id`** Batch ID to execute the command on.  Received from `/real-time-response/combined/batch-init-session/v1`. **`file_path`** Full path to the file that is to be retrieved from each host in the batch. **`optional_hosts`** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example', # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
  host_timeout_duration: 'host_timeout_duration_example' # String | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is < 5 minutes. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. 
}

begin
  # Batch executes `get` command across hosts to retrieve files. After this call is made `GET /real-time-response/combined/batch-get-command/v1` is used to query for the results.
  result = api_instance.batch_get_cmd(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_get_cmd: #{e}"
end
```

#### Using the batch_get_cmd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainBatchGetCommandResponse>, Integer, Hash)> batch_get_cmd_with_http_info(body, opts)

```ruby
begin
  # Batch executes `get` command across hosts to retrieve files. After this call is made `GET /real-time-response/combined/batch-get-command/v1` is used to query for the results.
  data, status_code, headers = api_instance.batch_get_cmd_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainBatchGetCommandResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_get_cmd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchGetCommandRequest**](DomainBatchGetCommandRequest.md) | **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;file_path&#x60;** Full path to the file that is to be retrieved from each host in the batch. **&#x60;optional_hosts&#x60;** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |
| **host_timeout_duration** | **String** | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is &lt; 5 minutes. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;.  | [optional][default to &#39;tiny bit less than overall request timeout&#39;] |

### Return type

[**DomainBatchGetCommandResponse**](DomainBatchGetCommandResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_get_cmd_status

> <DomainBatchGetCmdStatusResponse> batch_get_cmd_status(batch_get_cmd_req_id, opts)

Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.

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

api_instance = Falcon::RealTimeResponse.new
batch_get_cmd_req_id = 'batch_get_cmd_req_id_example' # String | Batch Get Command Request ID received from `/real-time-response/combined/get-command/v1`
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example' # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
}

begin
  # Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.
  result = api_instance.batch_get_cmd_status(batch_get_cmd_req_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_get_cmd_status: #{e}"
end
```

#### Using the batch_get_cmd_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainBatchGetCmdStatusResponse>, Integer, Hash)> batch_get_cmd_status_with_http_info(batch_get_cmd_req_id, opts)

```ruby
begin
  # Retrieves the status of the specified batch get command.  Will return successful files when they are finished processing.
  data, status_code, headers = api_instance.batch_get_cmd_status_with_http_info(batch_get_cmd_req_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainBatchGetCmdStatusResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_get_cmd_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_get_cmd_req_id** | **String** | Batch Get Command Request ID received from &#x60;/real-time-response/combined/get-command/v1&#x60; |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |

### Return type

[**DomainBatchGetCmdStatusResponse**](DomainBatchGetCmdStatusResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## batch_init_sessions

> <DomainBatchInitSessionResponse> batch_init_sessions(body, opts)

Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainBatchInitSessionRequest.new({existing_batch_id: 'existing_batch_id_example', host_ids: ['host_ids_example'], queue_offline: false}) # DomainBatchInitSessionRequest | **`host_ids`** List of host agent ID's to initialize a RTR session on. A maximum of 10000 hosts can be in a single batch session. **`existing_batch_id`** Optional batch ID. Use an existing batch ID if you want to initialize new hosts and add them to the existing batch **`queue_offline`** If we should queue this session if the host is offline.  Any commands run against an offline-queued session will be queued up and executed when the host comes online.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example', # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
  host_timeout_duration: 'host_timeout_duration_example' # String | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is < 5 minutes. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. 
}

begin
  # Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.
  result = api_instance.batch_init_sessions(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_init_sessions: #{e}"
end
```

#### Using the batch_init_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainBatchInitSessionResponse>, Integer, Hash)> batch_init_sessions_with_http_info(body, opts)

```ruby
begin
  # Batch initialize a RTR session on multiple hosts.  Before any RTR commands can be used, an active session is needed on the host.
  data, status_code, headers = api_instance.batch_init_sessions_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainBatchInitSessionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_init_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchInitSessionRequest**](DomainBatchInitSessionRequest.md) | **&#x60;host_ids&#x60;** List of host agent ID&#39;s to initialize a RTR session on. A maximum of 10000 hosts can be in a single batch session. **&#x60;existing_batch_id&#x60;** Optional batch ID. Use an existing batch ID if you want to initialize new hosts and add them to the existing batch **&#x60;queue_offline&#x60;** If we should queue this session if the host is offline.  Any commands run against an offline-queued session will be queued up and executed when the host comes online. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |
| **host_timeout_duration** | **String** | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is &lt; 5 minutes. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;.  | [optional][default to &#39;tiny bit less than overall request timeout&#39;] |

### Return type

[**DomainBatchInitSessionResponse**](DomainBatchInitSessionResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## batch_refresh_sessions

> <DomainBatchRefreshSessionResponse> batch_refresh_sessions(body, opts)

Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainBatchRefreshSessionRequest.new({batch_id: 'batch_id_example', hosts_to_remove: ['hosts_to_remove_example']}) # DomainBatchRefreshSessionRequest | **`batch_id`** Batch ID to execute the command on.  Received from `/real-time-response/combined/batch-init-session/v1`. **`hosts_to_remove`** Hosts to remove from the batch session.  Heartbeats will no longer happen on these hosts and the sessions will expire.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example' # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
}

begin
  # Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.
  result = api_instance.batch_refresh_sessions(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_refresh_sessions: #{e}"
end
```

#### Using the batch_refresh_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainBatchRefreshSessionResponse>, Integer, Hash)> batch_refresh_sessions_with_http_info(body, opts)

```ruby
begin
  # Batch refresh a RTR session on multiple hosts. RTR sessions will expire after 10 minutes unless refreshed.
  data, status_code, headers = api_instance.batch_refresh_sessions_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainBatchRefreshSessionResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->batch_refresh_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchRefreshSessionRequest**](DomainBatchRefreshSessionRequest.md) | **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;hosts_to_remove&#x60;** Hosts to remove from the batch session.  Heartbeats will no longer happen on these hosts and the sessions will expire. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |

### Return type

[**DomainBatchRefreshSessionResponse**](DomainBatchRefreshSessionResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_aggregate_sessions

> <MsaAggregatesResponse> r_tr_aggregate_sessions(body)

Get aggregates on session data.

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

api_instance = Falcon::RealTimeResponse.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | Supported aggregations:  - `term` - `date_range`  Supported aggregation members:  **`date_ranges`** If peforming a date range query specify the **`from`** and **`to`** date ranges.  These can be in common date formats like `2019-07-18` or `now` **`field`** Term you want to aggregate on.  If doing a `date_range` query, this is the date field you want to apply the date ranges to **`filter`** Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). **`name`** Name of the aggregation **`size`** Size limit to apply to the queries.

begin
  # Get aggregates on session data.
  result = api_instance.r_tr_aggregate_sessions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_aggregate_sessions: #{e}"
end
```

#### Using the r_tr_aggregate_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> r_tr_aggregate_sessions_with_http_info(body)

```ruby
begin
  # Get aggregates on session data.
  data, status_code, headers = api_instance.r_tr_aggregate_sessions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_aggregate_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) | Supported aggregations:  - &#x60;term&#x60; - &#x60;date_range&#x60;  Supported aggregation members:  **&#x60;date_ranges&#x60;** If peforming a date range query specify the **&#x60;from&#x60;** and **&#x60;to&#x60;** date ranges.  These can be in common date formats like &#x60;2019-07-18&#x60; or &#x60;now&#x60; **&#x60;field&#x60;** Term you want to aggregate on.  If doing a &#x60;date_range&#x60; query, this is the date field you want to apply the date ranges to **&#x60;filter&#x60;** Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). **&#x60;name&#x60;** Name of the aggregation **&#x60;size&#x60;** Size limit to apply to the queries. |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_check_active_responder_command_status

> <DomainStatusResponseWrapper> r_tr_check_active_responder_command_status(cloud_request_id, sequence_id)

Get status of an executed active-responder command on a single host.

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

api_instance = Falcon::RealTimeResponse.new
cloud_request_id = 'cloud_request_id_example' # String | Cloud Request ID of the executed command to query
sequence_id = 56 # Integer | Sequence ID that we want to retrieve. Command responses are chunked across sequences

begin
  # Get status of an executed active-responder command on a single host.
  result = api_instance.r_tr_check_active_responder_command_status(cloud_request_id, sequence_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_check_active_responder_command_status: #{e}"
end
```

#### Using the r_tr_check_active_responder_command_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainStatusResponseWrapper>, Integer, Hash)> r_tr_check_active_responder_command_status_with_http_info(cloud_request_id, sequence_id)

```ruby
begin
  # Get status of an executed active-responder command on a single host.
  data, status_code, headers = api_instance.r_tr_check_active_responder_command_status_with_http_info(cloud_request_id, sequence_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainStatusResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_check_active_responder_command_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_request_id** | **String** | Cloud Request ID of the executed command to query |  |
| **sequence_id** | **Integer** | Sequence ID that we want to retrieve. Command responses are chunked across sequences | [default to 0] |

### Return type

[**DomainStatusResponseWrapper**](DomainStatusResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_check_command_status

> <DomainStatusResponseWrapper> r_tr_check_command_status(cloud_request_id, sequence_id)

Get status of an executed command on a single host.

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

api_instance = Falcon::RealTimeResponse.new
cloud_request_id = 'cloud_request_id_example' # String | Cloud Request ID of the executed command to query
sequence_id = 56 # Integer | Sequence ID that we want to retrieve. Command responses are chunked across sequences

begin
  # Get status of an executed command on a single host.
  result = api_instance.r_tr_check_command_status(cloud_request_id, sequence_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_check_command_status: #{e}"
end
```

#### Using the r_tr_check_command_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainStatusResponseWrapper>, Integer, Hash)> r_tr_check_command_status_with_http_info(cloud_request_id, sequence_id)

```ruby
begin
  # Get status of an executed command on a single host.
  data, status_code, headers = api_instance.r_tr_check_command_status_with_http_info(cloud_request_id, sequence_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainStatusResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_check_command_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_request_id** | **String** | Cloud Request ID of the executed command to query |  |
| **sequence_id** | **Integer** | Sequence ID that we want to retrieve. Command responses are chunked across sequences | [default to 0] |

### Return type

[**DomainStatusResponseWrapper**](DomainStatusResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_delete_file

> <MsaReplyMetaOnly> r_tr_delete_file(ids, session_id)

Delete a RTR session file.

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

api_instance = Falcon::RealTimeResponse.new
ids = 'ids_example' # String | RTR Session file id
session_id = 'session_id_example' # String | RTR Session id

begin
  # Delete a RTR session file.
  result = api_instance.r_tr_delete_file(ids, session_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_file: #{e}"
end
```

#### Using the r_tr_delete_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_file_with_http_info(ids, session_id)

```ruby
begin
  # Delete a RTR session file.
  data, status_code, headers = api_instance.r_tr_delete_file_with_http_info(ids, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | RTR Session file id |  |
| **session_id** | **String** | RTR Session id |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_delete_file_v2

> <MsaReplyMetaOnly> r_tr_delete_file_v2(ids, session_id)

Delete a RTR session file.

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

api_instance = Falcon::RealTimeResponse.new
ids = 'ids_example' # String | RTR Session file id
session_id = 'session_id_example' # String | RTR Session id

begin
  # Delete a RTR session file.
  result = api_instance.r_tr_delete_file_v2(ids, session_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_file_v2: #{e}"
end
```

#### Using the r_tr_delete_file_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_file_v2_with_http_info(ids, session_id)

```ruby
begin
  # Delete a RTR session file.
  data, status_code, headers = api_instance.r_tr_delete_file_v2_with_http_info(ids, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_file_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | RTR Session file id |  |
| **session_id** | **String** | RTR Session id |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_delete_queued_session

> <MsaReplyMetaOnly> r_tr_delete_queued_session(session_id, cloud_request_id)

Delete a queued session command

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

api_instance = Falcon::RealTimeResponse.new
session_id = 'session_id_example' # String | RTR Session id
cloud_request_id = 'cloud_request_id_example' # String | Cloud Request ID of the executed command to query

begin
  # Delete a queued session command
  result = api_instance.r_tr_delete_queued_session(session_id, cloud_request_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_queued_session: #{e}"
end
```

#### Using the r_tr_delete_queued_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_queued_session_with_http_info(session_id, cloud_request_id)

```ruby
begin
  # Delete a queued session command
  data, status_code, headers = api_instance.r_tr_delete_queued_session_with_http_info(session_id, cloud_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_queued_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | RTR Session id |  |
| **cloud_request_id** | **String** | Cloud Request ID of the executed command to query |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_delete_session

> <MsaReplyMetaOnly> r_tr_delete_session(session_id)

Delete a session.

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

api_instance = Falcon::RealTimeResponse.new
session_id = 'session_id_example' # String | RTR Session id

begin
  # Delete a session.
  result = api_instance.r_tr_delete_session(session_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_session: #{e}"
end
```

#### Using the r_tr_delete_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_session_with_http_info(session_id)

```ruby
begin
  # Delete a session.
  data, status_code, headers = api_instance.r_tr_delete_session_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_delete_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | RTR Session id |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_execute_active_responder_command

> <DomainCommandExecuteResponseWrapper> r_tr_execute_active_responder_command(body)

Execute an active responder command on a single host.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainCommandExecuteRequest.new({base_command: 'base_command_example', command_string: 'command_string_example', device_id: 'device_id_example', id: 37, persist: false, session_id: 'session_id_example'}) # DomainCommandExecuteRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `cp` - `encrypt` - `env` - `eventlog` - `filehash` - `get` - `getsid` - `help` - `history` - `ipconfig` - `kill` - `ls` - `map` - `memdump` - `mkdir` - `mount` - `mv` - `netstat` - `ps` - `reg query` - `reg set` - `reg delete` - `reg load` - `reg unload` - `restart` - `rm` - `runscript` - `shutdown` - `unmap` - `update history` - `update install` - `update list` - `update query` - `xmemdump` - `zip`  Required values.  The rest of the fields are unused. **`base_command`** Active-Responder command type we are going to execute, for example: `get` or `cp`.  Refer to the RTR documentation for the full list of commands. **`command_string`** Full command string for the command. For example  `get some_file.txt` **`session_id`** RTR session ID to run the command on

begin
  # Execute an active responder command on a single host.
  result = api_instance.r_tr_execute_active_responder_command(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_execute_active_responder_command: #{e}"
end
```

#### Using the r_tr_execute_active_responder_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCommandExecuteResponseWrapper>, Integer, Hash)> r_tr_execute_active_responder_command_with_http_info(body)

```ruby
begin
  # Execute an active responder command on a single host.
  data, status_code, headers = api_instance.r_tr_execute_active_responder_command_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_execute_active_responder_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCommandExecuteRequest**](DomainCommandExecuteRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  Required values.  The rest of the fields are unused. **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;session_id&#x60;** RTR session ID to run the command on |  |

### Return type

[**DomainCommandExecuteResponseWrapper**](DomainCommandExecuteResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_execute_command

> <DomainCommandExecuteResponseWrapper> r_tr_execute_command(body)

Execute a command on a single host.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainCommandExecuteRequest.new({base_command: 'base_command_example', command_string: 'command_string_example', device_id: 'device_id_example', id: 37, persist: false, session_id: 'session_id_example'}) # DomainCommandExecuteRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `env` - `eventlog` - `filehash` - `getsid` - `help` - `history` - `ipconfig` - `ls` - `mount` - `netstat` - `ps` - `reg query`  Required values.  The rest of the fields are unused. **`base_command`** read-only command type we are going to execute, for example: `ls` or `cd`.  Refer to the RTR documentation for the full list of commands. **`command_string`** Full command string for the command. For example  `cd C:\\some_directory` **`session_id`** RTR session ID to run the command on

begin
  # Execute a command on a single host.
  result = api_instance.r_tr_execute_command(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_execute_command: #{e}"
end
```

#### Using the r_tr_execute_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCommandExecuteResponseWrapper>, Integer, Hash)> r_tr_execute_command_with_http_info(body)

```ruby
begin
  # Execute a command on a single host.
  data, status_code, headers = api_instance.r_tr_execute_command_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_execute_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCommandExecuteRequest**](DomainCommandExecuteRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;ls&#x60; - &#x60;mount&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;reg query&#x60;  Required values.  The rest of the fields are unused. **&#x60;base_command&#x60;** read-only command type we are going to execute, for example: &#x60;ls&#x60; or &#x60;cd&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;cd C:\\some_directory&#x60; **&#x60;session_id&#x60;** RTR session ID to run the command on |  |

### Return type

[**DomainCommandExecuteResponseWrapper**](DomainCommandExecuteResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_get_extracted_file_contents

> File r_tr_get_extracted_file_contents(session_id, sha256, opts)

Get RTR extracted file contents for specified session and sha256.

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

api_instance = Falcon::RealTimeResponse.new
session_id = 'session_id_example' # String | RTR Session id
sha256 = 'sha256_example' # String | Extracted SHA256 (e.g. 'efa256a96af3b556cd3fc9d8b1cf587d72807d7805ced441e8149fc279db422b')
opts = {
  filename: 'filename_example' # String | Filename to use for the archive name and the file within the archive.
}

begin
  # Get RTR extracted file contents for specified session and sha256.
  result = api_instance.r_tr_get_extracted_file_contents(session_id, sha256, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_get_extracted_file_contents: #{e}"
end
```

#### Using the r_tr_get_extracted_file_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> r_tr_get_extracted_file_contents_with_http_info(session_id, sha256, opts)

```ruby
begin
  # Get RTR extracted file contents for specified session and sha256.
  data, status_code, headers = api_instance.r_tr_get_extracted_file_contents_with_http_info(session_id, sha256, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_get_extracted_file_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | RTR Session id |  |
| **sha256** | **String** | Extracted SHA256 (e.g. &#39;efa256a96af3b556cd3fc9d8b1cf587d72807d7805ced441e8149fc279db422b&#39;) |  |
| **filename** | **String** | Filename to use for the archive name and the file within the archive. | [optional] |

### Return type

**File**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/x-7z-compressed, application/json


## r_tr_init_session

> <DomainInitResponseWrapper> r_tr_init_session(body, opts)

Initialize a new session with the RTR cloud.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainInitRequest.new({device_id: 'device_id_example', origin: 'origin_example', queue_offline: false}) # DomainInitRequest | **`device_id`** The host agent ID to initialize the RTR session on.  RTR will retrieve an existing session for the calling user on this host **`queue_offline`** If we should queue this session if the host is offline.  Any commands run against an offline-queued session will be queued up and executed when the host comes online.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example' # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
}

begin
  # Initialize a new session with the RTR cloud.
  result = api_instance.r_tr_init_session(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_init_session: #{e}"
end
```

#### Using the r_tr_init_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainInitResponseWrapper>, Integer, Hash)> r_tr_init_session_with_http_info(body, opts)

```ruby
begin
  # Initialize a new session with the RTR cloud.
  data, status_code, headers = api_instance.r_tr_init_session_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainInitResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_init_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainInitRequest**](DomainInitRequest.md) | **&#x60;device_id&#x60;** The host agent ID to initialize the RTR session on.  RTR will retrieve an existing session for the calling user on this host **&#x60;queue_offline&#x60;** If we should queue this session if the host is offline.  Any commands run against an offline-queued session will be queued up and executed when the host comes online. |  |
| **timeout** | **Integer** | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes. | [optional][default to 30] |
| **timeout_duration** | **String** | Timeout duration for how long to wait for the request in duration syntax. Example, &#x60;10s&#x60;. Valid units: &#x60;ns, us, ms, s, m, h&#x60;. Maximum is 5 minutes. | [optional][default to &#39;30s&#39;] |

### Return type

[**DomainInitResponseWrapper**](DomainInitResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_list_all_sessions

> <DomainListSessionsResponseMsa> r_tr_list_all_sessions(opts)

Get a list of session_ids.

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

api_instance = Falcon::RealTimeResponse.new
opts = {
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example', # String | Sort by spec. Ex: 'date_created|asc'.
  filter: 'filter_example' # String | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). “user_id” can accept a special value ‘@me’ which will restrict results to records with current user’s ID.
}

begin
  # Get a list of session_ids.
  result = api_instance.r_tr_list_all_sessions(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_all_sessions: #{e}"
end
```

#### Using the r_tr_list_all_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainListSessionsResponseMsa>, Integer, Hash)> r_tr_list_all_sessions_with_http_info(opts)

```ruby
begin
  # Get a list of session_ids.
  data, status_code, headers = api_instance.r_tr_list_all_sessions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainListSessionsResponseMsa>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_all_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Sort by spec. Ex: &#39;date_created|asc&#39;. | [optional] |
| **filter** | **String** | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). “user_id” can accept a special value ‘@me’ which will restrict results to records with current user’s ID. | [optional] |

### Return type

[**DomainListSessionsResponseMsa**](DomainListSessionsResponseMsa.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_files

> <DomainListFilesResponseWrapper> r_tr_list_files(session_id)

Get a list of files for the specified RTR session.

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

api_instance = Falcon::RealTimeResponse.new
session_id = 'session_id_example' # String | RTR Session id

begin
  # Get a list of files for the specified RTR session.
  result = api_instance.r_tr_list_files(session_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_files: #{e}"
end
```

#### Using the r_tr_list_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainListFilesResponseWrapper>, Integer, Hash)> r_tr_list_files_with_http_info(session_id)

```ruby
begin
  # Get a list of files for the specified RTR session.
  data, status_code, headers = api_instance.r_tr_list_files_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainListFilesResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | RTR Session id |  |

### Return type

[**DomainListFilesResponseWrapper**](DomainListFilesResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_files_v2

> <DomainListFilesV2ResponseWrapper> r_tr_list_files_v2(session_id)

Get a list of files for the specified RTR session.

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

api_instance = Falcon::RealTimeResponse.new
session_id = 'session_id_example' # String | RTR Session id

begin
  # Get a list of files for the specified RTR session.
  result = api_instance.r_tr_list_files_v2(session_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_files_v2: #{e}"
end
```

#### Using the r_tr_list_files_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainListFilesV2ResponseWrapper>, Integer, Hash)> r_tr_list_files_v2_with_http_info(session_id)

```ruby
begin
  # Get a list of files for the specified RTR session.
  data, status_code, headers = api_instance.r_tr_list_files_v2_with_http_info(session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainListFilesV2ResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_files_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | RTR Session id |  |

### Return type

[**DomainListFilesV2ResponseWrapper**](DomainListFilesV2ResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_queued_sessions

> <DomainQueuedSessionResponseWrapper> r_tr_list_queued_sessions(body)

Get queued session metadata by session ID.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | **`ids`** List of RTR sessions to retrieve.  RTR will only return the sessions that were created by the calling user

begin
  # Get queued session metadata by session ID.
  result = api_instance.r_tr_list_queued_sessions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_queued_sessions: #{e}"
end
```

#### Using the r_tr_list_queued_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainQueuedSessionResponseWrapper>, Integer, Hash)> r_tr_list_queued_sessions_with_http_info(body)

```ruby
begin
  # Get queued session metadata by session ID.
  data, status_code, headers = api_instance.r_tr_list_queued_sessions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainQueuedSessionResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_queued_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) | **&#x60;ids&#x60;** List of RTR sessions to retrieve.  RTR will only return the sessions that were created by the calling user |  |

### Return type

[**DomainQueuedSessionResponseWrapper**](DomainQueuedSessionResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_list_sessions

> <DomainSessionResponseWrapper> r_tr_list_sessions(body)

Get session metadata by session id.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | **`ids`** List of RTR sessions to retrieve.  RTR will only return the sessions that were created by the calling user

begin
  # Get session metadata by session id.
  result = api_instance.r_tr_list_sessions(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_sessions: #{e}"
end
```

#### Using the r_tr_list_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainSessionResponseWrapper>, Integer, Hash)> r_tr_list_sessions_with_http_info(body)

```ruby
begin
  # Get session metadata by session id.
  data, status_code, headers = api_instance.r_tr_list_sessions_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainSessionResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_list_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) | **&#x60;ids&#x60;** List of RTR sessions to retrieve.  RTR will only return the sessions that were created by the calling user |  |

### Return type

[**DomainSessionResponseWrapper**](DomainSessionResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_pulse_session

> <DomainInitResponseWrapper> r_tr_pulse_session(body)

Refresh a session timeout on a single host.

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

api_instance = Falcon::RealTimeResponse.new
body = Falcon::DomainInitRequest.new({device_id: 'device_id_example', origin: 'origin_example', queue_offline: false}) # DomainInitRequest | **`device_id`** The host agent ID to refresh the RTR session on.  RTR will retrieve an existing session for the calling user on this host

begin
  # Refresh a session timeout on a single host.
  result = api_instance.r_tr_pulse_session(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_pulse_session: #{e}"
end
```

#### Using the r_tr_pulse_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainInitResponseWrapper>, Integer, Hash)> r_tr_pulse_session_with_http_info(body)

```ruby
begin
  # Refresh a session timeout on a single host.
  data, status_code, headers = api_instance.r_tr_pulse_session_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainInitResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponse->r_tr_pulse_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainInitRequest**](DomainInitRequest.md) | **&#x60;device_id&#x60;** The host agent ID to refresh the RTR session on.  RTR will retrieve an existing session for the calling user on this host |  |

### Return type

[**DomainInitResponseWrapper**](DomainInitResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

