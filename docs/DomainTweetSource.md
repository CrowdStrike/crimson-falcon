# Falcon::DomainTweetSource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_name** | **String** | The username of the tweet&#39;s author |  |
| **language** | **String** | The language of the tweet |  |
| **legacy_source** | **Object** |  | [optional] |
| **source_link** | **String** | The link to the tweet |  |
| **tweet_id** | **Integer** | The tweet ID |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainTweetSource.new(
  author_name: null,
  language: null,
  legacy_source: null,
  source_link: null,
  tweet_id: null
)
```

