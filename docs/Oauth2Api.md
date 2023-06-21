# Falcon::Oauth2Api

All URIs are relative to *https://api.crowdstrike.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**oauth2_access_token**](Oauth2Api.md#oauth2_access_token) | **POST** /oauth2/token | Generate an OAuth2 access token |
| [**oauth2_revoke_token**](Oauth2Api.md#oauth2_revoke_token) | **POST** /oauth2/revoke | Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan. |


## oauth2_access_token

> <DomainAccessTokenResponseV1> oauth2_access_token(client_id, client_secret, opts)

Generate an OAuth2 access token

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

api_instance = Falcon::Oauth2Api.new
client_id = 'client_id_example' # String | The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
client_secret = 'client_secret_example' # String | The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
opts = {
  member_cid: 'member_cid_example' # String | For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID
}

begin
  # Generate an OAuth2 access token
  result = api_instance.oauth2_access_token(client_id, client_secret, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Oauth2Api->oauth2_access_token: #{e}"
end
```

#### Using the oauth2_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DomainAccessTokenResponseV1>, Integer, Hash)> oauth2_access_token_with_http_info(client_id, client_secret, opts)

```ruby
begin
  # Generate an OAuth2 access token
  data, status_code, headers = api_instance.oauth2_access_token_with_http_info(client_id, client_secret, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DomainAccessTokenResponseV1>
rescue Falcon::ApiError => e
  puts "Error when calling Oauth2Api->oauth2_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers). |  |
| **client_secret** | **String** | The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers). |  |
| **member_cid** | **String** | For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID | [optional] |

### Return type

[**DomainAccessTokenResponseV1**](DomainAccessTokenResponseV1.md)

### Authorization

**basicAuth**

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded, text/html
- **Accept**: application/json


## oauth2_revoke_token

> <MsaReplyMetaOnly> oauth2_revoke_token(token, opts)

Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.

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

api_instance = Falcon::Oauth2Api.new
token = 'token_example' # String | The OAuth2 access token you want to revoke.  Include your API client ID and secret in basic auth format (`Authorization: basic <encoded API client ID and secret>`) in your request header.
opts = {
  client_id: 'client_id_example' # String | The OAuth2 client ID you are revoking the token for.
}

begin
  # Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.
  result = api_instance.oauth2_revoke_token(token, opts)
  p result
rescue Falcon::ApiError => e
  puts "Error when calling Oauth2Api->oauth2_revoke_token: #{e}"
end
```

#### Using the oauth2_revoke_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MsaReplyMetaOnly>, Integer, Hash)> oauth2_revoke_token_with_http_info(token, opts)

```ruby
begin
  # Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.
  data, status_code, headers = api_instance.oauth2_revoke_token_with_http_info(token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MsaReplyMetaOnly>
rescue Falcon::ApiError => e
  puts "Error when calling Oauth2Api->oauth2_revoke_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The OAuth2 access token you want to revoke.  Include your API client ID and secret in basic auth format (&#x60;Authorization: basic &lt;encoded API client ID and secret&gt;&#x60;) in your request header. |  |
| **client_id** | **String** | The OAuth2 client ID you are revoking the token for. | [optional] |

### Return type

[**MsaReplyMetaOnly**](MsaReplyMetaOnly.md)

### Authorization

**basicAuth**

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

