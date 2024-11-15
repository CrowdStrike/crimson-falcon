# Falcon::DomainCPSRating

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_rating** | [**DomainCPSRatingHistoryEntry**](DomainCPSRatingHistoryEntry.md) |  |  |
| **highest_rating** | [**DomainCPSRatingHistoryEntry**](DomainCPSRatingHistoryEntry.md) |  |  |
| **negative_indicators** | [**Array&lt;DomainCPSRatingIndicator&gt;**](DomainCPSRatingIndicator.md) |  |  |
| **positive_indicators** | [**Array&lt;DomainCPSRatingIndicator&gt;**](DomainCPSRatingIndicator.md) |  |  |
| **rating_history** | [**Array&lt;DomainCPSRatingHistoryEntry&gt;**](DomainCPSRatingHistoryEntry.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCPSRating.new(
  current_rating: null,
  highest_rating: null,
  negative_indicators: null,
  positive_indicators: null,
  rating_history: null
)
```

