# Falcon::ModelsAPIUnidentifiedContainer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assessed_images** | [**Array&lt;ModelsImageInformation&gt;**](ModelsImageInformation.md) |  |  |
| **assessed_images_count** | **String** |  |  |
| **cid** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **containers_impacted** | [**Array&lt;ModelsContainerInformation&gt;**](ModelsContainerInformation.md) |  |  |
| **containers_impacted_count** | **String** |  |  |
| **detect_timestamp** | **String** |  |  |
| **detections_count** | **String** |  |  |
| **first_seen** | **String** |  |  |
| **host_id** | **String** |  |  |
| **image_assessment_detections_count** | **String** |  |  |
| **last_seen** | **String** |  |  |
| **namespace** | **String** |  |  |
| **node_name** | **String** |  |  |
| **pod_id** | **String** |  |  |
| **pod_name** | **String** |  |  |
| **runtime_detections_count** | **String** |  |  |
| **severity** | **String** |  |  |
| **unassessed_images** | [**Array&lt;ModelsImageInformation&gt;**](ModelsImageInformation.md) |  |  |
| **unassessed_images_count** | **String** |  |  |
| **visible_to_k8s** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIUnidentifiedContainer.new(
  assessed_images: null,
  assessed_images_count: null,
  cid: null,
  cluster_name: null,
  containers_impacted: null,
  containers_impacted_count: null,
  detect_timestamp: null,
  detections_count: null,
  first_seen: null,
  host_id: null,
  image_assessment_detections_count: null,
  last_seen: null,
  namespace: null,
  node_name: null,
  pod_id: null,
  pod_name: null,
  runtime_detections_count: null,
  severity: null,
  unassessed_images: null,
  unassessed_images_count: null,
  visible_to_k8s: null
)
```

