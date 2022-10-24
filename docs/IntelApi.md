# Falcon::IntelApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_intel_actor_entities**](IntelApi.md#get_intel_actor_entities) | **GET** /intel/entities/actors/v1 | Retrieve specific actors using their actor IDs. |
| [**get_intel_indicator_entities**](IntelApi.md#get_intel_indicator_entities) | **POST** /intel/entities/indicators/GET/v1 | Retrieve specific indicators using their indicator IDs. |
| [**get_intel_report_entities**](IntelApi.md#get_intel_report_entities) | **GET** /intel/entities/reports/v1 | Retrieve specific reports using their report IDs. |
| [**get_intel_report_pdf**](IntelApi.md#get_intel_report_pdf) | **GET** /intel/entities/report-files/v1 | Return a Report PDF attachment |
| [**get_intel_rule_entities**](IntelApi.md#get_intel_rule_entities) | **GET** /intel/entities/rules/v1 | Retrieve details for rule sets for the specified ids. |
| [**get_intel_rule_file**](IntelApi.md#get_intel_rule_file) | **GET** /intel/entities/rules-files/v1 | Download earlier rule sets. |
| [**get_latest_intel_rule_file**](IntelApi.md#get_latest_intel_rule_file) | **GET** /intel/entities/rules-latest-files/v1 | Download the latest rule set. |
| [**query_intel_actor_entities**](IntelApi.md#query_intel_actor_entities) | **GET** /intel/combined/actors/v1 | Get info about actors that match provided FQL filters. |
| [**query_intel_actor_ids**](IntelApi.md#query_intel_actor_ids) | **GET** /intel/queries/actors/v1 | Get actor IDs that match provided FQL filters. |
| [**query_intel_indicator_entities**](IntelApi.md#query_intel_indicator_entities) | **GET** /intel/combined/indicators/v1 | Get info about indicators that match provided FQL filters. |
| [**query_intel_indicator_ids**](IntelApi.md#query_intel_indicator_ids) | **GET** /intel/queries/indicators/v1 | Get indicators IDs that match provided FQL filters. |
| [**query_intel_report_entities**](IntelApi.md#query_intel_report_entities) | **GET** /intel/combined/reports/v1 | Get info about reports that match provided FQL filters. |
| [**query_intel_report_ids**](IntelApi.md#query_intel_report_ids) | **GET** /intel/queries/reports/v1 | Get report IDs that match provided FQL filters. |
| [**query_intel_rule_ids**](IntelApi.md#query_intel_rule_ids) | **GET** /intel/queries/rules/v1 | Search for rule IDs that match provided filter criteria. |


## get_intel_actor_entities

> <DomainActorsResponse> get_intel_actor_entities(ids, opts)

Retrieve specific actors using their actor IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
ids = ['inner_example'] # Array<String> | The IDs of the actors you want to retrieve.
opts = {
  fields: ['inner_example'] # Array<String> | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\<collection\\>\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_.
}

begin
  # Retrieve specific actors using their actor IDs.
  result = api_instance.get_intel_actor_entities(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_actor_entities: #{e}"
end
```

#### Using the get_intel_actor_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainActorsResponse>, Integer, Hash)> get_intel_actor_entities_with_http_info(ids, opts)

```ruby
begin
  # Retrieve specific actors using their actor IDs.
  data, status_code, headers = api_instance.get_intel_actor_entities_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainActorsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_actor_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the actors you want to retrieve. |  |
| **fields** | [**Array&lt;String&gt;**](String.md) | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\&lt;collection\\&gt;\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_. | [optional] |

### Return type

[**DomainActorsResponse**](DomainActorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_indicator_entities

> <DomainPublicIndicatorsV3Response> get_intel_indicator_entities(body)

Retrieve specific indicators using their indicator IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieve specific indicators using their indicator IDs.
  result = api_instance.get_intel_indicator_entities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_indicator_entities: #{e}"
end
```

#### Using the get_intel_indicator_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainPublicIndicatorsV3Response>, Integer, Hash)> get_intel_indicator_entities_with_http_info(body)

```ruby
begin
  # Retrieve specific indicators using their indicator IDs.
  data, status_code, headers = api_instance.get_intel_indicator_entities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainPublicIndicatorsV3Response>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_indicator_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DomainPublicIndicatorsV3Response**](DomainPublicIndicatorsV3Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_intel_report_entities

> <DomainNewsResponse> get_intel_report_entities(ids, opts)

Retrieve specific reports using their report IDs.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
ids = ['inner_example'] # Array<String> | The IDs of the reports you want to retrieve.
opts = {
  fields: ['inner_example'] # Array<String> | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\<collection\\>\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_.
}

begin
  # Retrieve specific reports using their report IDs.
  result = api_instance.get_intel_report_entities(ids, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_entities: #{e}"
end
```

#### Using the get_intel_report_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNewsResponse>, Integer, Hash)> get_intel_report_entities_with_http_info(ids, opts)

```ruby
begin
  # Retrieve specific reports using their report IDs.
  data, status_code, headers = api_instance.get_intel_report_entities_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNewsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The IDs of the reports you want to retrieve. |  |
| **fields** | [**Array&lt;String&gt;**](String.md) | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\&lt;collection\\&gt;\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_. | [optional] |

### Return type

[**DomainNewsResponse**](DomainNewsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_report_pdf

> File get_intel_report_pdf(id)

Return a Report PDF attachment

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
id = 'id_example' # String | The ID of the report you want to download as a PDF.

begin
  # Return a Report PDF attachment
  result = api_instance.get_intel_report_pdf(id)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_pdf: #{e}"
end
```

#### Using the get_intel_report_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_intel_report_pdf_with_http_info(id)

```ruby
begin
  # Return a Report PDF attachment
  data, status_code, headers = api_instance.get_intel_report_pdf_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the report you want to download as a PDF. |  |

### Return type

**File**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json, application/pdf


## get_intel_rule_entities

> <DomainRulesResponse> get_intel_rule_entities(ids)

Retrieve details for rule sets for the specified ids.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
ids = ['inner_example'] # Array<String> | The ids of rules to return.

begin
  # Retrieve details for rule sets for the specified ids.
  result = api_instance.get_intel_rule_entities(ids)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_rule_entities: #{e}"
end
```

#### Using the get_intel_rule_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainRulesResponse>, Integer, Hash)> get_intel_rule_entities_with_http_info(ids)

```ruby
begin
  # Retrieve details for rule sets for the specified ids.
  data, status_code, headers = api_instance.get_intel_rule_entities_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainRulesResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_rule_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The ids of rules to return. |  |

### Return type

[**DomainRulesResponse**](DomainRulesResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_rule_file

> File get_intel_rule_file(id, opts)

Download earlier rule sets.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
id = 56 # Integer | The ID of the rule set.
opts = {
  accept: 'accept_example', # String | Choose the format you want the rule set in.
  format: 'format_example' # String | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip.
}

begin
  # Download earlier rule sets.
  result = api_instance.get_intel_rule_file(id, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_rule_file: #{e}"
end
```

#### Using the get_intel_rule_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_intel_rule_file_with_http_info(id, opts)

```ruby
begin
  # Download earlier rule sets.
  data, status_code, headers = api_instance.get_intel_rule_file_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_rule_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the rule set. |  |
| **accept** | **String** | Choose the format you want the rule set in. | [optional] |
| **format** | **String** | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip. | [optional] |

### Return type

**File**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/gzip, application/octet-stream, application/json, */*


## get_latest_intel_rule_file

> File get_latest_intel_rule_file(type, opts)

Download the latest rule set.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
type = 'type_example' # String | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness
opts = {
  accept: 'accept_example', # String | Choose the format you want the rule set in.
  format: 'format_example', # String | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip.
  if_modified_since: 'if_modified_since_example' # String | Download Only if changed since
}

begin
  # Download the latest rule set.
  result = api_instance.get_latest_intel_rule_file(type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_latest_intel_rule_file: #{e}"
end
```

#### Using the get_latest_intel_rule_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_latest_intel_rule_file_with_http_info(type, opts)

```ruby
begin
  # Download the latest rule set.
  data, status_code, headers = api_instance.get_latest_intel_rule_file_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_latest_intel_rule_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness |  |
| **accept** | **String** | Choose the format you want the rule set in. | [optional] |
| **format** | **String** | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip. | [optional] |
| **if_modified_since** | **String** | Download Only if changed since | [optional] |

### Return type

**File**

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/gzip, application/octet-stream, application/json, */*


## query_intel_actor_entities

> <DomainActorsResponse> query_intel_actor_entities(opts)

Get info about actors that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return actors from. Defaults to 0.
  limit: 56, # Integer | Set the number of actors to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url.
  q: 'q_example', # String | Perform a generic substring search across all fields.
  fields: ['inner_example'] # Array<String> | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\<collection\\>\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_.
}

begin
  # Get info about actors that match provided FQL filters.
  result = api_instance.query_intel_actor_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_actor_entities: #{e}"
end
```

#### Using the query_intel_actor_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainActorsResponse>, Integer, Hash)> query_intel_actor_entities_with_http_info(opts)

```ruby
begin
  # Get info about actors that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_actor_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainActorsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_actor_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return actors from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of actors to return. The value must be between 1 and 5000. | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: created_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |
| **fields** | [**Array&lt;String&gt;**](String.md) | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\&lt;collection\\&gt;\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_. | [optional] |

### Return type

[**DomainActorsResponse**](DomainActorsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_actor_ids

> <MsaQueryResponse> query_intel_actor_ids(opts)

Get actor IDs that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return actors IDs from. Defaults to 0.
  limit: 56, # Integer | Set the number of actor IDs to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url.
  q: 'q_example' # String | Perform a generic substring search across all fields.
}

begin
  # Get actor IDs that match provided FQL filters.
  result = api_instance.query_intel_actor_ids(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_actor_ids: #{e}"
end
```

#### Using the query_intel_actor_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_intel_actor_ids_with_http_info(opts)

```ruby
begin
  # Get actor IDs that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_actor_ids_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_actor_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return actors IDs from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of actor IDs to return. The value must be between 1 and 5000. | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: created_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_indicator_entities

> <DomainPublicIndicatorsV3Response> query_intel_indicator_entities(opts)

Get info about indicators that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return indicators from. Defaults to 0.
  limit: 56, # Integer | Set the number of indicators to return. The number must be between 1 and 10000
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: published_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  _marker, actors, deleted, domain_types, id, indicator, ip_address_types, kill_chains, labels, labels.created_on, labels.last_valid_on, labels.name, last_updated, malicious_confidence, malware_families, published_date, reports, scope, targets, threat_types, type, vulnerabilities.
  q: 'q_example', # String | Perform a generic substring search across all fields.
  include_deleted: true, # Boolean | If true, include both published and deleted indicators in the response. Defaults to false.
  include_relations: true # Boolean | If true, include related indicators in the response. Defaults to true.
}

begin
  # Get info about indicators that match provided FQL filters.
  result = api_instance.query_intel_indicator_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_indicator_entities: #{e}"
end
```

#### Using the query_intel_indicator_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainPublicIndicatorsV3Response>, Integer, Hash)> query_intel_indicator_entities_with_http_info(opts)

```ruby
begin
  # Get info about indicators that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_indicator_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainPublicIndicatorsV3Response>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_indicator_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return indicators from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of indicators to return. The number must be between 1 and 10000 | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: published_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  _marker, actors, deleted, domain_types, id, indicator, ip_address_types, kill_chains, labels, labels.created_on, labels.last_valid_on, labels.name, last_updated, malicious_confidence, malware_families, published_date, reports, scope, targets, threat_types, type, vulnerabilities. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |
| **include_deleted** | **Boolean** | If true, include both published and deleted indicators in the response. Defaults to false. | [optional] |
| **include_relations** | **Boolean** | If true, include related indicators in the response. Defaults to true. | [optional] |

### Return type

[**DomainPublicIndicatorsV3Response**](DomainPublicIndicatorsV3Response.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_indicator_ids

> <MsaQueryResponse> query_intel_indicator_ids(opts)

Get indicators IDs that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return indicator IDs from. Defaults to 0.
  limit: 56, # Integer | Set the number of indicator IDs to return. The number must be between 1 and 10000
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: published_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  _marker, actors, deleted, domain_types, id, indicator, ip_address_types, kill_chains, labels, labels.created_on, labels.last_valid_on, labels.name, last_updated, malicious_confidence, malware_families, published_date, reports, scope, targets, threat_types, type, vulnerabilities.
  q: 'q_example', # String | Perform a generic substring search across all fields.
  include_deleted: true, # Boolean | If true, include both published and deleted indicators in the response. Defaults to false.
  include_relations: true # Boolean | If true, include related indicators in the response. Defaults to true.
}

begin
  # Get indicators IDs that match provided FQL filters.
  result = api_instance.query_intel_indicator_ids(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_indicator_ids: #{e}"
end
```

#### Using the query_intel_indicator_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_intel_indicator_ids_with_http_info(opts)

```ruby
begin
  # Get indicators IDs that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_indicator_ids_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_indicator_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return indicator IDs from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of indicator IDs to return. The number must be between 1 and 10000 | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: published_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  _marker, actors, deleted, domain_types, id, indicator, ip_address_types, kill_chains, labels, labels.created_on, labels.last_valid_on, labels.name, last_updated, malicious_confidence, malware_families, published_date, reports, scope, targets, threat_types, type, vulnerabilities. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |
| **include_deleted** | **Boolean** | If true, include both published and deleted indicators in the response. Defaults to false. | [optional] |
| **include_relations** | **Boolean** | If true, include related indicators in the response. Defaults to true. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_report_entities

> <DomainNewsResponse> query_intel_report_entities(opts)

Get info about reports that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return reports from. Defaults to 0.
  limit: 56, # Integer | Set the number of reports to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order. Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url.
  q: 'q_example', # String | Perform a generic substring search across all fields.
  fields: ['inner_example'] # Array<String> | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\<collection\\>\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_.
}

begin
  # Get info about reports that match provided FQL filters.
  result = api_instance.query_intel_report_entities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_report_entities: #{e}"
end
```

#### Using the query_intel_report_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainNewsResponse>, Integer, Hash)> query_intel_report_entities_with_http_info(opts)

```ruby
begin
  # Get info about reports that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_report_entities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainNewsResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_report_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return reports from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of reports to return. The value must be between 1 and 5000. | [optional] |
| **sort** | **String** | Order fields in ascending or descending order. Ex: created_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |
| **fields** | [**Array&lt;String&gt;**](String.md) | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\&lt;collection\\&gt;\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_. | [optional] |

### Return type

[**DomainNewsResponse**](DomainNewsResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_report_ids

> <MsaQueryResponse> query_intel_report_ids(opts)

Get report IDs that match provided FQL filters.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return report IDs from. Defaults to 0.
  limit: 56, # Integer | Set the number of report IDs to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url.
  q: 'q_example' # String | Perform a generic substring search across all fields.
}

begin
  # Get report IDs that match provided FQL filters.
  result = api_instance.query_intel_report_ids(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_report_ids: #{e}"
end
```

#### Using the query_intel_report_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_intel_report_ids_with_http_info(opts)

```ruby
begin
  # Get report IDs that match provided FQL filters.
  data, status_code, headers = api_instance.query_intel_report_ids_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_report_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Set the starting row number to return report IDs from. Defaults to 0. | [optional] |
| **limit** | **Integer** | Set the number of report IDs to return. The value must be between 1 and 5000. | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: created_date|asc. | [optional] |
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actors, actors.id, actors.name, actors.slug, actors.url, created_date, description, id, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, name.raw, short_description, slug, sub_type, sub_type.id, sub_type.name, sub_type.slug, tags, tags.id, tags.slug, tags.value, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, type, type.id, type.name, type.slug, url. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_rule_ids

> <MsaQueryResponse> query_intel_rule_ids(type, opts)

Search for rule IDs that match provided filter criteria.

### Examples

```ruby
require 'time'
require 'crowdstrike-falcon'
# setup authorization
Falcon.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Falcon::IntelApi.new
type = 'type_example' # String | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness
opts = {
  offset: 56, # Integer | Set the starting row number to return reports from. Defaults to 0.
  limit: 56, # Integer | The number of rule IDs to return. Defaults to 10.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  name: ['inner_example'], # Array<String> | Search by rule title.
  description: ['inner_example'], # Array<String> | Substring match on description field.
  tags: ['inner_example'], # Array<String> | Search for rule tags.
  min_created_date: 56, # Integer | Filter results to those created on or after a certain date.
  max_created_date: 'max_created_date_example', # String | Filter results to those created on or before a certain date.
  q: 'q_example' # String | Perform a generic substring search across all fields.
}

begin
  # Search for rule IDs that match provided filter criteria.
  result = api_instance.query_intel_rule_ids(type, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_rule_ids: #{e}"
end
```

#### Using the query_intel_rule_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_intel_rule_ids_with_http_info(type, opts)

```ruby
begin
  # Search for rule IDs that match provided filter criteria.
  data, status_code, headers = api_instance.query_intel_rule_ids_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_intel_rule_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness |  |
| **offset** | **Integer** | Set the starting row number to return reports from. Defaults to 0. | [optional] |
| **limit** | **Integer** | The number of rule IDs to return. Defaults to 10. | [optional] |
| **sort** | **String** | Order fields in ascending or descending order.  Ex: created_date|asc. | [optional] |
| **name** | [**Array&lt;String&gt;**](String.md) | Search by rule title. | [optional] |
| **description** | [**Array&lt;String&gt;**](String.md) | Substring match on description field. | [optional] |
| **tags** | [**Array&lt;String&gt;**](String.md) | Search for rule tags. | [optional] |
| **min_created_date** | **Integer** | Filter results to those created on or after a certain date. | [optional] |
| **max_created_date** | **String** | Filter results to those created on or before a certain date. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

