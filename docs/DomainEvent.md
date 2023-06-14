# Falcon::DomainEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The raw body of the event |  |
| **body_is_truncated** | **Boolean** | By default, event bodies are truncated to 64kb and bodyIsTruncated is set to True. For event bodies larger than 64kb, call the /events-full-body endpoint with the respective eventId |  |
| **body_link** | **String** | Link to the event, can be missing | [optional] |
| **botnet_config_source** | [**DomainBotnetConfigSource**](DomainBotnetConfigSource.md) |  | [optional] |
| **created_date** | **String** | The date the event was created (in UTC format) |  |
| **ddos_attack_source** | [**DomainDDOSAttackSource**](DomainDDOSAttackSource.md) |  | [optional] |
| **event_type** | **String** | The type of event. One of &#x60;TweetEvent&#x60;, &#x60;CodePasteEvent&#x60;, &#x60;BotnetConfigEvent&#x60;, &#x60;DdosAttackEvent&#x60; |  |
| **fingerprint** | **String** | The event&#39;s fingerprint |  |
| **id** | **String** | The unique event ID |  |
| **matched_rules** | [**Array&lt;DomainMatchedRule&gt;**](DomainMatchedRule.md) | List of objects with rules that matched the event | [optional] |
| **pastebin_text_source** | [**DomainPastebinTextSource**](DomainPastebinTextSource.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags summarizing event content | [optional] |
| **tweet_source** | [**DomainTweetSource**](DomainTweetSource.md) |  | [optional] |
| **updated_date** | **String** | The date the event was last updated (in UTC format) |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainEvent.new(
  body: null,
  body_is_truncated: null,
  body_link: null,
  botnet_config_source: null,
  created_date: null,
  ddos_attack_source: null,
  event_type: null,
  fingerprint: null,
  id: null,
  matched_rules: null,
  pastebin_text_source: null,
  tags: null,
  tweet_source: null,
  updated_date: null
)
```

