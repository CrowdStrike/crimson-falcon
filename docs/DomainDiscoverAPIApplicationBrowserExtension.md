# Falcon::DomainDiscoverAPIApplicationBrowserExtension

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architecture** | **String** | The architecture of the browser extension | [optional] |
| **browser_name** | **String** | The name of the browser that&#39;s running the extension | [optional] |
| **enabled** | **Boolean** | Describes if the extension is enabled on the host on at least one browser profile |  |
| **id** | **String** | The unique ID of the browser extension. |  |
| **installations** | [**Array&lt;DomainDiscoverAPIApplicationBrowserExtensionInstallation&gt;**](DomainDiscoverAPIApplicationBrowserExtensionInstallation.md) | The installations of this browser extension for each browser profile | [optional] |
| **permission_severity** | **String** | The computed serverity of all permissions requested by the browser extension | [optional] |
| **permissions** | **Array&lt;String&gt;** | The browser permissions the extension requires to run | [optional] |
| **store_url** | **String** | The calculated browser webstore URL for this extension | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIApplicationBrowserExtension.new(
  architecture: null,
  browser_name: null,
  enabled: null,
  id: null,
  installations: null,
  permission_severity: null,
  permissions: null,
  store_url: null
)
```

