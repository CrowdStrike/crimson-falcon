# Falcon::RealTimeResponseAdmin

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_admin_cmd**](RealTimeResponseAdmin.md#batch_admin_cmd) | **POST** /real-time-response/combined/batch-admin-command/v1 | Batch executes a RTR administrator command across the hosts mapped to the given batch ID. |
| [**r_tr_check_admin_command_status**](RealTimeResponseAdmin.md#r_tr_check_admin_command_status) | **GET** /real-time-response/entities/admin-command/v1 | Get status of an executed RTR administrator command on a single host. |
| [**r_tr_create_put_files**](RealTimeResponseAdmin.md#r_tr_create_put_files) | **POST** /real-time-response/entities/put-files/v1 | Upload a new put-file to use for the RTR &#x60;put&#x60; command. |
| [**r_tr_create_scripts**](RealTimeResponseAdmin.md#r_tr_create_scripts) | **POST** /real-time-response/entities/scripts/v1 | Upload a new custom-script to use for the RTR &#x60;runscript&#x60; command. |
| [**r_tr_delete_put_files**](RealTimeResponseAdmin.md#r_tr_delete_put_files) | **DELETE** /real-time-response/entities/put-files/v1 | Delete a put-file based on the ID given.  Can only delete one file at a time. |
| [**r_tr_delete_scripts**](RealTimeResponseAdmin.md#r_tr_delete_scripts) | **DELETE** /real-time-response/entities/scripts/v1 | Delete a custom-script based on the ID given.  Can only delete one script at a time. |
| [**r_tr_execute_admin_command**](RealTimeResponseAdmin.md#r_tr_execute_admin_command) | **POST** /real-time-response/entities/admin-command/v1 | Execute a RTR administrator command on a single host. |
| [**r_tr_get_falcon_scripts**](RealTimeResponseAdmin.md#r_tr_get_falcon_scripts) | **GET** /real-time-response/entities/falcon-scripts/v1 | Get Falcon scripts with metadata and content of script |
| [**r_tr_get_put_files**](RealTimeResponseAdmin.md#r_tr_get_put_files) | **GET** /real-time-response/entities/put-files/v1 | Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command. |
| [**r_tr_get_put_files_v2**](RealTimeResponseAdmin.md#r_tr_get_put_files_v2) | **GET** /real-time-response/entities/put-files/v2 | Get put-files based on the ID&#39;s given. These are used for the RTR &#x60;put&#x60; command. |
| [**r_tr_get_scripts**](RealTimeResponseAdmin.md#r_tr_get_scripts) | **GET** /real-time-response/entities/scripts/v1 | Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command. |
| [**r_tr_get_scripts_v2**](RealTimeResponseAdmin.md#r_tr_get_scripts_v2) | **GET** /real-time-response/entities/scripts/v2 | Get custom-scripts based on the ID&#39;s given. These are used for the RTR &#x60;runscript&#x60; command. |
| [**r_tr_list_falcon_scripts**](RealTimeResponseAdmin.md#r_tr_list_falcon_scripts) | **GET** /real-time-response/queries/falcon-scripts/v1 | Get a list of Falcon script IDs available to the user to run |
| [**r_tr_list_put_files**](RealTimeResponseAdmin.md#r_tr_list_put_files) | **GET** /real-time-response/queries/put-files/v1 | Get a list of put-file ID&#39;s that are available to the user for the &#x60;put&#x60; command. |
| [**r_tr_list_scripts**](RealTimeResponseAdmin.md#r_tr_list_scripts) | **GET** /real-time-response/queries/scripts/v1 | Get a list of custom-script ID&#39;s that are available to the user for the &#x60;runscript&#x60; command. |
| [**r_tr_update_scripts**](RealTimeResponseAdmin.md#r_tr_update_scripts) | **PATCH** /real-time-response/entities/scripts/v1 | Upload a new scripts to replace an existing one. |


## batch_admin_cmd

> <DomainMultiCommandExecuteResponseWrapper> batch_admin_cmd(body, opts)

Batch executes a RTR administrator command across the hosts mapped to the given batch ID.

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

api_instance = Falcon::RealTimeResponseAdmin.new
body = Falcon::DomainBatchExecuteCommandRequest.new({base_command: 'base_command_example', batch_id: 'batch_id_example', command_string: 'command_string_example', optional_hosts: ['optional_hosts_example'], persist_all: false}) # DomainBatchExecuteCommandRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `cp` - `encrypt` - `env` - `eventlog` - `filehash` - `get` - `getsid` - `help` - `history` - `ipconfig` - `kill` - `ls` - `map` - `memdump` - `mkdir` - `mount` - `mv` - `netstat` - `ps` - `put` - `reg query` - `reg set` - `reg delete` - `reg load` - `reg unload` - `restart` - `rm` - `run` - `runscript` - `shutdown` - `unmap` - `update history` - `update install` - `update list` - `update query` - `xmemdump` - `zip`  **`base_command`** Active-Responder command type we are going to execute, for example: `get` or `cp`.  Refer to the RTR documentation for the full list of commands. **`batch_id`** Batch ID to execute the command on.  Received from `/real-time-response/combined/batch-init-session/v1`. **`command_string`** Full command string for the command. For example  `get some_file.txt` **`optional_hosts`** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command.
opts = {
  timeout: 56, # Integer | Timeout for how long to wait for the request in seconds, default timeout is 30 seconds. Maximum is 5 minutes.
  timeout_duration: 'timeout_duration_example', # String | Timeout duration for how long to wait for the request in duration syntax. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. Maximum is 5 minutes.
  host_timeout_duration: 'host_timeout_duration_example' # String | Timeout duration for how long a host has time to complete processing. Default value is a bit less than the overall timeout value. It cannot be greater than the overall request timeout. Maximum is < 5 minutes. Example, `10s`. Valid units: `ns, us, ms, s, m, h`. 
}

begin
  # Batch executes a RTR administrator command across the hosts mapped to the given batch ID.
  result = api_instance.batch_admin_cmd(body, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->batch_admin_cmd: #{e}"
end
```

#### Using the batch_admin_cmd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainMultiCommandExecuteResponseWrapper>, Integer, Hash)> batch_admin_cmd_with_http_info(body, opts)

```ruby
begin
  # Batch executes a RTR administrator command across the hosts mapped to the given batch ID.
  data, status_code, headers = api_instance.batch_admin_cmd_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainMultiCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->batch_admin_cmd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainBatchExecuteCommandRequest**](DomainBatchExecuteCommandRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;put&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;run&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;batch_id&#x60;** Batch ID to execute the command on.  Received from &#x60;/real-time-response/combined/batch-init-session/v1&#x60;. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;optional_hosts&#x60;** List of a subset of hosts we want to run the command on.  If this list is supplied, only these hosts will receive the command. |  |
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


## r_tr_check_admin_command_status

> <DomainStatusResponseWrapper> r_tr_check_admin_command_status(cloud_request_id, sequence_id)

Get status of an executed RTR administrator command on a single host.

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

api_instance = Falcon::RealTimeResponseAdmin.new
cloud_request_id = 'cloud_request_id_example' # String | Cloud Request ID of the executed command to query
sequence_id = 56 # Integer | Sequence ID that we want to retrieve. Command responses are chunked across sequences

begin
  # Get status of an executed RTR administrator command on a single host.
  result = api_instance.r_tr_check_admin_command_status(cloud_request_id, sequence_id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_check_admin_command_status: #{e}"
end
```

#### Using the r_tr_check_admin_command_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainStatusResponseWrapper>, Integer, Hash)> r_tr_check_admin_command_status_with_http_info(cloud_request_id, sequence_id)

```ruby
begin
  # Get status of an executed RTR administrator command on a single host.
  data, status_code, headers = api_instance.r_tr_check_admin_command_status_with_http_info(cloud_request_id, sequence_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainStatusResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_check_admin_command_status_with_http_info: #{e}"
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


## r_tr_create_put_files

> <MsaReplyMetaOnly> r_tr_create_put_files(file, description, opts)

Upload a new put-file to use for the RTR `put` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
file = File.new('/path/to/some/file') # File | put-file to upload
description = 'description_example' # String | File description
opts = {
  name: 'name_example', # String | File name (if different than actual file name)
  comments_for_audit_log: 'comments_for_audit_log_example' # String | The audit log comment
}

begin
  # Upload a new put-file to use for the RTR `put` command.
  result = api_instance.r_tr_create_put_files(file, description, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_create_put_files: #{e}"
end
```

#### Using the r_tr_create_put_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_create_put_files_with_http_info(file, description, opts)

```ruby
begin
  # Upload a new put-file to use for the RTR `put` command.
  data, status_code, headers = api_instance.r_tr_create_put_files_with_http_info(file, description, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_create_put_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | put-file to upload |  |
| **description** | **String** | File description |  |
| **name** | **String** | File name (if different than actual file name) | [optional] |
| **comments_for_audit_log** | **String** | The audit log comment | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## r_tr_create_scripts

> <MsaReplyMetaOnly> r_tr_create_scripts(description, permission_type, opts)

Upload a new custom-script to use for the RTR `runscript` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
description = 'description_example' # String | File description
permission_type = 'permission_type_example' # String | Permission for the custom-script. Valid permission values:   - `private`, usable by only the user who uploaded it   - `group`, usable by all RTR Admins   - `public`, usable by all active-responders and RTR admins
opts = {
  file: File.new('/path/to/some/file'), # File | custom-script file to upload.  These should be powershell scripts.
  name: 'name_example', # String | File name (if different than actual file name)
  comments_for_audit_log: 'comments_for_audit_log_example', # String | The audit log comment
  content: 'content_example', # String | The script text that you want to use to upload
  platform: ['inner_example'] # Array<String> | Platforms for the file. Currently supports: windows, mac, linux, . If no platform is provided, it will default to 'windows'
}

begin
  # Upload a new custom-script to use for the RTR `runscript` command.
  result = api_instance.r_tr_create_scripts(description, permission_type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_create_scripts: #{e}"
end
```

#### Using the r_tr_create_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_create_scripts_with_http_info(description, permission_type, opts)

```ruby
begin
  # Upload a new custom-script to use for the RTR `runscript` command.
  data, status_code, headers = api_instance.r_tr_create_scripts_with_http_info(description, permission_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_create_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | File description |  |
| **permission_type** | **String** | Permission for the custom-script. Valid permission values:   - &#x60;private&#x60;, usable by only the user who uploaded it   - &#x60;group&#x60;, usable by all RTR Admins   - &#x60;public&#x60;, usable by all active-responders and RTR admins | [default to &#39;none&#39;] |
| **file** | **File** | custom-script file to upload.  These should be powershell scripts. | [optional] |
| **name** | **String** | File name (if different than actual file name) | [optional] |
| **comments_for_audit_log** | **String** | The audit log comment | [optional] |
| **content** | **String** | The script text that you want to use to upload | [optional] |
| **platform** | [**Array&lt;String&gt;**](String.md) | Platforms for the file. Currently supports: windows, mac, linux, . If no platform is provided, it will default to &#39;windows&#39; | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## r_tr_delete_put_files

> <MsaReplyMetaOnly> r_tr_delete_put_files(ids)

Delete a put-file based on the ID given.  Can only delete one file at a time.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = 'ids_example' # String | File id

begin
  # Delete a put-file based on the ID given.  Can only delete one file at a time.
  result = api_instance.r_tr_delete_put_files(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_delete_put_files: #{e}"
end
```

#### Using the r_tr_delete_put_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_put_files_with_http_info(ids)

```ruby
begin
  # Delete a put-file based on the ID given.  Can only delete one file at a time.
  data, status_code, headers = api_instance.r_tr_delete_put_files_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_delete_put_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | File id |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_delete_scripts

> <MsaReplyMetaOnly> r_tr_delete_scripts(ids)

Delete a custom-script based on the ID given.  Can only delete one script at a time.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = 'ids_example' # String | File id

begin
  # Delete a custom-script based on the ID given.  Can only delete one script at a time.
  result = api_instance.r_tr_delete_scripts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_delete_scripts: #{e}"
end
```

#### Using the r_tr_delete_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_delete_scripts_with_http_info(ids)

```ruby
begin
  # Delete a custom-script based on the ID given.  Can only delete one script at a time.
  data, status_code, headers = api_instance.r_tr_delete_scripts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_delete_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | File id |  |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_execute_admin_command

> <DomainCommandExecuteResponseWrapper> r_tr_execute_admin_command(body)

Execute a RTR administrator command on a single host.

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

api_instance = Falcon::RealTimeResponseAdmin.new
body = Falcon::DomainCommandExecuteRequest.new({base_command: 'base_command_example', command_string: 'command_string_example', device_id: 'device_id_example', id: 37, persist: false, session_id: 'session_id_example'}) # DomainCommandExecuteRequest | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - `cat` - `cd` - `clear` - `cp` - `encrypt` - `env` - `eventlog` - `filehash` - `get` - `getsid` - `help` - `history` - `ipconfig` - `kill` - `ls` - `map` - `memdump` - `mkdir` - `mount` - `mv` - `netstat` - `ps` - `put` - `reg query` - `reg set` - `reg delete` - `reg load` - `reg unload` - `restart` - `rm` - `run` - `runscript` - `shutdown` - `unmap` - `update history` - `update install` - `update list` - `update query` - `xmemdump` - `zip`  Required values.  The rest of the fields are unused. **`base_command`** Active-Responder command type we are going to execute, for example: `get` or `cp`.  Refer to the RTR documentation for the full list of commands. **`command_string`** Full command string for the command. For example  `get some_file.txt` **`session_id`** RTR session ID to run the command on

begin
  # Execute a RTR administrator command on a single host.
  result = api_instance.r_tr_execute_admin_command(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_execute_admin_command: #{e}"
end
```

#### Using the r_tr_execute_admin_command_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainCommandExecuteResponseWrapper>, Integer, Hash)> r_tr_execute_admin_command_with_http_info(body)

```ruby
begin
  # Execute a RTR administrator command on a single host.
  data, status_code, headers = api_instance.r_tr_execute_admin_command_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainCommandExecuteResponseWrapper>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_execute_admin_command_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCommandExecuteRequest**](DomainCommandExecuteRequest.md) | Use this endpoint to run these [real time response commands](https://falcon.crowdstrike.com/documentation/page/b8c1738c/real-time-response-and-network-containment#k893b7c0): - &#x60;cat&#x60; - &#x60;cd&#x60; - &#x60;clear&#x60; - &#x60;cp&#x60; - &#x60;encrypt&#x60; - &#x60;env&#x60; - &#x60;eventlog&#x60; - &#x60;filehash&#x60; - &#x60;get&#x60; - &#x60;getsid&#x60; - &#x60;help&#x60; - &#x60;history&#x60; - &#x60;ipconfig&#x60; - &#x60;kill&#x60; - &#x60;ls&#x60; - &#x60;map&#x60; - &#x60;memdump&#x60; - &#x60;mkdir&#x60; - &#x60;mount&#x60; - &#x60;mv&#x60; - &#x60;netstat&#x60; - &#x60;ps&#x60; - &#x60;put&#x60; - &#x60;reg query&#x60; - &#x60;reg set&#x60; - &#x60;reg delete&#x60; - &#x60;reg load&#x60; - &#x60;reg unload&#x60; - &#x60;restart&#x60; - &#x60;rm&#x60; - &#x60;run&#x60; - &#x60;runscript&#x60; - &#x60;shutdown&#x60; - &#x60;unmap&#x60; - &#x60;update history&#x60; - &#x60;update install&#x60; - &#x60;update list&#x60; - &#x60;update query&#x60; - &#x60;xmemdump&#x60; - &#x60;zip&#x60;  Required values.  The rest of the fields are unused. **&#x60;base_command&#x60;** Active-Responder command type we are going to execute, for example: &#x60;get&#x60; or &#x60;cp&#x60;.  Refer to the RTR documentation for the full list of commands. **&#x60;command_string&#x60;** Full command string for the command. For example  &#x60;get some_file.txt&#x60; **&#x60;session_id&#x60;** RTR session ID to run the command on |  |

### Return type

[**DomainCommandExecuteResponseWrapper**](DomainCommandExecuteResponseWrapper.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## r_tr_get_falcon_scripts

> <EmpowerapiMsaFalconScriptResponse> r_tr_get_falcon_scripts(ids)

Get Falcon scripts with metadata and content of script

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = ['inner_example'] # Array<String> | IDs of the Falcon scripts you want to retrieve

begin
  # Get Falcon scripts with metadata and content of script
  result = api_instance.r_tr_get_falcon_scripts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_falcon_scripts: #{e}"
end
```

#### Using the r_tr_get_falcon_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaFalconScriptResponse>, Integer, Hash)> r_tr_get_falcon_scripts_with_http_info(ids)

```ruby
begin
  # Get Falcon scripts with metadata and content of script
  data, status_code, headers = api_instance.r_tr_get_falcon_scripts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaFalconScriptResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_falcon_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | IDs of the Falcon scripts you want to retrieve |  |

### Return type

[**EmpowerapiMsaFalconScriptResponse**](EmpowerapiMsaFalconScriptResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_get_put_files

> <EmpowerapiMsaPFResponseV1> r_tr_get_put_files(ids)

Get put-files based on the ID's given. These are used for the RTR `put` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = ['inner_example'] # Array<String> | File IDs

begin
  # Get put-files based on the ID's given. These are used for the RTR `put` command.
  result = api_instance.r_tr_get_put_files(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_put_files: #{e}"
end
```

#### Using the r_tr_get_put_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaPFResponseV1>, Integer, Hash)> r_tr_get_put_files_with_http_info(ids)

```ruby
begin
  # Get put-files based on the ID's given. These are used for the RTR `put` command.
  data, status_code, headers = api_instance.r_tr_get_put_files_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaPFResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_put_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | File IDs |  |

### Return type

[**EmpowerapiMsaPFResponseV1**](EmpowerapiMsaPFResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_get_put_files_v2

> <EmpowerapiMsaPFResponseV2> r_tr_get_put_files_v2(ids)

Get put-files based on the ID's given. These are used for the RTR `put` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = ['inner_example'] # Array<String> | File IDs

begin
  # Get put-files based on the ID's given. These are used for the RTR `put` command.
  result = api_instance.r_tr_get_put_files_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_put_files_v2: #{e}"
end
```

#### Using the r_tr_get_put_files_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaPFResponseV2>, Integer, Hash)> r_tr_get_put_files_v2_with_http_info(ids)

```ruby
begin
  # Get put-files based on the ID's given. These are used for the RTR `put` command.
  data, status_code, headers = api_instance.r_tr_get_put_files_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaPFResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_put_files_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | File IDs |  |

### Return type

[**EmpowerapiMsaPFResponseV2**](EmpowerapiMsaPFResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_get_scripts

> <EmpowerapiMsaPFResponseV1> r_tr_get_scripts(ids)

Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = ['inner_example'] # Array<String> | File IDs

begin
  # Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.
  result = api_instance.r_tr_get_scripts(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_scripts: #{e}"
end
```

#### Using the r_tr_get_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaPFResponseV1>, Integer, Hash)> r_tr_get_scripts_with_http_info(ids)

```ruby
begin
  # Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.
  data, status_code, headers = api_instance.r_tr_get_scripts_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaPFResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | File IDs |  |

### Return type

[**EmpowerapiMsaPFResponseV1**](EmpowerapiMsaPFResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_get_scripts_v2

> <EmpowerapiMsaPFResponseV2> r_tr_get_scripts_v2(ids)

Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
ids = ['inner_example'] # Array<String> | File IDs

begin
  # Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.
  result = api_instance.r_tr_get_scripts_v2(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_scripts_v2: #{e}"
end
```

#### Using the r_tr_get_scripts_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaPFResponseV2>, Integer, Hash)> r_tr_get_scripts_v2_with_http_info(ids)

```ruby
begin
  # Get custom-scripts based on the ID's given. These are used for the RTR `runscript` command.
  data, status_code, headers = api_instance.r_tr_get_scripts_v2_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaPFResponseV2>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_get_scripts_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | File IDs |  |

### Return type

[**EmpowerapiMsaPFResponseV2**](EmpowerapiMsaPFResponseV2.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_falcon_scripts

> <EmpowerapiMsaIDListResponse> r_tr_list_falcon_scripts(opts)

Get a list of Falcon script IDs available to the user to run

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

api_instance = Falcon::RealTimeResponseAdmin.new
opts = {
  filter: 'filter_example', # String | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 56, # Integer | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'created_timestamp' # String | Sort by spec. Ex: 'created_at|asc'.
}

begin
  # Get a list of Falcon script IDs available to the user to run
  result = api_instance.r_tr_list_falcon_scripts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_falcon_scripts: #{e}"
end
```

#### Using the r_tr_list_falcon_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmpowerapiMsaIDListResponse>, Integer, Hash)> r_tr_list_falcon_scripts_with_http_info(opts)

```ruby
begin
  # Get a list of Falcon script IDs available to the user to run
  data, status_code, headers = api_instance.r_tr_list_falcon_scripts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmpowerapiMsaIDListResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_falcon_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **Integer** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Sort by spec. Ex: &#39;created_at|asc&#39;. | [optional] |

### Return type

[**EmpowerapiMsaIDListResponse**](EmpowerapiMsaIDListResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_put_files

> <BinservapiMsaPutFileResponse> r_tr_list_put_files(opts)

Get a list of put-file ID's that are available to the user for the `put` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
opts = {
  filter: 'filter_example', # String | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example' # String | Sort by spec. Ex: 'created_at|asc'.
}

begin
  # Get a list of put-file ID's that are available to the user for the `put` command.
  result = api_instance.r_tr_list_put_files(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_put_files: #{e}"
end
```

#### Using the r_tr_list_put_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BinservapiMsaPutFileResponse>, Integer, Hash)> r_tr_list_put_files_with_http_info(opts)

```ruby
begin
  # Get a list of put-file ID's that are available to the user for the `put` command.
  data, status_code, headers = api_instance.r_tr_list_put_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BinservapiMsaPutFileResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_put_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Sort by spec. Ex: &#39;created_at|asc&#39;. | [optional] |

### Return type

[**BinservapiMsaPutFileResponse**](BinservapiMsaPutFileResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_list_scripts

> <BinservapiMsaPutFileResponse> r_tr_list_scripts(opts)

Get a list of custom-script ID's that are available to the user for the `runscript` command.

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

api_instance = Falcon::RealTimeResponseAdmin.new
opts = {
  filter: 'filter_example', # String | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  offset: 'offset_example', # String | Starting index of overall result set from which to return ids.
  limit: 56, # Integer | Number of ids to return.
  sort: 'sort_example' # String | Sort by spec. Ex: 'created_at|asc'.
}

begin
  # Get a list of custom-script ID's that are available to the user for the `runscript` command.
  result = api_instance.r_tr_list_scripts(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_scripts: #{e}"
end
```

#### Using the r_tr_list_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BinservapiMsaPutFileResponse>, Integer, Hash)> r_tr_list_scripts_with_http_info(opts)

```ruby
begin
  # Get a list of custom-script ID's that are available to the user for the `runscript` command.
  data, status_code, headers = api_instance.r_tr_list_scripts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BinservapiMsaPutFileResponse>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_list_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | Optional filter criteria in the form of an FQL query. For more information about FQL queries, see our [FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide). | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |
| **limit** | **Integer** | Number of ids to return. | [optional] |
| **sort** | **String** | Sort by spec. Ex: &#39;created_at|asc&#39;. | [optional] |

### Return type

[**BinservapiMsaPutFileResponse**](BinservapiMsaPutFileResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## r_tr_update_scripts

> <MsaReplyMetaOnly> r_tr_update_scripts(id, opts)

Upload a new scripts to replace an existing one.

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

api_instance = Falcon::RealTimeResponseAdmin.new
id = 'id_example' # String | ID to update
opts = {
  file: File.new('/path/to/some/file'), # File | custom-script file to upload.  These should be powershell scripts.
  description: 'description_example', # String | File description
  name: 'name_example', # String | File name (if different than actual file name)
  comments_for_audit_log: 'comments_for_audit_log_example', # String | The audit log comment
  permission_type: 'permission_type_example', # String | Permission for the custom-script. Valid permission values:   - `private`, usable by only the user who uploaded it   - `group`, usable by all RTR Admins   - `public`, usable by all active-responders and RTR admins
  content: 'content_example', # String | The script text that you want to use to upload
  platform: ['inner_example'] # Array<String> | Platforms for the file. Currently supports: windows, mac, linux, 
}

begin
  # Upload a new scripts to replace an existing one.
  result = api_instance.r_tr_update_scripts(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_update_scripts: #{e}"
end
```

#### Using the r_tr_update_scripts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> r_tr_update_scripts_with_http_info(id, opts)

```ruby
begin
  # Upload a new scripts to replace an existing one.
  data, status_code, headers = api_instance.r_tr_update_scripts_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling RealTimeResponseAdmin->r_tr_update_scripts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID to update |  |
| **file** | **File** | custom-script file to upload.  These should be powershell scripts. | [optional] |
| **description** | **String** | File description | [optional] |
| **name** | **String** | File name (if different than actual file name) | [optional] |
| **comments_for_audit_log** | **String** | The audit log comment | [optional] |
| **permission_type** | **String** | Permission for the custom-script. Valid permission values:   - &#x60;private&#x60;, usable by only the user who uploaded it   - &#x60;group&#x60;, usable by all RTR Admins   - &#x60;public&#x60;, usable by all active-responders and RTR admins | [optional][default to &#39;none&#39;] |
| **content** | **String** | The script text that you want to use to upload | [optional] |
| **platform** | [**Array&lt;String&gt;**](String.md) | Platforms for the file. Currently supports: windows, mac, linux,  | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

