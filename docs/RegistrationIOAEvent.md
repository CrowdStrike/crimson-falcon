# Falcon::RegistrationIOAEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_event_data** | **String** |  | [optional] |
| **aggregate** | [**DomainIOAEventAggregate**](DomainIOAEventAggregate.md) |  | [optional] |
| **api_version** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **cloud_account_id** | [**DomainCloudAccountID**](DomainCloudAccountID.md) |  | [optional] |
| **cloud_provider** | **String** |  |  |
| **cloud_region** | **String** |  | [optional] |
| **enrichments** | [**DomainIOAEnrichments**](DomainIOAEnrichments.md) |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **error_message** | **String** |  | [optional] |
| **event_category** | **String** |  | [optional] |
| **event_created** | **String** |  | [optional] |
| **event_id** | **String** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **event_source** | **String** |  | [optional] |
| **event_type** | **String** |  | [optional] |
| **group_id** | **String** |  | [optional] |
| **management_event** | **Boolean** |  | [optional] |
| **policy_id** | **Integer** |  |  |
| **policy_statement** | **String** |  |  |
| **read_only** | **Boolean** |  | [optional] |
| **recipient_account_id** | **String** |  | [optional] |
| **request_id** | **String** |  | [optional] |
| **request_parameters** | **String** |  | [optional] |
| **resources** | **String** |  | [optional] |
| **response_elements** | **String** |  | [optional] |
| **service** | **String** |  |  |
| **service_event_details** | **String** |  | [optional] |
| **severity** | **String** |  |  |
| **shared_event_id** | **String** |  | [optional] |
| **source_ip_address** | **String** |  | [optional] |
| **state** | **String** |  |  |
| **user_agent** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_identity** | **String** |  | [optional] |
| **vertex_id** | **String** |  |  |
| **vertex_type** | **String** |  |  |
| **vpc_endpoint_id** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationIOAEvent.new(
  additional_event_data: null,
  aggregate: null,
  api_version: null,
  cid: null,
  cloud_account_id: null,
  cloud_provider: null,
  cloud_region: null,
  enrichments: null,
  error_code: null,
  error_message: null,
  event_category: null,
  event_created: null,
  event_id: null,
  event_name: null,
  event_source: null,
  event_type: null,
  group_id: null,
  management_event: null,
  policy_id: null,
  policy_statement: null,
  read_only: null,
  recipient_account_id: null,
  request_id: null,
  request_parameters: null,
  resources: null,
  response_elements: null,
  service: null,
  service_event_details: null,
  severity: null,
  shared_event_id: null,
  source_ip_address: null,
  state: null,
  user_agent: null,
  user_id: null,
  user_identity: null,
  vertex_id: null,
  vertex_type: null,
  vpc_endpoint_id: null
)
```

