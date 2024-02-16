# Falcon::CloudSnapshotsApi

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**register_cspm_snapshot_account**](CloudSnapshotsApi.md#register_cspm_snapshot_account) | **POST** /snapshots/entities/accounts/v1 | Register customer cloud account for snapshot scanning |


## register_cspm_snapshot_account

> <ModelsAccountStatusResponse> register_cspm_snapshot_account(body)

Register customer cloud account for snapshot scanning

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

api_instance = Falcon::CloudSnapshotsApi.new
body = Falcon::ModelsAccountEntitiesInput.new({aws_accounts: [Falcon::DomainAWSAccountInput.new({account_number: 'account_number_example', batch_regions: [Falcon::DomainAWSBatchClusterRegion.new({job_definition_name: 'job_definition_name_example', job_queue: 'job_queue_example', region: 'region_example'})], iam_external_id: 'iam_external_id_example', iam_role_arn: 'iam_role_arn_example', kms_alias: 'kms_alias_example', processing_account: 'processing_account_example'})]}) # ModelsAccountEntitiesInput | 

begin
  # Register customer cloud account for snapshot scanning
  result = api_instance.register_cspm_snapshot_account(body)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshotsApi->register_cspm_snapshot_account: #{e}"
end
```

#### Using the register_cspm_snapshot_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelsAccountStatusResponse>, Integer, Hash)> register_cspm_snapshot_account_with_http_info(body)

```ruby
begin
  # Register customer cloud account for snapshot scanning
  data, status_code, headers = api_instance.register_cspm_snapshot_account_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelsAccountStatusResponse>
rescue Falcon::ApiError => e
  puts "Error when calling CloudSnapshotsApi->register_cspm_snapshot_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ModelsAccountEntitiesInput**](ModelsAccountEntitiesInput.md) |  |  |

### Return type

[**ModelsAccountStatusResponse**](ModelsAccountStatusResponse.md)

### Authorization

**oauth2**

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

