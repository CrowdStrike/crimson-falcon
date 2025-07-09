# Falcon::TypesInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **properties** | **Hash&lt;String, String&gt;** |  |  |
| **accessing_methods** | **Array&lt;String&gt;** |  | [optional] |
| **bean_class_name** | **String** |  | [optional] |
| **bean_name** | **String** |  | [optional] |
| **broker_host** | **String** |  | [optional] |
| **broker_port** | **Integer** |  | [optional] |
| **catalog** | **String** |  | [optional] |
| **columns** | **Array&lt;String&gt;** |  | [optional] |
| **consumes** | **Array&lt;String&gt;** |  | [optional] |
| **database** | **String** |  | [optional] |
| **direction** | **String** |  | [optional] |
| **driver** | **String** |  | [optional] |
| **durable_subscription** | **String** |  | [optional] |
| **ejb_version** | **String** |  | [optional] |
| **framework** | **String** |  | [optional] |
| **has_password** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **interface_name** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **path** | **String** |  | [optional] |
| **port** | **Integer** |  | [optional] |
| **port_type** | **String** |  | [optional] |
| **produces** | **Array&lt;String&gt;** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **pu_name** | **String** |  | [optional] |
| **schema** | **String** |  | [optional] |
| **services** | [**Array&lt;TypesInterfaceService&gt;**](TypesInterfaceService.md) |  | [optional] |
| **session_type** | **String** |  | [optional] |
| **table** | **String** |  | [optional] |
| **technology** | **String** |  | [optional] |
| **topic** | **String** |  | [optional] |
| **topic_type** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesInterface.new(
  properties: null,
  accessing_methods: null,
  bean_class_name: null,
  bean_name: null,
  broker_host: null,
  broker_port: null,
  catalog: null,
  columns: null,
  consumes: null,
  database: null,
  direction: null,
  driver: null,
  durable_subscription: null,
  ejb_version: null,
  framework: null,
  has_password: null,
  id: null,
  interface_name: null,
  method: null,
  path: null,
  port: null,
  port_type: null,
  produces: null,
  provider: null,
  pu_name: null,
  schema: null,
  services: null,
  session_type: null,
  table: null,
  technology: null,
  topic: null,
  topic_type: null,
  type: null,
  username: null
)
```

