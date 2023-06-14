# Falcon::DomainLaunchExportJobRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** | The entity type. This can be one of: [&#x60;notification-exposed-data-record&#x60;] |  |
| **export_type** | **String** | The file type of the export. This can be one of: [&#x60;json&#x60;, &#x60;csv&#x60;] |  |
| **filter** | **String** | FQL query to filter entities by. Possible filter properties depend on the entity type. |  |
| **human_readable** | **Boolean** | If set to true (default), the field names in the exported file will resemble the table header in the UI (e.g. \&quot;Hash type\&quot;), otherwise the API level field names will be used (e.g. \&quot;hash_type\&quot;) |  |
| **sort** | **String** | Possible order by fields: created_timestamp, last_updated_timestamp. Ex: &#39;last_updated_timestamp|desc&#39; | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainLaunchExportJobRequestV1.new(
  entity: null,
  export_type: null,
  filter: null,
  human_readable: null,
  sort: null
)
```

