# Falcon::DomainKillChain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions_and_objectives** | **String** | Free form text describing actions and objectives of the actor | [optional] |
| **command_and_control** | **String** | Free form text describing methods and tools used to communicate with and control an infected machine or network | [optional] |
| **delivery** | **String** | Free form text describing malware delivery by actor | [optional] |
| **exploitation** | **String** | Comma separated values of vulnerabilities by CVE codes that are exploited by actor | [optional] |
| **installation** | **String** | Free form text describing actor&#39;s malware installation on the asset | [optional] |
| **objectives** | **String** | Legacy field, not used and empty | [optional] |
| **reconnaissance** | **String** | Free form text describing how targets are researched, identified and selected | [optional] |
| **rich_text_actions_and_objectives** | **String** | Rich free form text describing actions and objectives of the actor | [optional] |
| **rich_text_command_and_control** | **String** | Rich free form text describing methods and tools used to communicate with and control an infected machine or network | [optional] |
| **rich_text_delivery** | **String** | Rich free form text describing malware delivery by actor | [optional] |
| **rich_text_exploitation** | **String** | Rich text comma separated values of vulnerabilities by CVE codes that are exploited by actor | [optional] |
| **rich_text_installation** | **String** | Rich free form text describing actor&#39;s malware installation on the asset | [optional] |
| **rich_text_objectives** | **String** | Legacy field, not used and empty | [optional] |
| **rich_text_reconnaissance** | **String** | Rich free form text describing how targets are researched, identified and selected | [optional] |
| **rich_text_weaponization** | **String** | Rich free form text describing weaponization of the threat/malware (couples exploit with backdoor into deliverable payload) | [optional] |
| **weaponization** | **String** | Free form text describing weaponization of the threat/malware (couples exploit with backdoor into deliverable payload) | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainKillChain.new(
  actions_and_objectives: null,
  command_and_control: null,
  delivery: null,
  exploitation: null,
  installation: null,
  objectives: null,
  reconnaissance: null,
  rich_text_actions_and_objectives: null,
  rich_text_command_and_control: null,
  rich_text_delivery: null,
  rich_text_exploitation: null,
  rich_text_installation: null,
  rich_text_objectives: null,
  rich_text_reconnaissance: null,
  rich_text_weaponization: null,
  weaponization: null
)
```

