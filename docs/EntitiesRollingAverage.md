# Falcon::EntitiesRollingAverage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chrome_os** | **Float** |  |  |
| **containers** | **Float** |  |  |
| **date** | **Date** |  |  |
| **lumos** | **Float** |  |  |
| **mobile** | **Float** |  |  |
| **public_cloud_with_containers** | **Float** |  |  |
| **public_cloud_without_containers** | **Float** |  |  |
| **servers_with_containers** | **Float** |  |  |
| **servers_without_containers** | **Float** |  |  |
| **workstations** | **Float** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EntitiesRollingAverage.new(
  chrome_os: null,
  containers: null,
  date: null,
  lumos: null,
  mobile: null,
  public_cloud_with_containers: null,
  public_cloud_without_containers: null,
  servers_with_containers: null,
  servers_without_containers: null,
  workstations: null
)
```

