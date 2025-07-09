# Falcon::RestAWSAccountCreateResponseExtV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCloudAWSAccountV1&gt;**](DomainCloudAWSAccountV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestAWSAccountCreateResponseExtV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

