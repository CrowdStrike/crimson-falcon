# Falcon::DomainDiscoverAPIApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectures** | **Array&lt;String&gt;** | Represents the application architectures (x86 / x64). | [optional] |
| **browser_extension** | [**DomainDiscoverAPIApplicationBrowserExtension**](DomainDiscoverAPIApplicationBrowserExtension.md) |  | [optional] |
| **category** | **String** | The category of the application. | [optional] |
| **cid** | **String** | The customer ID of this application. |  |
| **first_seen_timestamp** | **String** | Timestamp when this application was first seen by the cloud. | [optional] |
| **groups** | **Array&lt;String&gt;** | The user defined groups this application is part of. | [optional] |
| **host** | [**DomainDiscoverAPIApplicationHost**](DomainDiscoverAPIApplicationHost.md) |  | [optional] |
| **id** | **String** | The unique ID for the application. |  |
| **installation_paths** | **Array&lt;String&gt;** | The file paths where the application is installed on the host. Or the locations of the executables. | [optional] |
| **installation_timestamp** | **String** | Timestamp when the application was installed on the host. We might not have this data. | [optional] |
| **is_normalized** | **Boolean** | Whether or not the application is normalized | [optional] |
| **is_suspicious** | **Boolean** | Whether or not the application is suspicious | [optional] |
| **last_updated_timestamp** | **String** | Timestamp when this application was last updated (something changed in the application or in the host data). | [optional] |
| **last_used_file_hash** | **String** | The file hash that was last used for this application. | [optional] |
| **last_used_file_name** | **String** | The file name that was last used for this application. | [optional] |
| **last_used_timestamp** | **String** | Timestamp when this application was last used. | [optional] |
| **last_used_user_name** | **String** | The username of the user that last used this application. | [optional] |
| **last_used_user_sid** | **String** | The user SID of the last user that used this application. | [optional] |
| **name** | **String** | The name of the application. | [optional] |
| **name_vendor** | **String** | The combined field on which we will be able to group by app. | [optional] |
| **name_vendor_version** | **String** | The combined field on which we will be able to group by app + version. | [optional] |
| **software_type** | **String** | The type of software of the application. | [optional] |
| **vendor** | **String** | The name the application&#39;s vendor. | [optional] |
| **version** | **String** | The version of the application. | [optional] |
| **versioning_scheme** | **String** | The version scheme of the application. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIApplication.new(
  architectures: null,
  browser_extension: null,
  category: null,
  cid: null,
  first_seen_timestamp: null,
  groups: null,
  host: null,
  id: null,
  installation_paths: null,
  installation_timestamp: null,
  is_normalized: null,
  is_suspicious: null,
  last_updated_timestamp: null,
  last_used_file_hash: null,
  last_used_file_name: null,
  last_used_timestamp: null,
  last_used_user_name: null,
  last_used_user_sid: null,
  name: null,
  name_vendor: null,
  name_vendor_version: null,
  software_type: null,
  vendor: null,
  version: null,
  versioning_scheme: null
)
```

