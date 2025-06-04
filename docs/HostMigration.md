# Falcon::HostMigration

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_migration_v1**](HostMigration.md#create_migration_v1) | **POST** /host-migration/entities/migrations/v1 | Create a device migration job. |
| [**get_host_migration_ids_v1**](HostMigration.md#get_host_migration_ids_v1) | **GET** /host-migration/queries/host-migrations/v1 | Query host migration IDs. |
| [**get_host_migrations_v1**](HostMigration.md#get_host_migrations_v1) | **POST** /host-migration/entities/host-migrations/GET/v1 | Get host migration details. |
| [**get_migration_destinations_v1**](HostMigration.md#get_migration_destinations_v1) | **POST** /host-migration/entities/migration-destinations/GET/v1 | Get destinations for a migration. |
| [**get_migration_ids_v1**](HostMigration.md#get_migration_ids_v1) | **GET** /host-migration/queries/migrations/v1 | Query migration jobs. |
| [**get_migrations_v1**](HostMigration.md#get_migrations_v1) | **GET** /host-migration/entities/migrations/v1 | Get migration job details. |
| [**host_migration_aggregates_v1**](HostMigration.md#host_migration_aggregates_v1) | **POST** /host-migration/aggregates/host-migrations/v1 | Get host migration aggregates as specified via json in request body. |
| [**host_migrations_actions_v1**](HostMigration.md#host_migrations_actions_v1) | **POST** /host-migration/entities/host-migrations-actions/v1 | Perform an action on host migrations. |
| [**migration_aggregates_v1**](HostMigration.md#migration_aggregates_v1) | **POST** /host-migration/aggregates/migrations/v1 | Get migration aggregates as specified via json in request body. |
| [**migrations_actions_v1**](HostMigration.md#migrations_actions_v1) | **POST** /host-migration/entities/migrations-actions/v1 | Perform an action on a migration job. |


## create_migration_v1

> <ApiCreateMigrationResponseV1> create_migration_v1(body)

Create a device migration job.

`device_ids` and `filter` are mutually exclusive. Filter takes precedence.

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

api_instance = Falcon::HostMigration.new
body = Falcon::ApiCreateMigrationRequestV1.new({device_ids: ['device_ids_example'], filter: 'filter_example', name: 'name_example', target_cid: 'target_cid_example'}) # ApiCreateMigrationRequestV1 | 

begin
  # Create a device migration job.
  result = api_instance.create_migration_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->create_migration_v1: #{e}"
end
```

#### Using the create_migration_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiCreateMigrationResponseV1>, Integer, Hash)> create_migration_v1_with_http_info(body)

```ruby
begin
  # Create a device migration job.
  data, status_code, headers = api_instance.create_migration_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiCreateMigrationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->create_migration_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiCreateMigrationRequestV1**](ApiCreateMigrationRequestV1.md) |  |  |

### Return type

[**ApiCreateMigrationResponseV1**](ApiCreateMigrationResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_host_migration_ids_v1

> <MsaspecQueryResponse> get_host_migration_ids_v1(id, opts)

Query host migration IDs.

Query host migration IDs.

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

api_instance = Falcon::HostMigration.new
id = 'id_example' # String | The migration job to query
opts = {
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-10000]
  sort: 'target_cid|asc', # String | The property to sort by.
  filter: 'filter_example' # String | The filter expression that should be used to limit the results. Valid fields: migration_id, id, created_time, hostgroups, static_host_groups, hostname, status, groups, target_cid, source_cid, host_migration_id
}

begin
  # Query host migration IDs.
  result = api_instance.get_host_migration_ids_v1(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_host_migration_ids_v1: #{e}"
end
```

#### Using the get_host_migration_ids_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_host_migration_ids_v1_with_http_info(id, opts)

```ruby
begin
  # Query host migration IDs.
  data, status_code, headers = api_instance.get_host_migration_ids_v1_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_host_migration_ids_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The migration job to query |  |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-10000] | [optional] |
| **sort** | **String** | The property to sort by. | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results. Valid fields: migration_id, id, created_time, hostgroups, static_host_groups, hostname, status, groups, target_cid, source_cid, host_migration_id | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_host_migrations_v1

> <ApiGetHostMigrationResponseV1> get_host_migrations_v1(body)

Get host migration details.

# Events   The `events` field describes actions that have occurred to the host migration entity. Each object is defined by the `action` field. When `user` is present, it is the user who performed the action. `time` is when the action occurred.  ## Event actions  ### added  This action is emitted when the host migration is created.  ``` { \"action\": \"added\", \"user\": \"example@example.com\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### assigned_static_host_groups  This action is emitted when a user assigns static host groups to a host migration. `ids` are the ids of the new host groups that have been assigned.  ``` { \"action\": \"assigned_static_host_groups\", \"ids\": [\"foo\", \"bar\"],  \"user\": \"example@example.com\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### removed_static_host_groups  This action is emitted when a user removes static host groups from a host migration. `ids` are the ids of the host groups that have been removed.  ``` { \"action\": \"removed_static_host_groups\", \"ids\": [\"foo\", \"bar\"],  \"user\": \"example@example.com\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### queued  This action is emitted when the migration is started.  ``` { \"action\": \"queued\", \"user\": \"example@example.com\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### failed  This action is emitted when the host migration fails. `reason` is the reason for failure. `reason` can be `unsupported_sensor_version`, `unsupported_sensor_platform`, `host_missing`, `migration_expired`, or `internal_error`.  ``` { \"action\": \"failed\", \"reason\": \"unsupported_sensor_version\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### cancelled  This action is emitted when the migration has been cancelled.  ``` { \"action\": \"cancelled\", \"user\": \"example@example.com\", \"time\": \"2024-01-01T00:00:00Z\" } ```  ### completed  This action is emitted when the host has successfully migrated.  ``` { \"action\": \"completed\", \"time\": \"2024-01-01T00:00:00Z\" } ```  # Status Details  The `status_details` field is an optional field that provides some more details about the status of a failed host migration. It may be omitted or empty from a response.  ### internal_error  This status detail is provided when an internal occurs during a host migration.  ### canceled_by_user  This status detail is provided when a migration has been canceled by a user.  ### host_missing  This status detail is provided when a host migration is canceled because the source host can no longer be found.  ### migration_expired  This status detail is provided when a host migration is expired because the migration is too old.  ### migration_already_in_progress  This status detail is provided when attempting to start a host migration on a host that is already in progress in another migration.  ### source_host_unsupported_version  This status detail is provided when attempting to create or start a host migration when the sensor is on an unsupported version.  ### source_host_unsupported_platform  This status detail is provided when attempting to create or start a host migration when the sensor is an unsupported platform.

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

api_instance = Falcon::HostMigration.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get host migration details.
  result = api_instance.get_host_migrations_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_host_migrations_v1: #{e}"
end
```

#### Using the get_host_migrations_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetHostMigrationResponseV1>, Integer, Hash)> get_host_migrations_v1_with_http_info(body)

```ruby
begin
  # Get host migration details.
  data, status_code, headers = api_instance.get_host_migrations_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetHostMigrationResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_host_migrations_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiGetHostMigrationResponseV1**](ApiGetHostMigrationResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_migration_destinations_v1

> <ApiGetMigrationDestinationsResponseV1> get_migration_destinations_v1(body)

Get destinations for a migration.

`device_ids` and `filter` are mutually exclusive.

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

api_instance = Falcon::HostMigration.new
body = Falcon::ApiGetMigrationDestinationsRequestBodyV1.new({device_ids: ['device_ids_example'], filter: 'filter_example'}) # ApiGetMigrationDestinationsRequestBodyV1 | 

begin
  # Get destinations for a migration.
  result = api_instance.get_migration_destinations_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migration_destinations_v1: #{e}"
end
```

#### Using the get_migration_destinations_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetMigrationDestinationsResponseV1>, Integer, Hash)> get_migration_destinations_v1_with_http_info(body)

```ruby
begin
  # Get destinations for a migration.
  data, status_code, headers = api_instance.get_migration_destinations_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetMigrationDestinationsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migration_destinations_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ApiGetMigrationDestinationsRequestBodyV1**](ApiGetMigrationDestinationsRequestBodyV1.md) |  |  |

### Return type

[**ApiGetMigrationDestinationsResponseV1**](ApiGetMigrationDestinationsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_migration_ids_v1

> <MsaspecQueryResponse> get_migration_ids_v1(opts)

Query migration jobs.

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

api_instance = Falcon::HostMigration.new
opts = {
  offset: 56, # Integer | The offset to start retrieving records from
  limit: 56, # Integer | The maximum records to return. [1-10000]
  sort: 'status|asc', # String | The property to sort by.
  filter: 'filter_example' # String | The filter expression that should be used to limit the results. Valid fields: migration_status, created_by, created_time, name, id, migration_id, target_cid, status
}

begin
  # Query migration jobs.
  result = api_instance.get_migration_ids_v1(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migration_ids_v1: #{e}"
end
```

#### Using the get_migration_ids_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> get_migration_ids_v1_with_http_info(opts)

```ruby
begin
  # Query migration jobs.
  data, status_code, headers = api_instance.get_migration_ids_v1_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migration_ids_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset to start retrieving records from | [optional] |
| **limit** | **Integer** | The maximum records to return. [1-10000] | [optional] |
| **sort** | **String** | The property to sort by. | [optional] |
| **filter** | **String** | The filter expression that should be used to limit the results. Valid fields: migration_status, created_by, created_time, name, id, migration_id, target_cid, status | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_migrations_v1

> <ApiGetMigrationsResponseV1> get_migrations_v1(ids)

Get migration job details.

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

api_instance = Falcon::HostMigration.new
ids = ['inner_example'] # Array<String> | The migration jobs of interest.

begin
  # Get migration job details.
  result = api_instance.get_migrations_v1(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migrations_v1: #{e}"
end
```

#### Using the get_migrations_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiGetMigrationsResponseV1>, Integer, Hash)> get_migrations_v1_with_http_info(ids)

```ruby
begin
  # Get migration job details.
  data, status_code, headers = api_instance.get_migrations_v1_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiGetMigrationsResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->get_migrations_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The migration jobs of interest. |  |

### Return type

[**ApiGetMigrationsResponseV1**](ApiGetMigrationsResponseV1.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## host_migration_aggregates_v1

> <MsaAggregatesResponse> host_migration_aggregates_v1(body)

Get host migration aggregates as specified via json in request body.

Get host migration aggregates as specified via json in request body.  # Supported Types  Both types support the following FQL filter properties: `groups`, `hostgroups`, `static_host_groups`, `hostname`, `status`, `target_cid`, `source_cid`, `migration_id`, `id`, `host_migration_id`, `created_time`.  The values `groups` and `hostgroups` are aliases for `static_host_groups`.  The value `host_migration_id` is an alias for `id`  ## Terms `\"type\": \"terms\"`  Supported `field` values: `groups`, `hostgroups`, `static_host_groups`, `hostname`, `status`, `target_cid`, `source_cid`, `migration_id`, `id`, `host_migration_id`.  `sort` must be done on the same value as `field` and include a direction (`asc` or `desc`). Supports all FQL fields except for `groups`, `hostgroups`, or `static_host_groups`.  Examples sort value: `status|asc` or `created_by|desc`   ## Date Range `\"type\": \"date_range\"`  Supported `field` fields: `created_time`.  Does not support `sort`, `size`, or `from`. 

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

api_instance = Falcon::HostMigration.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get host migration aggregates as specified via json in request body.
  result = api_instance.host_migration_aggregates_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->host_migration_aggregates_v1: #{e}"
end
```

#### Using the host_migration_aggregates_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> host_migration_aggregates_v1_with_http_info(body)

```ruby
begin
  # Get host migration aggregates as specified via json in request body.
  data, status_code, headers = api_instance.host_migration_aggregates_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->host_migration_aggregates_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## host_migrations_actions_v1

> <MsaspecQueryResponse> host_migrations_actions_v1(id, action_name, body)

Perform an action on host migrations.

The available actions are `add_host_groups`, `remove_host_groups`, and `remove_hosts`.  FQL filter supports the following fields: `groups`, `hostgroups`, `static_host_groups`, `hostname`, `status`, `target_cid`, `source_cid`, `migration_id`, `id`, `host_migration_id`, `created_time`.  These actions only works if the migration has not started.  `add_host_groups` adds static host groups to the selected hosts in a migration. This action accepts the following action parameter: `{ \"name\": \"host_group\": \"value\": \"$host_group_id\" }`. Action parameters can be repeated to add multiple static host groups in a single request.  `remove_host_groups` removes static host groups from the selected hosts in a migration. This action accepts the following action parameter: `{ \"name\": \"host_group\": \"value\": \"$host_group_id\" }`. Action parameters can be repeated to remove multiple static host groups in a single request.  `remove_hosts` removes the selected hosts from a migration. This action does not accept any action parameters.

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

api_instance = Falcon::HostMigration.new
id = 'id_example' # String | The migration job to perform actions on
action_name = 'remove_hosts' # String | The action to perform
body = Falcon::MsaEntityActionRequestV3.new({filter: 'filter_example', ids: ['ids_example']}) # MsaEntityActionRequestV3 | 

begin
  # Perform an action on host migrations.
  result = api_instance.host_migrations_actions_v1(id, action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->host_migrations_actions_v1: #{e}"
end
```

#### Using the host_migrations_actions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> host_migrations_actions_v1_with_http_info(id, action_name, body)

```ruby
begin
  # Perform an action on host migrations.
  data, status_code, headers = api_instance.host_migrations_actions_v1_with_http_info(id, action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->host_migrations_actions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The migration job to perform actions on |  |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV3**](MsaEntityActionRequestV3.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## migration_aggregates_v1

> <MsaAggregatesResponse> migration_aggregates_v1(body)

Get migration aggregates as specified via json in request body.

Get migration aggregates as specified via json in request body.  # Supported Types  Both types support the following FQL filter props: `name`, `id`, `migration_id`, `target_cid`, `status`, `migration_status`, `created_by`, `created_time`.  The value `migration_status` is an alias for `status`.  The value `migration_id` is an alias for `id`.  ## Terms `\"type\": \"terms\"`  Supported `field` values: `name`, `id`, `migration_id,` `target_cid`, `status`, `migration_status`, `created_by`.  `sort` on `terms` type must be done on the same value as `field` and include a direction (`asc` or `desc`). Supports all supported FQL fields.  Examples sort value: `status|asc` or `created_by|desc`.   ## Date Range `\"type\": \"date_range\"`  Supported `field` fields: `created_time`.  Does not support `sort`, `size`, or `from`.  

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

api_instance = Falcon::HostMigration.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Get migration aggregates as specified via json in request body.
  result = api_instance.migration_aggregates_v1(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->migration_aggregates_v1: #{e}"
end
```

#### Using the migration_aggregates_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> migration_aggregates_v1_with_http_info(body)

```ruby
begin
  # Get migration aggregates as specified via json in request body.
  data, status_code, headers = api_instance.migration_aggregates_v1_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->migration_aggregates_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;MsaAggregateQueryRequest&gt;**](MsaAggregateQueryRequest.md) |  |  |

### Return type

[**MsaAggregatesResponse**](MsaAggregatesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## migrations_actions_v1

> <MsaspecQueryResponse> migrations_actions_v1(action_name, body)

Perform an action on a migration job.

The available actions are `start_migration`, `cancel_migration`, `rename_migration`, and `delete_migration`.  `start_migration` starts the selected migrations. This action only works if the migration has not started. This action does not accept any action parameters. Only one migration may be started per request.  `cancel_migration` cancels the selected migrations. This actions only works if the migration has started and not completed. This action does not accept any action parameters.  `rename_migration` renames the selected migrations. This action can be called at any time. Only 1 action parameter may be supplied. Action parameters take the form of `{\"name\": \"migration_name\": \"value\": \"$new_migration_name\"}`.  `delete_migration` deletes the selected migrations. This action only works if the migration has not started. This action does not accept any action parameters.

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

api_instance = Falcon::HostMigration.new
action_name = 'delete_migration' # String | The action to perform
body = Falcon::MsaEntityActionRequestV3.new({filter: 'filter_example', ids: ['ids_example']}) # MsaEntityActionRequestV3 | 

begin
  # Perform an action on a migration job.
  result = api_instance.migrations_actions_v1(action_name, body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->migrations_actions_v1: #{e}"
end
```

#### Using the migrations_actions_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> migrations_actions_v1_with_http_info(action_name, body)

```ruby
begin
  # Perform an action on a migration job.
  data, status_code, headers = api_instance.migrations_actions_v1_with_http_info(action_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling HostMigration->migrations_actions_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | The action to perform |  |
| **body** | [**MsaEntityActionRequestV3**](MsaEntityActionRequestV3.md) |  |  |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

