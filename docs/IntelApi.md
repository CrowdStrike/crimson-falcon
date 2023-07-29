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
| [**get_mitre_report**](IntelApi.md#get_mitre_report) | **GET** /intel/entities/mitre-reports/v1 | Export Mitre ATT&amp;CK information for a given actor. |
| [**get_vulnerabilities**](IntelApi.md#get_vulnerabilities) | **POST** /intel/entities/vulnerabilities/GET/v1 | Get vulnerabilities |
| [**post_mitre_attacks**](IntelApi.md#post_mitre_attacks) | **POST** /intel/entities/mitre/v1 | Retrieves report and observable IDs associated with the given actor and attacks |
| [**query_intel_actor_entities**](IntelApi.md#query_intel_actor_entities) | **GET** /intel/combined/actors/v1 | Get info about actors that match provided FQL filters. |
| [**query_intel_actor_ids**](IntelApi.md#query_intel_actor_ids) | **GET** /intel/queries/actors/v1 | Get actor IDs that match provided FQL filters. |
| [**query_intel_indicator_entities**](IntelApi.md#query_intel_indicator_entities) | **GET** /intel/combined/indicators/v1 | Get info about indicators that match provided FQL filters. |
| [**query_intel_indicator_ids**](IntelApi.md#query_intel_indicator_ids) | **GET** /intel/queries/indicators/v1 | Get indicators IDs that match provided FQL filters. |
| [**query_intel_report_entities**](IntelApi.md#query_intel_report_entities) | **GET** /intel/combined/reports/v1 | Get info about reports that match provided FQL filters. |
| [**query_intel_report_ids**](IntelApi.md#query_intel_report_ids) | **GET** /intel/queries/reports/v1 | Get report IDs that match provided FQL filters. |
| [**query_intel_rule_ids**](IntelApi.md#query_intel_rule_ids) | **GET** /intel/queries/rules/v1 | Search for rule IDs that match provided filter criteria. |
| [**query_mitre_attacks**](IntelApi.md#query_mitre_attacks) | **GET** /intel/queries/mitre/v1 | Gets MITRE tactics and techniques for the given actor |
| [**query_vulnerabilities**](IntelApi.md#query_vulnerabilities) | **GET** /intel/queries/vulnerabilities/v1 | Get vulnerabilities IDs |


## get_intel_actor_entities

> <DomainActorsResponse> get_intel_actor_entities(ids, opts)

Retrieve specific actors using their actor IDs.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_indicator_entities

> <DomainPublicIndicatorsV3Response> get_intel_indicator_entities(body)

Retrieve specific indicators using their indicator IDs.

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

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_intel_report_entities

> <DomainNewsResponse> get_intel_report_entities(ids, opts)

Retrieve specific reports using their report IDs.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_report_pdf

> get_intel_report_pdf(opts)

Return a Report PDF attachment

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

api_instance = Falcon::IntelApi.new
opts = {
  id: 'id_example', # String | The ID of the report you want to download as a PDF.
  ids: 'ids_example' # String | The ID of the report you want to download as a PDF. This parameter is used only if no id parameter given.
}

begin
  # Return a Report PDF attachment
  api_instance.get_intel_report_pdf(opts)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_pdf: #{e}"
end
```

#### Using the get_intel_report_pdf_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_intel_report_pdf_with_http_info(opts)

```ruby
begin
  # Return a Report PDF attachment
  data, status_code, headers = api_instance.get_intel_report_pdf_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_report_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the report you want to download as a PDF. | [optional] |
| **ids** | **String** | The ID of the report you want to download as a PDF. This parameter is used only if no id parameter given. | [optional] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json, application/pdf


## get_intel_rule_entities

> <DomainRulesResponse> get_intel_rule_entities(ids)

Retrieve details for rule sets for the specified ids.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_intel_rule_file

> get_intel_rule_file(id, opts)

Download earlier rule sets.

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

api_instance = Falcon::IntelApi.new
id = 56 # Integer | The ID of the rule set.
opts = {
  accept: 'accept_example', # String | Choose the format you want the rule set in.
  format: 'format_example' # String | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip.
}

begin
  # Download earlier rule sets.
  api_instance.get_intel_rule_file(id, opts)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_intel_rule_file: #{e}"
end
```

#### Using the get_intel_rule_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_intel_rule_file_with_http_info(id, opts)

```ruby
begin
  # Download earlier rule sets.
  data, status_code, headers = api_instance.get_intel_rule_file_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/gzip, application/octet-stream, application/json, */*


## get_latest_intel_rule_file

> get_latest_intel_rule_file(type, opts)

Download the latest rule set.

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

api_instance = Falcon::IntelApi.new
type = 'type_example' # String | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness
opts = {
  accept: 'accept_example', # String | Choose the format you want the rule set in.
  if_none_match: 'if_none_match_example', # String | Download the latest rule set only if it doesn't have an ETag matching the given ones.
  if_modified_since: 'if_modified_since_example', # String | Download the latest rule set only if the rule was modified after this date. http, ANSIC and RFC850 formats accepted
  format: 'format_example' # String | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip.
}

begin
  # Download the latest rule set.
  api_instance.get_latest_intel_rule_file(type, opts)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_latest_intel_rule_file: #{e}"
end
```

#### Using the get_latest_intel_rule_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_latest_intel_rule_file_with_http_info(type, opts)

```ruby
begin
  # Download the latest rule set.
  data, status_code, headers = api_instance.get_latest_intel_rule_file_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_latest_intel_rule_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The rule news report type. Accepted values:  snort-suricata-master  snort-suricata-update  snort-suricata-changelog  yara-master  yara-update  yara-changelog  common-event-format  netwitness |  |
| **accept** | **String** | Choose the format you want the rule set in. | [optional] |
| **if_none_match** | **String** | Download the latest rule set only if it doesn&#39;t have an ETag matching the given ones. | [optional] |
| **if_modified_since** | **String** | Download the latest rule set only if the rule was modified after this date. http, ANSIC and RFC850 formats accepted | [optional] |
| **format** | **String** | Choose the format you want the rule set in. Valid formats are zip and gzip. Defaults to zip. | [optional] |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/zip, application/gzip, application/octet-stream, application/json, */*


## get_mitre_report

> get_mitre_report(actor_id, format)

Export Mitre ATT&CK information for a given actor.

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

api_instance = Falcon::IntelApi.new
actor_id = 'actor_id_example' # String | Actor ID(derived from the actor's name)
format = 'format_example' # String | Supported report formats: CSV or JSON

begin
  # Export Mitre ATT&CK information for a given actor.
  api_instance.get_mitre_report(actor_id, format)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_mitre_report: #{e}"
end
```

#### Using the get_mitre_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_mitre_report_with_http_info(actor_id, format)

```ruby
begin
  # Export Mitre ATT&CK information for a given actor.
  data, status_code, headers = api_instance.get_mitre_report_with_http_info(actor_id, format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_mitre_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_id** | **String** | Actor ID(derived from the actor&#39;s name) |  |
| **format** | **String** | Supported report formats: CSV or JSON |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json, text/csv


## get_vulnerabilities

> <DomainVulnerabilityResponse> get_vulnerabilities(body)

Get vulnerabilities

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

api_instance = Falcon::IntelApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Get vulnerabilities
  result = api_instance.get_vulnerabilities(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_vulnerabilities: #{e}"
end
```

#### Using the get_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainVulnerabilityResponse>, Integer, Hash)> get_vulnerabilities_with_http_info(body)

```ruby
begin
  # Get vulnerabilities
  data, status_code, headers = api_instance.get_vulnerabilities_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainVulnerabilityResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->get_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

[**DomainVulnerabilityResponse**](DomainVulnerabilityResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_mitre_attacks

> post_mitre_attacks(body)

Retrieves report and observable IDs associated with the given actor and attacks

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

api_instance = Falcon::IntelApi.new
body = Falcon::MsaIdsRequest.new({ids: ['ids_example']}) # MsaIdsRequest | 

begin
  # Retrieves report and observable IDs associated with the given actor and attacks
  api_instance.post_mitre_attacks(body)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->post_mitre_attacks: #{e}"
end
```

#### Using the post_mitre_attacks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_mitre_attacks_with_http_info(body)

```ruby
begin
  # Retrieves report and observable IDs associated with the given actor and attacks
  data, status_code, headers = api_instance.post_mitre_attacks_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->post_mitre_attacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**MsaIdsRequest**](MsaIdsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## query_intel_actor_entities

> <DomainActorsResponse> query_intel_actor_entities(opts)

Get info about actors that match provided FQL filters.

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

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return actors from. Defaults to 0.
  limit: 56, # Integer | Set the number of actors to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actor_type, capabilities, capability, capability.id, capability.slug, capability.value, created_date, description, ecrime_kill_chain.attribution, ecrime_kill_chain.crimes, ecrime_kill_chain.customers, ecrime_kill_chain.marketing, ecrime_kill_chain.monetization, ecrime_kill_chain.services_offered, ecrime_kill_chain.services_used, ecrime_kill_chain.technical_tradecraft, ecrime_kill_chain.victims, first_activity_date, group, group.id, group.slug, group.value, id, kill_chain.actions_and_objectives, kill_chain.actions_on_objectives, kill_chain.command_and_control, kill_chain.delivery, kill_chain.exploitation, kill_chain.installation, kill_chain.objectives, kill_chain.reconnaissance, kill_chain.weaponization, known_as, last_activity_date, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, objectives, origins, origins.id, origins.slug, origins.value, region, region.id, region.slug, region.value, short_description, slug, status, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, target_regions.
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
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actor_type, capabilities, capability, capability.id, capability.slug, capability.value, created_date, description, ecrime_kill_chain.attribution, ecrime_kill_chain.crimes, ecrime_kill_chain.customers, ecrime_kill_chain.marketing, ecrime_kill_chain.monetization, ecrime_kill_chain.services_offered, ecrime_kill_chain.services_used, ecrime_kill_chain.technical_tradecraft, ecrime_kill_chain.victims, first_activity_date, group, group.id, group.slug, group.value, id, kill_chain.actions_and_objectives, kill_chain.actions_on_objectives, kill_chain.command_and_control, kill_chain.delivery, kill_chain.exploitation, kill_chain.installation, kill_chain.objectives, kill_chain.reconnaissance, kill_chain.weaponization, known_as, last_activity_date, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, objectives, origins, origins.id, origins.slug, origins.value, region, region.id, region.slug, region.value, short_description, slug, status, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, target_regions. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |
| **fields** | [**Array&lt;String&gt;**](String.md) | The fields to return, or a predefined set of fields in the form of the collection name surrounded by two underscores like:  \\_\\_\\&lt;collection\\&gt;\\_\\_.  Ex: slug \\_\\_full\\_\\_.  Defaults to \\_\\_basic\\_\\_. | [optional] |

### Return type

[**DomainActorsResponse**](DomainActorsResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_actor_ids

> <MsaQueryResponse> query_intel_actor_ids(opts)

Get actor IDs that match provided FQL filters.

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

api_instance = Falcon::IntelApi.new
opts = {
  offset: 56, # Integer | Set the starting row number to return actors IDs from. Defaults to 0.
  limit: 56, # Integer | Set the number of actor IDs to return. The value must be between 1 and 5000.
  sort: 'sort_example', # String | Order fields in ascending or descending order.  Ex: created_date|asc.
  filter: 'filter_example', # String | Filter your query by specifying FQL filter parameters. Filter parameters include:  actor_type, capabilities, capability, capability.id, capability.slug, capability.value, created_date, description, ecrime_kill_chain.attribution, ecrime_kill_chain.crimes, ecrime_kill_chain.customers, ecrime_kill_chain.marketing, ecrime_kill_chain.monetization, ecrime_kill_chain.services_offered, ecrime_kill_chain.services_used, ecrime_kill_chain.technical_tradecraft, ecrime_kill_chain.victims, first_activity_date, group, group.id, group.slug, group.value, id, kill_chain.actions_and_objectives, kill_chain.actions_on_objectives, kill_chain.command_and_control, kill_chain.delivery, kill_chain.exploitation, kill_chain.installation, kill_chain.objectives, kill_chain.reconnaissance, kill_chain.weaponization, known_as, last_activity_date, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, objectives, origins, origins.id, origins.slug, origins.value, region, region.id, region.slug, region.value, short_description, slug, status, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, target_regions.
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
| **filter** | **String** | Filter your query by specifying FQL filter parameters. Filter parameters include:  actor_type, capabilities, capability, capability.id, capability.slug, capability.value, created_date, description, ecrime_kill_chain.attribution, ecrime_kill_chain.crimes, ecrime_kill_chain.customers, ecrime_kill_chain.marketing, ecrime_kill_chain.monetization, ecrime_kill_chain.services_offered, ecrime_kill_chain.services_used, ecrime_kill_chain.technical_tradecraft, ecrime_kill_chain.victims, first_activity_date, group, group.id, group.slug, group.value, id, kill_chain.actions_and_objectives, kill_chain.actions_on_objectives, kill_chain.command_and_control, kill_chain.delivery, kill_chain.exploitation, kill_chain.installation, kill_chain.objectives, kill_chain.reconnaissance, kill_chain.weaponization, known_as, last_activity_date, last_modified_date, motivations, motivations.id, motivations.slug, motivations.value, name, objectives, origins, origins.id, origins.slug, origins.value, region, region.id, region.slug, region.value, short_description, slug, status, target_countries, target_countries.id, target_countries.slug, target_countries.value, target_industries, target_industries.id, target_industries.slug, target_industries.value, target_regions. | [optional] |
| **q** | **String** | Perform a generic substring search across all fields. | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_indicator_entities

> <DomainPublicIndicatorsV3Response> query_intel_indicator_entities(opts)

Get info about indicators that match provided FQL filters.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_indicator_ids

> <MsaQueryResponse> query_intel_indicator_ids(opts)

Get indicators IDs that match provided FQL filters.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_report_entities

> <DomainNewsResponse> query_intel_report_entities(opts)

Get info about reports that match provided FQL filters.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_report_ids

> <MsaQueryResponse> query_intel_report_ids(opts)

Get report IDs that match provided FQL filters.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_intel_rule_ids

> <MsaQueryResponse> query_intel_rule_ids(type, opts)

Search for rule IDs that match provided filter criteria.

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

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_mitre_attacks

> query_mitre_attacks(id)

Gets MITRE tactics and techniques for the given actor

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

api_instance = Falcon::IntelApi.new
id = 'id_example' # String | The actor ID(derived from the actor's name) for which to retrieve a list of attacks.

begin
  # Gets MITRE tactics and techniques for the given actor
  api_instance.query_mitre_attacks(id)
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_mitre_attacks: #{e}"
end
```

#### Using the query_mitre_attacks_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> query_mitre_attacks_with_http_info(id)

```ruby
begin
  # Gets MITRE tactics and techniques for the given actor
  data, status_code, headers = api_instance.query_mitre_attacks_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_mitre_attacks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The actor ID(derived from the actor&#39;s name) for which to retrieve a list of attacks. |  |

### Return type

nil (empty response body)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_vulnerabilities

> <MsaQueryResponse> query_vulnerabilities(opts)

Get vulnerabilities IDs

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

api_instance = Falcon::IntelApi.new
opts = {
  offset: 'offset_example', # String | Starting index of result set from which to return IDs.
  limit: 56, # Integer | Number of IDs to return.
  sort: 'sort_example', # String | Order by fields.
  filter: 'filter_example', # String | FQL query specifying the filter parameters.
  q: 'q_example' # String | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed).
}

begin
  # Get vulnerabilities IDs
  result = api_instance.query_vulnerabilities(opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_vulnerabilities: #{e}"
end
```

#### Using the query_vulnerabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaQueryResponse>, Integer, Hash)> query_vulnerabilities_with_http_info(opts)

```ruby
begin
  # Get vulnerabilities IDs
  data, status_code, headers = api_instance.query_vulnerabilities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaQueryResponse>
rescue Falcon::ApiError => e
  puts "Error when calling IntelApi->query_vulnerabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Starting index of result set from which to return IDs. | [optional] |
| **limit** | **Integer** | Number of IDs to return. | [optional] |
| **sort** | **String** | Order by fields. | [optional] |
| **filter** | **String** | FQL query specifying the filter parameters. | [optional] |
| **q** | **String** | Match phrase_prefix query criteria; included fields: _all (all filter string fields indexed). | [optional] |

### Return type

[**MsaQueryResponse**](MsaQueryResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

