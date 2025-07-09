# Falcon::ApiCertBasedExclusionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_globally** | **Boolean** |  | [optional] |
| **certificate** | [**ApiCertificateV1**](ApiCertificateV1.md) |  | [optional] |
| **children_cids** | **Array&lt;String&gt;** |  | [optional] |
| **cid** | **String** |  |  |
| **comment** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **host_groups** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **modified_by** | **String** |  | [optional] |
| **modified_on** | **Time** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCertBasedExclusionV1.new(
  applied_globally: null,
  certificate: null,
  children_cids: null,
  cid: null,
  comment: null,
  created_by: null,
  created_on: null,
  description: null,
  host_groups: null,
  id: null,
  modified_by: null,
  modified_on: null,
  name: null,
  status: null
)
```

