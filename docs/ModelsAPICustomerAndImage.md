# Falcon::ModelsAPICustomerAndImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_image_id** | **String** |  | [optional] |
| **base_os** | **String** |  |  |
| **base_os_version** | **String** |  |  |
| **cid** | **String** |  |  |
| **config** | [**ModelsLightWeightConfig**](ModelsLightWeightConfig.md) |  | [optional] |
| **created_at** | **String** |  |  |
| **crowdstrike_user** | **String** |  |  |
| **digest** | **String** |  |  |
| **eol_date** | **String** |  |  |
| **first_scanned** | **String** |  |  |
| **image_id** | **String** |  |  |
| **image_scanning_active** | **Boolean** |  |  |
| **image_size** | **Integer** |  |  |
| **is_base_image** | **Boolean** |  |  |
| **registry** | **String** |  |  |
| **repository** | **String** |  |  |
| **source** | **String** |  |  |
| **source_base_image** | [**ModelsImageDetails**](ModelsImageDetails.md) |  |  |
| **tag** | **String** |  |  |
| **updated_at** | **String** |  |  |
| **uuid** | **String** |  |  |
| **warning** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPICustomerAndImage.new(
  base_image_id: null,
  base_os: null,
  base_os_version: null,
  cid: null,
  config: null,
  created_at: null,
  crowdstrike_user: null,
  digest: null,
  eol_date: null,
  first_scanned: null,
  image_id: null,
  image_scanning_active: null,
  image_size: null,
  is_base_image: null,
  registry: null,
  repository: null,
  source: null,
  source_base_image: null,
  tag: null,
  updated_at: null,
  uuid: null,
  warning: null
)
```

