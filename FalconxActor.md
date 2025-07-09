# Falcon::FalconxActor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_timestamp** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **first_activity_timestamp** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **image_artifact_id** | **String** |  | [optional] |
| **known_as** | **String** |  | [optional] |
| **last_activity_timestamp** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **origins** | [**Array&lt;FalconxEntity&gt;**](FalconxEntity.md) |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **slug** | **String** |  | [optional] |
| **target_countries** | [**Array&lt;FalconxEntity&gt;**](FalconxEntity.md) |  | [optional] |
| **target_industries** | [**Array&lt;FalconxEntity&gt;**](FalconxEntity.md) |  | [optional] |
| **thumbnail_artifact_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxActor.new(
  created_timestamp: null,
  description: null,
  first_activity_timestamp: null,
  id: null,
  image_artifact_id: null,
  known_as: null,
  last_activity_timestamp: null,
  name: null,
  origins: null,
  short_description: null,
  slug: null,
  target_countries: null,
  target_industries: null,
  thumbnail_artifact_id: null
)
```

