# Falcon::ResponsesHostGroupMembersV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | A collection of any errors which occurred during execution of the request |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;CsdomainDevice&gt;**](CsdomainDevice.md) | A collection of device details |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ResponsesHostGroupMembersV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

