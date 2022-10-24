# Falcon::DomainBreachedItemV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company** | **String** |  | [optional] |
| **credentials_ip** | **String** |  | [optional] |
| **credentials_url** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **domain** | **String** | The domain associated with the breached account. |  |
| **email** | **String** | The email of the breached account. |  |
| **financial** | [**DomainExposedDataRecordFinancialV1**](DomainExposedDataRecordFinancialV1.md) |  | [optional] |
| **hash_type** | **String** | The original hashing algorithm applied to the breached password. Possible values: &#39;plain&#39;, &#39;unknown&#39;, &#39;base64&#39;, &#39;md5&#39;, &#39;sha1&#39;, &#39;bcrypt&#39;, etc. The value &#39;plain&#39; means that the password was originally found as plaintext. |  |
| **job_position** | **String** |  | [optional] |
| **location** | [**DomainExposedDataRecordLocationV1**](DomainExposedDataRecordLocationV1.md) |  | [optional] |
| **login_id** | **String** | The username of the breached account. |  |
| **name** | **String** | The name of the person associated with the breached account. |  |
| **password** | **String** | The breached password. Passwords are returned as salted hashes, generated using the SHA256 algorithm and the CID as the salt. |  |
| **password_hash** | **String** |  | [optional] |
| **password_salt** | **String** |  | [optional] |
| **phone** | **String** | The phone number of the person associated with the breached account. |  |
| **social** | [**DomainExposedDataRecordSocialV1**](DomainExposedDataRecordSocialV1.md) |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **user_ip** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBreachedItemV1.new(
  company: null,
  credentials_ip: null,
  credentials_url: null,
  display_name: null,
  domain: null,
  email: null,
  financial: null,
  hash_type: null,
  job_position: null,
  location: null,
  login_id: null,
  name: null,
  password: null,
  password_hash: null,
  password_salt: null,
  phone: null,
  social: null,
  user_id: null,
  user_ip: null
)
```

