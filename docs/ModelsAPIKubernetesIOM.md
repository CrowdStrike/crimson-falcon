# Falcon::ModelsAPIKubernetesIOM

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admission_review_action** | **String** |  | [optional] |
| **admission_review_id** | **String** |  | [optional] |
| **admission_review_msg** | **String** |  | [optional] |
| **admission_review_operation** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **cis_id** | **Array&lt;String&gt;** |  |  |
| **cluster_id** | **String** |  |  |
| **cluster_name** | **String** |  |  |
| **containers_impacted_count** | **String** |  |  |
| **containers_impacted_ids** | **Array&lt;String&gt;** |  |  |
| **description** | **String** |  |  |
| **detect_timestamp** | **String** |  |  |
| **detection_id** | **String** |  |  |
| **detection_name** | **String** |  |  |
| **detection_type** | **String** |  |  |
| **image_assessment_matched_cves** | **Array&lt;String&gt;** |  | [optional] |
| **image_assessment_policy_description** | **String** |  | [optional] |
| **image_assessment_policy_id** | **String** |  | [optional] |
| **image_assessment_policy_name** | **String** |  | [optional] |
| **image_digest** | **String** |  | [optional] |
| **image_has_been_assessed** | **Boolean** |  | [optional] |
| **image_id** | **String** |  | [optional] |
| **image_registry** | **String** |  | [optional] |
| **image_repository** | **String** |  | [optional] |
| **image_tag** | **String** |  | [optional] |
| **last_seen_timestamp** | **String** |  | [optional] |
| **mitigation_id** | **String** |  | [optional] |
| **mitigation_name** | **String** |  | [optional] |
| **namespace** | **String** |  |  |
| **nist_id** | **String** |  | [optional] |
| **pod_label** | **String** |  | [optional] |
| **pods_impacted_count** | **String** |  | [optional] |
| **policy_id** | **String** |  | [optional] |
| **policy_name** | **String** |  | [optional] |
| **ports** | **Array&lt;String&gt;** |  | [optional] |
| **prevented** | **String** |  |  |
| **remediation** | **String** |  |  |
| **resource_creation_timestamp** | **String** |  |  |
| **resource_group_name** | **String** |  | [optional] |
| **resource_id** | **String** |  |  |
| **resource_name** | **String** |  |  |
| **resource_type** | **String** |  |  |
| **sensitive_env_vars** | **Array&lt;String&gt;** |  |  |
| **service_type** | **String** |  | [optional] |
| **severity** | **String** |  |  |
| **tactic_id** | **String** |  |  |
| **tactic_name** | **String** |  |  |
| **technique_id** | **String** |  |  |
| **technique_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIKubernetesIOM.new(
  admission_review_action: null,
  admission_review_id: null,
  admission_review_msg: null,
  admission_review_operation: null,
  cid: null,
  cis_id: null,
  cluster_id: null,
  cluster_name: null,
  containers_impacted_count: null,
  containers_impacted_ids: null,
  description: null,
  detect_timestamp: null,
  detection_id: null,
  detection_name: null,
  detection_type: null,
  image_assessment_matched_cves: null,
  image_assessment_policy_description: null,
  image_assessment_policy_id: null,
  image_assessment_policy_name: null,
  image_digest: null,
  image_has_been_assessed: null,
  image_id: null,
  image_registry: null,
  image_repository: null,
  image_tag: null,
  last_seen_timestamp: null,
  mitigation_id: null,
  mitigation_name: null,
  namespace: null,
  nist_id: null,
  pod_label: null,
  pods_impacted_count: null,
  policy_id: null,
  policy_name: null,
  ports: null,
  prevented: null,
  remediation: null,
  resource_creation_timestamp: null,
  resource_group_name: null,
  resource_id: null,
  resource_name: null,
  resource_type: null,
  sensitive_env_vars: null,
  service_type: null,
  severity: null,
  tactic_id: null,
  tactic_name: null,
  technique_id: null,
  technique_name: null
)
```

