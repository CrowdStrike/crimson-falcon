# Falcon::DomainBotnetConfigSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;DomainKeyValuePair&gt;**](DomainKeyValuePair.md) | Populated for action botnets. List of action key value pairs, defined as the action and its type |  |
| **body** | **String** | Populated for spam botnets. The body of the spam template. If this contains replaceable variables, keep the variable names in the template as they appear in the raw config |  |
| **botnet** | **String** | The botnet&#39;s name |  |
| **config_type** | **String** | The type of botnet: &#x60;action&#x60;, &#x60;inject&#x60;, or &#x60;spam&#x60; |  |
| **injects** | [**Array&lt;DomainBotnetInject&gt;**](DomainBotnetInject.md) | Populated for inject botnets. List of inject targets and their data |  |
| **sub_botnet** | **String** | Optional sub-botnet differentiator |  |
| **subject** | **String** | Populated for spam botnets. The subject of the spam template. If this contains replaceable variables, keep the variable names in the template as they appear in the raw config |  |
| **variables** | [**Array&lt;DomainKeyValuePair&gt;**](DomainKeyValuePair.md) | Populated for spam botnets. List of key value pairs for any replaceable variables in the spam template |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBotnetConfigSource.new(
  actions: null,
  body: null,
  botnet: null,
  config_type: null,
  injects: null,
  sub_botnet: null,
  subject: null,
  variables: null
)
```

