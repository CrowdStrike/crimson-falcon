# Falcon::ModelsInventoryType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_packages** | [**Array&lt;ModelsApplicationPackageInfoType&gt;**](ModelsApplicationPackageInfoType.md) |  | [optional] |
| **config** | [**V1Image**](V1Image.md) |  |  |
| **config_info** | [**ModelsConfigInfoType**](ModelsConfigInfoType.md) |  |  |
| **elf_binaries** | [**Array&lt;ModelsELFBinaryInfoType&gt;**](ModelsELFBinaryInfoType.md) |  |  |
| **image_info** | [**ModelsImageInfoType**](ModelsImageInfoType.md) |  |  |
| **inventory_engine_info** | [**ModelsInventoryEngineInfoType**](ModelsInventoryEngineInfoType.md) |  |  |
| **layers** | [**Array&lt;ModelsLayerInfoType&gt;**](ModelsLayerInfoType.md) |  |  |
| **ml_models** | [**Array&lt;ModelsMLModelType&gt;**](ModelsMLModelType.md) |  | [optional] |
| **manifest** | [**Schema2Manifest**](Schema2Manifest.md) |  |  |
| **os_info** | [**ModelsOSInfoType**](ModelsOSInfoType.md) |  |  |
| **packages** | [**Array&lt;ModelsPackageInfoType&gt;**](ModelsPackageInfoType.md) |  |  |
| **ai_related** | **Boolean** |  | [optional] |
| **high_entropy_s3_file_exists** | **Boolean** |  | [optional] |
| **interesting_strings** | [**Array&lt;ModelsHEStringFileInfoType&gt;**](ModelsHEStringFileInfoType.md) |  | [optional] |
| **whiteout_files** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsInventoryType.new(
  application_packages: null,
  config: null,
  config_info: null,
  elf_binaries: null,
  image_info: null,
  inventory_engine_info: null,
  layers: null,
  ml_models: null,
  manifest: null,
  os_info: null,
  packages: null,
  ai_related: null,
  high_entropy_s3_file_exists: null,
  interesting_strings: null,
  whiteout_files: null
)
```

