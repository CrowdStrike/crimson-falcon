# Falcon::ActivitiesDependency

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Id of the store app or foundry app template to which the dependencies appear on |  |
| **app_name** | **String** | name of the store app or foundry app template to which the dependencies appear on |  |
| **app_type** | **String** | Type of the app whether its store or foundry. |  |
| **logo_url** | **String** | Url of the logo for the app or app template linked to this activity. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActivitiesDependency.new(
  app_id: null,
  app_name: null,
  app_type: null,
  logo_url: null
)
```

