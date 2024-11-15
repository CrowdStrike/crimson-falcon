# Falcon::MessageCenterApi

All URIs are relative to *https://api.us-2.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregate_cases**](MessageCenterApi.md#aggregate_cases) | **POST** /message-center/aggregates/cases/GET/v1 | Retrieve aggregate case values based on the matched filter |
| [**case_add_activity**](MessageCenterApi.md#case_add_activity) | **POST** /message-center/entities/case-activity/v1 | Add an activity to case. Only activities of type comment are allowed via API |
| [**case_add_attachment**](MessageCenterApi.md#case_add_attachment) | **POST** /message-center/entities/case-attachment/v1 | Upload an attachment for the case. |
| [**case_download_attachment**](MessageCenterApi.md#case_download_attachment) | **GET** /message-center/entities/case-attachment/v1 | retrieves an attachment for the case, given the attachment id |
| [**create_case**](MessageCenterApi.md#create_case) | **POST** /message-center/entities/case/v1 | create a new case |
| [**create_case_v2**](MessageCenterApi.md#create_case_v2) | **POST** /message-center/entities/case/v2 | create a new case |
| [**get_case_activity_by_ids**](MessageCenterApi.md#get_case_activity_by_ids) | **POST** /message-center/entities/case-activities/GET/v1 | Retrieve activities for given id&#39;s |
| [**get_case_entities_by_ids**](MessageCenterApi.md#get_case_entities_by_ids) | **POST** /message-center/entities/cases/GET/v1 | Retrieve message center cases |
| [**query_activity_by_case_id**](MessageCenterApi.md#query_activity_by_case_id) | **GET** /message-center/queries/case-activities/v1 | Retrieve activities id&#39;s for a case |
| [**query_cases_ids_by_filter**](MessageCenterApi.md#query_cases_ids_by_filter) | **GET** /message-center/queries/cases/v1 | Retrieve case id&#39;s that match the provided filter criteria |


## aggregate_cases

> <MsaAggregatesResponse> aggregate_cases(body)

Retrieve aggregate case values based on the matched filter

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

api_instance = Falcon::MessageCenterApi.new
body = [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [Falcon::MsaAggregateQueryRequest.new({date_ranges: [Falcon::MsaDateRangeSpec.new({from: 'from_example', to: 'to_example'})], exclude: 'exclude_example', field: 'field_example', filter: 'filter_example', from: 37, include: 'include_example', interval: 'interval_example', missing: 'missing_example', name: 'name_example', q: 'q_example', ranges: [Falcon::MsaRangeSpec.new({from: 3.56, to: 3.56})], size: 37, sort: 'sort_example', sub_aggregates: [], time_zone: 'time_zone_example', type: 'type_example'})], time_zone: 'time_zone_example', type: 'type_example'})] # Array<MsaAggregateQueryRequest> | 

begin
  # Retrieve aggregate case values based on the matched filter
  result = api_instance.aggregate_cases(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->aggregate_cases: #{e}"
end
```

#### Using the aggregate_cases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaAggregatesResponse>, Integer, Hash)> aggregate_cases_with_http_info(body)

```ruby
begin
  # Retrieve aggregate case values based on the matched filter
  data, status_code, headers = api_instance.aggregate_cases_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaAggregatesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->aggregate_cases_with_http_info: #{e}"
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


## case_add_activity

> <MsaspecResponseFields> case_add_activity(body)

Add an activity to case. Only activities of type comment are allowed via API

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

api_instance = Falcon::MessageCenterApi.new
body = Falcon::DomainActivityCreationRequest.new({body: 'body_example', case_id: 'case_id_example', type: 'type_example', user_uuid: 'user_uuid_example'}) # DomainActivityCreationRequest | 

begin
  # Add an activity to case. Only activities of type comment are allowed via API
  result = api_instance.case_add_activity(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_add_activity: #{e}"
end
```

#### Using the case_add_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecResponseFields>, Integer, Hash)> case_add_activity_with_http_info(body)

```ruby
begin
  # Add an activity to case. Only activities of type comment are allowed via API
  data, status_code, headers = api_instance.case_add_activity_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecResponseFields>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_add_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainActivityCreationRequest**](DomainActivityCreationRequest.md) |  |  |

### Return type

[**MsaspecResponseFields**](MsaspecResponseFields.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## case_add_attachment

> <ApiMessageCenterAttachmentUploadResponse> case_add_attachment(case_id, user_uuid, file)

Upload an attachment for the case.

Upload an attachment for the case. Maximum upload size allowed is *15 MB*.   Filename must start with *[a-zA-Z0-9_-]*. Allowed characters in file name are *[a-zA-Z0-9-_.\\s]*.    Maximum file name is *255* characters      Following attachment types are allowed:   - png   - bmp   - jpg   - jpeg   - gif   - pdf   - doc   - docx   - xls   - xlsx   - pptx   - txt   - csv

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

api_instance = Falcon::MessageCenterApi.new
case_id = 'case_id_example' # String | Case ID
user_uuid = 'user_uuid_example' # String | User UUID
file = File.new('/path/to/some/file') # File | File Body

begin
  # Upload an attachment for the case.
  result = api_instance.case_add_attachment(case_id, user_uuid, file)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_add_attachment: #{e}"
end
```

#### Using the case_add_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMessageCenterAttachmentUploadResponse>, Integer, Hash)> case_add_attachment_with_http_info(case_id, user_uuid, file)

```ruby
begin
  # Upload an attachment for the case.
  data, status_code, headers = api_instance.case_add_attachment_with_http_info(case_id, user_uuid, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMessageCenterAttachmentUploadResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_add_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | Case ID |  |
| **user_uuid** | **String** | User UUID |  |
| **file** | **File** | File Body |  |

### Return type

[**ApiMessageCenterAttachmentUploadResponse**](ApiMessageCenterAttachmentUploadResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## case_download_attachment

> String case_download_attachment(id)

retrieves an attachment for the case, given the attachment id

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

api_instance = Falcon::MessageCenterApi.new
id = 'id_example' # String | attachment ID

begin
  # retrieves an attachment for the case, given the attachment id
  result = api_instance.case_download_attachment(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_download_attachment: #{e}"
end
```

#### Using the case_download_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> case_download_attachment_with_http_info(id)

```ruby
begin
  # retrieves an attachment for the case, given the attachment id
  data, status_code, headers = api_instance.case_download_attachment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->case_download_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | attachment ID |  |

### Return type

**String**

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, image/png, image/bmp, image/jpeg, image/jpg, image/gif, application/zip, application/pdf, application/msword, application/vnd.openxmlformats-officedocument.wordprocessingml.document, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.openxmlformats-officedocument.presentationml.presentation, text/plain


## create_case

> <MsaReplyAffectedEntities> create_case(body)

create a new case

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

api_instance = Falcon::MessageCenterApi.new
body = Falcon::DomainCaseCreationRequest.new({body: 'body_example', detections: [Falcon::MessagesDetection.new({id: 'id_example', url: 'url_example'})], incidents: [Falcon::MessagesIncident.new({id: 'id_example', url: 'url_example'})], title: 'title_example', type: 'type_example', user_uuid: 'user_uuid_example'}) # DomainCaseCreationRequest | 

begin
  # create a new case
  result = api_instance.create_case(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->create_case: #{e}"
end
```

#### Using the create_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyAffectedEntities>, Integer, Hash)> create_case_with_http_info(body)

```ruby
begin
  # create a new case
  data, status_code, headers = api_instance.create_case_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyAffectedEntities>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->create_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCaseCreationRequest**](DomainCaseCreationRequest.md) |  |  |

### Return type

[**MsaReplyAffectedEntities**](MsaReplyAffectedEntities.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_case_v2

> <MsaReplyAffectedEntities> create_case_v2(body)

create a new case

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

api_instance = Falcon::MessageCenterApi.new
body = Falcon::DomainCaseCreationRequestV2.new({body: 'body_example', detections: [Falcon::MessagesAlert.new({id: 'id_example', product: 'product_example', url: 'url_example'})], incidents: [Falcon::MessagesIncident.new({id: 'id_example', url: 'url_example'})], malware_submission_id: 'malware_submission_id_example', recon_rule_type: 'recon_rule_type_example', title: 'title_example', type: 'type_example'}) # DomainCaseCreationRequestV2 | 

begin
  # create a new case
  result = api_instance.create_case_v2(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->create_case_v2: #{e}"
end
```

#### Using the create_case_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyAffectedEntities>, Integer, Hash)> create_case_v2_with_http_info(body)

```ruby
begin
  # create a new case
  data, status_code, headers = api_instance.create_case_v2_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyAffectedEntities>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->create_case_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DomainCaseCreationRequestV2**](DomainCaseCreationRequestV2.md) |  |  |

### Return type

[**MsaReplyAffectedEntities**](MsaReplyAffectedEntities.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_case_activity_by_ids

> <ApiMessageCenterActivityResponse> get_case_activity_by_ids(body)

Retrieve activities for given id's

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

api_instance = Falcon::MessageCenterApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve activities for given id's
  result = api_instance.get_case_activity_by_ids(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->get_case_activity_by_ids: #{e}"
end
```

#### Using the get_case_activity_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMessageCenterActivityResponse>, Integer, Hash)> get_case_activity_by_ids_with_http_info(body)

```ruby
begin
  # Retrieve activities for given id's
  data, status_code, headers = api_instance.get_case_activity_by_ids_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMessageCenterActivityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->get_case_activity_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiMessageCenterActivityResponse**](ApiMessageCenterActivityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_case_entities_by_ids

> <ApiMessageCenterCasesResponse> get_case_entities_by_ids(body)

Retrieve message center cases

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

api_instance = Falcon::MessageCenterApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve message center cases
  result = api_instance.get_case_entities_by_ids(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->get_case_entities_by_ids: #{e}"
end
```

#### Using the get_case_entities_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiMessageCenterCasesResponse>, Integer, Hash)> get_case_entities_by_ids_with_http_info(body)

```ruby
begin
  # Retrieve message center cases
  data, status_code, headers = api_instance.get_case_entities_by_ids_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiMessageCenterCasesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->get_case_entities_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**ApiMessageCenterCasesResponse**](ApiMessageCenterCasesResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_activity_by_case_id

> <MsaspecQueryResponse> query_activity_by_case_id(case_id, opts)

Retrieve activities id's for a case

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

api_instance = Falcon::MessageCenterApi.new
case_id = 'case_id_example' # String | Case ID
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'activity.created_time.asc', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   activity.created_time activity.type
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve activities id's for a case
  result = api_instance.query_activity_by_case_id(case_id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->query_activity_by_case_id: #{e}"
end
```

#### Using the query_activity_by_case_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_activity_by_case_id_with_http_info(case_id, opts)

```ruby
begin
  # Retrieve activities id's for a case
  data, status_code, headers = api_instance.query_activity_by_case_id_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->query_activity_by_case_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | Case ID |  |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   activity.created_time activity.type | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_cases_ids_by_filter

> <MsaspecQueryResponse> query_cases_ids_by_filter(opts)

Retrieve case id's that match the provided filter criteria

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

api_instance = Falcon::MessageCenterApi.new
opts = {
  limit: 56, # Integer | The maximum records to return. [1-500]
  sort: 'case.id.asc', # String | The property to sort on, followed by a dot (.), followed by the sort direction, either \"asc\" or \"desc\".
  filter: 'filter_example', # String | Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   _all activity.body case.aids case.assigner.display_name case.assigner.first_name case.assigner.last_name case.assigner.uid case.assigner.uuid case.body case.created_time case.detections.id case.hosts case.id case.incidents.id case.ip_addresses case.key case.last_modified_time case.status case.title case.type
  offset: 'offset_example' # String | Starting index of overall result set from which to return ids.
}

begin
  # Retrieve case id's that match the provided filter criteria
  result = api_instance.query_cases_ids_by_filter(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->query_cases_ids_by_filter: #{e}"
end
```

#### Using the query_cases_ids_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaspecQueryResponse>, Integer, Hash)> query_cases_ids_by_filter_with_http_info(opts)

```ruby
begin
  # Retrieve case id's that match the provided filter criteria
  data, status_code, headers = api_instance.query_cases_ids_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaspecQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling MessageCenterApi->query_cases_ids_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum records to return. [1-500] | [optional] |
| **sort** | **String** | The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;. | [optional] |
| **filter** | **String** | Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   _all activity.body case.aids case.assigner.display_name case.assigner.first_name case.assigner.last_name case.assigner.uid case.assigner.uuid case.body case.created_time case.detections.id case.hosts case.id case.incidents.id case.ip_addresses case.key case.last_modified_time case.status case.title case.type | [optional] |
| **offset** | **String** | Starting index of overall result set from which to return ids. | [optional] |

### Return type

[**MsaspecQueryResponse**](MsaspecQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

