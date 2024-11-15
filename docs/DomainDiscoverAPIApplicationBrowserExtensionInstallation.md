# Falcon::DomainDiscoverAPIApplicationBrowserExtensionInstallation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_profile_id** | **String** | The browser profile ID of this installation | [optional] |
| **browser_profile_name** | **String** | The browser profile name of this installation | [optional] |
| **browser_version** | **String** | The version of the browser running this extension | [optional] |
| **enabled** | **Boolean** | Describes if the extension is enabled on this browser profile installation |  |
| **method** | **String** | The method that was used to install the browser extension | [optional] |
| **path** | **String** | The file path location of the browser extension | [optional] |
| **role** | **String** | The role of the account that installed the extension | [optional] |
| **user_sid** | **String** | The host user SID for which the extension was installed | [optional] |
| **username** | **String** | The host username for which the extension was installed | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIApplicationBrowserExtensionInstallation.new(
  browser_profile_id: null,
  browser_profile_name: null,
  browser_version: null,
  enabled: null,
  method: null,
  path: null,
  role: null,
  user_sid: null,
  username: null
)
```

