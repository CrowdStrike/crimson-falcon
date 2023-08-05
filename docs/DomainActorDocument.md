# Falcon::DomainActorDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | Boolean field marking if actor is active |  |
| **actor_type** | **String** | Actor type, one of: targeted, ecrime | [optional] |
| **capabilities** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | actor&#39;s capabilities, some examples: RAT,Ransomware,Spearphishing,Downloader,Backdoor,InformationStealer,exploit,CredentialHarvesting,dropper,DenialOfService,Loader,Phishing |  |
| **capability** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **created_date** | **Integer** | Actor&#39;s document creation date when it was added to the Falcon portal in unix timestamp format |  |
| **description** | **String** | Actor&#39;s text description, partially containing structured data from other fields | [optional] |
| **ecrime_kill_chain** | [**DomainECrimeKillChain**](DomainECrimeKillChain.md) |  | [optional] |
| **entitlements** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Field used to filter user&#39;s access to actor documents | [optional] |
| **first_activity_date** | **Integer** | Actor&#39;s first activity observed date in unix timestamp format |  |
| **group** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **id** | **Integer** | Numerical ID for the Actor |  |
| **image** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **kill_chain** | [**DomainKillChain**](DomainKillChain.md) |  | [optional] |
| **known_as** | **String** | Alternative names and community identifiers of an actor |  |
| **last_activity_date** | **Integer** | Actor&#39;s last (most recent) activity observed date in unix timestamp format |  |
| **last_modified_date** | **Integer** | Actor&#39;s document last modified date in unix timestamp format |  |
| **motivations** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Actor&#39;s activity motivation, one of: State-Sponsored, Criminal, Hacktivism |  |
| **name** | **String** | Actor&#39;s name, composed of 2 words | [optional] |
| **notify_users** | **Boolean** | internal field |  |
| **objectives** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Actor&#39;s activity objectives, one of: IntelligenceGathering, FinancialGain, IntellectualPropertyTheft, defacement, Destruction, DenialOfService |  |
| **origins** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | represents origin of actor&#39;s activity and/or members, some examples: China,Russian Federation,Eastern Europe,Iran,East Asia, South Asia |  |
| **recent_alerting** | **Integer** | Recent CrowdStrike&#39;s finished intelligence alerting date in unix timestamp format | [optional] |
| **region** | [**DomainEntity**](DomainEntity.md) |  | [optional] |
| **rich_text_description** | **String** | Rich text version of the description field | [optional] |
| **short_description** | **String** | Short version of the description field |  |
| **slug** | **String** | Name in url friendly format, lowercased and spaces replaced with dash | [optional] |
| **status** | **String** | Status of an actor, one of: Active, Inactive, Retired |  |
| **target_countries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Target countries of actor&#39;s activity and attacks, slug value is a 2 characters code for the country value, some examples: United States,United Kingdom,Germany,India,Japan,France,Australia,Canada,China |  |
| **target_industries** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Target economical industries of actor&#39;s activity and attacks. List of available values: Government, Financial Services, Technology, Telecommunications, Healthcare, Energy, Academic, Media, Aerospace, NGO, Manufacturing, Industrials and Engineering, Retail, Hospitality, Consulting and Professional Services, Opportunistic, Aviation, Defense, Transportation, Oil and Gas, Legal, Pharmaceutical, Logistics, Military, Automotive, Food and Beverage, Consumer Goods, Real Estate, Insurance, Agriculture, Chemicals, Utilities, Maritime, Extractive, Travel, Dissident, Cryptocurrency, Entertainment, National Government, Law Enforcement, Think Tanks, Local Government, Sports Organizations, Computer Gaming, Biomedical, Nonprofit, Financial Management &amp; Hedge Funds, Political Parties, Architectural and Engineering, Emergency Services, Social Media, International Government, Nuclear, Research Entities, Vocational and Higher-Level Education, eCommerce |  |
| **target_regions** | [**Array&lt;DomainEntity&gt;**](DomainEntity.md) | Target geographic regions of actor&#39;s activity and attacks. List of available values: North America, Western Europe, Southeast Asia, Middle East, Eastern Europe, South Asia, South America, Oceania, East Asia, Central Africa, Northern Europe, Southern Europe, North Africa, Southern Africa, Central America, Central Asia, East Africa, West Africa, Caribbean |  |
| **thumbnail** | [**DomainImage**](DomainImage.md) |  | [optional] |
| **url** | **String** | URL at which actor profile can be accessed | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainActorDocument.new(
  active: null,
  actor_type: null,
  capabilities: null,
  capability: null,
  created_date: null,
  description: null,
  ecrime_kill_chain: null,
  entitlements: null,
  first_activity_date: null,
  group: null,
  id: null,
  image: null,
  kill_chain: null,
  known_as: null,
  last_activity_date: null,
  last_modified_date: null,
  motivations: null,
  name: null,
  notify_users: null,
  objectives: null,
  origins: null,
  recent_alerting: null,
  region: null,
  rich_text_description: null,
  short_description: null,
  slug: null,
  status: null,
  target_countries: null,
  target_industries: null,
  target_regions: null,
  thumbnail: null,
  url: null
)
```

