# Falcon::ApiNotificationExposedDataRecordV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **String** | The individual or group who exposed the data |  |
| **author_id** | **String** | The ID of the author within Recon | [optional] |
| **cid** | **String** | The customer ID |  |
| **company** | **String** | The company of the user | [optional] |
| **created_date** | **Time** | The date when this entity was created in Recon |  |
| **credentials_domain** | **String** | The domain where the credentials are valid | [optional] |
| **credentials_ip** | **String** | The IP where the credentials are valid | [optional] |
| **credentials_url** | **String** | The URL where the credentials are valid | [optional] |
| **display_name** | **String** | The nickname of the user on the impacted site | [optional] |
| **domain** | **String** | The domain of the email linked to the impacted site | [optional] |
| **email** | **String** | The email linked to the impacted site | [optional] |
| **event_date** | **String** | The approximate date when the event occurred |  |
| **exposure_date** | **Time** | The date when the exposed data was posted online |  |
| **file** | [**ApiExposedDataFileDetailsV1**](ApiExposedDataFileDetailsV1.md) |  | [optional] |
| **financial** | [**ApiExposedDataRecordFinancialV1**](ApiExposedDataRecordFinancialV1.md) |  | [optional] |
| **full_name** | **String** | The full name of the user on the impacted site | [optional] |
| **hash_type** | **String** | The algorithm used to hash the password | [optional] |
| **id** | **String** | The ID of this entity |  |
| **job_position** | **String** | The users job at the company | [optional] |
| **location** | [**ApiExposedDataRecordLocationV1**](ApiExposedDataRecordLocationV1.md) |  | [optional] |
| **login_id** | **String** |  | [optional] |
| **notification_id** | **String** | The ID of the parent notification associated with this entity |  |
| **password** | **String** | The password used for login | [optional] |
| **password_hash** | **String** | The password hash | [optional] |
| **password_salt** | **String** | The password salt | [optional] |
| **phone_number** | **String** | The phone number of the user on the impacted site | [optional] |
| **raw_intel_id** | **String** |  |  |
| **rule** | [**ApiRuleDetailsV1**](ApiRuleDetailsV1.md) |  |  |
| **site** | **String** | The source where this entity was found |  |
| **site_id** | **String** | The ID of the site within Recon | [optional] |
| **social** | [**ApiExposedDataRecordSocialV1**](ApiExposedDataRecordSocialV1.md) |  | [optional] |
| **source_category** | **String** | The category of the source where this entity was found |  |
| **user_id** | **String** | The ID of the user on the impacted site | [optional] |
| **user_ip** | **String** | The IP of the user on the impacted site | [optional] |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiNotificationExposedDataRecordV1.new(
  author: null,
  author_id: null,
  cid: null,
  company: null,
  created_date: null,
  credentials_domain: null,
  credentials_ip: null,
  credentials_url: null,
  display_name: null,
  domain: null,
  email: null,
  event_date: null,
  exposure_date: null,
  file: null,
  financial: null,
  full_name: null,
  hash_type: null,
  id: null,
  job_position: null,
  location: null,
  login_id: null,
  notification_id: null,
  password: null,
  password_hash: null,
  password_salt: null,
  phone_number: null,
  raw_intel_id: null,
  rule: null,
  site: null,
  site_id: null,
  social: null,
  source_category: null,
  user_id: null,
  user_ip: null,
  user_uuid: null
)
```

