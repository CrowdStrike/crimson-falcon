# Falcon::DomainSignalProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  |  |
| **assessment** | [**DomainAssessment**](DomainAssessment.md) |  |  |
| **assessment_items** | [**DomainAssessmentItems**](DomainAssessmentItems.md) |  |  |
| **cid** | **String** |  |  |
| **event_platform** | **String** |  |  |
| **modified_time** | **Time** |  |  |
| **product_type_desc** | **String** |  |  |
| **sensor_file_status** | **String** |  |  |
| **system_serial_number** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainSignalProperties.new(
  aid: null,
  assessment: null,
  assessment_items: null,
  cid: null,
  event_platform: null,
  modified_time: null,
  product_type_desc: null,
  sensor_file_status: null,
  system_serial_number: null
)
```

