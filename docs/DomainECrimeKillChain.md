# Falcon::DomainECrimeKillChain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribution** | **String** | Free form text describing attribution of the ecrime actor | [optional] |
| **crimes** | **String** | Free form text describing actor&#39;s crimes | [optional] |
| **customers** | **String** | Free form text describing ecrime actor&#39;s customers and affiliates | [optional] |
| **exploitation** | **String** | Comma separated values of vulnerabilities by CVE codes that are exploited by actor | [optional] |
| **marketing** | **String** | Free form text describing ecrime actor&#39;s marketing campaigns and advertisement | [optional] |
| **monetization** | **String** | Legacy field, not used and empty | [optional] |
| **rich_text_attribution** | **String** | Rich text version of the attribution field | [optional] |
| **rich_text_crimes** | **String** | Rich text version of the crimes field | [optional] |
| **rich_text_customers** | **String** | Rich text version of the customers field | [optional] |
| **rich_text_exploitation** | **String** | Rich text version of the exploitation field | [optional] |
| **rich_text_marketing** | **String** | Rich text version of the marketing field | [optional] |
| **rich_text_monetization** | **String** | Legacy field, not used and empty | [optional] |
| **rich_text_services_offered** | **String** | Rich text version of the services_offered field | [optional] |
| **rich_text_services_used** | **String** | Rich text version of the services_used field | [optional] |
| **rich_text_technical_tradecraft** | **String** | Rich text version of the technical_tradecraft field | [optional] |
| **rich_text_victims** | **String** | Rich text version of the victims field | [optional] |
| **services_offered** | **String** | Free form text describing ecrime actor&#39;s services offered and monetized | [optional] |
| **services_used** | **String** | Free form text describing ecrime actor&#39;s used services provided by other actors or groups | [optional] |
| **technical_tradecraft** | **String** | Free form text describing methods and descriptions of techniques used by actor | [optional] |
| **victims** | **String** | Free form text describing victims or their characteristics of the ecrime actor | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainECrimeKillChain.new(
  attribution: null,
  crimes: null,
  customers: null,
  exploitation: null,
  marketing: null,
  monetization: null,
  rich_text_attribution: null,
  rich_text_crimes: null,
  rich_text_customers: null,
  rich_text_exploitation: null,
  rich_text_marketing: null,
  rich_text_monetization: null,
  rich_text_services_offered: null,
  rich_text_services_used: null,
  rich_text_technical_tradecraft: null,
  rich_text_victims: null,
  services_offered: null,
  services_used: null,
  technical_tradecraft: null,
  victims: null
)
```

