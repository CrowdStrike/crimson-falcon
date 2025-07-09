# Falcon::DomainBreachedItemV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bot** | [**DomainExposedDataRecordBotV1**](DomainExposedDataRecordBotV1.md) |  | [optional] |
| **company** | **String** | The company of the user | [optional] |
| **credential_status** | **String** | The status set after deduplication. Possible values: &#39;newly_detected&#39;, &#39;previously_reported&#39;, &#39;other&#39; | [optional] |
| **credentials_domain** | **String** | The domain where the credentials are valid | [optional] |
| **credentials_ip** | **String** | The IP where the credentials are valid | [optional] |
| **credentials_url** | **String** | The URL where the credentials are valid | [optional] |
| **display_name** | **String** | The nickname of the user on the impacted site | [optional] |
| **domain** | **String** | The domain associated with the breached account. |  |
| **email** | **String** | The email of the breached account. |  |
| **financial** | [**DomainExposedDataRecordFinancialV1**](DomainExposedDataRecordFinancialV1.md) |  | [optional] |
| **hash_type** | **String** | The original hashing algorithm applied to the breached password. Possible values: &#39;plain&#39;, &#39;unknown&#39;, &#39;base64&#39;, &#39;md5&#39;, &#39;sha1&#39;, &#39;bcrypt&#39;, etc. The value &#39;plain&#39; means that the password was originally found as plaintext. |  |
| **job_position** | **String** | The user&#39;s job at the company | [optional] |
| **location** | [**DomainExposedDataRecordLocationV1**](DomainExposedDataRecordLocationV1.md) |  | [optional] |
| **login_id** | **String** | The username of the breached account. |  |
| **malware_family** | **String** | The stealer log bot malware family | [optional] |
| **name** | **String** | The name of the person associated with the breached account. |  |
| **password** | **String** | The breached password. Passwords are returned as salted hashes, generated using the SHA256 algorithm and the CID as the salt. |  |
| **password_hash** | **String** | The password hash | [optional] |
| **password_salt** | **String** | The password salt | [optional] |
| **phone** | **String** | The phone number of the person associated with the breached account. |  |
| **social** | [**DomainExposedDataRecordSocialV1**](DomainExposedDataRecordSocialV1.md) |  | [optional] |
| **user_id** | **String** | The ID of the user on the impacted site | [optional] |
| **user_ip** | **String** | The IP of the user on the impacted site | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainBreachedItemV1.new(
  bot: null,
  company: null,
  credential_status: null,
  credentials_domain: null,
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
  malware_family: null,
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

