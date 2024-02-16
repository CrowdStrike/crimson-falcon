# Falcon::ApiExposedDataRecordSocialV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aim_id** | **String** | AIM ID of the affected user | [optional] |
| **facebook_id** | **String** | Facebook ID of the affected user | [optional] |
| **icq_id** | **String** | ICQ ID of the affected user | [optional] |
| **instagram_id** | **String** | Instagram ID of the affected user | [optional] |
| **msn_id** | **String** | MSN ID of the affected user | [optional] |
| **skype_id** | **String** | Skype ID of the affected user | [optional] |
| **twitter_id** | **String** | Twitter ID of the affected user | [optional] |
| **vk_id** | **String** | VK ID of the affected user | [optional] |
| **vk_token** | **String** | VK Access Token of the affected user | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExposedDataRecordSocialV1.new(
  aim_id: null,
  facebook_id: null,
  icq_id: null,
  instagram_id: null,
  msn_id: null,
  skype_id: null,
  twitter_id: null,
  vk_id: null,
  vk_token: null
)
```

