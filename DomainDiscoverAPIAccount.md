# Falcon::DomainDiscoverAPIAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | The account&#39;s name (Domain\\Username or Hostname\\Username). | [optional] |
| **account_type** | **String** | The type of the account (Local or Domain). | [optional] |
| **admin_privileges** | **String** | Whether the account has administrator privileges (Yes, No, or Unknown). | [optional] |
| **cid** | **String** | The account&#39;s customer ID. |  |
| **first_seen_timestamp** | **String** | The first time the account was seen successfully logging in to your environment. | [optional] |
| **id** | **String** | The unique ID of the account. |  |
| **last_failed_login_hostname** | **String** | The hostname of the asset on which the account last made a failed login. | [optional] |
| **last_failed_login_timestamp** | **String** | The date and time of the account&#39;s most recent failed login. | [optional] |
| **last_failed_login_type** | **String** | The type of the account&#39;s most recent failed login. &lt;ul&gt;&lt;li&gt;Interactive&lt;/li&gt;&lt;li&gt;Network&lt;/li&gt;&lt;li&gt;Batch&lt;/li&gt;&lt;li&gt;Service&lt;/li&gt;&lt;li&gt;Unlock&lt;/li&gt;&lt;li&gt;Network cleartext&lt;/li&gt;&lt;li&gt;New credentials&lt;/li&gt;&lt;li&gt;Remote interactive&lt;/li&gt;&lt;li&gt;Cached credentials&lt;/li&gt;&lt;li&gt;Auditing&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **last_successful_login_host_city** | **String** | The name of the city where the asset is located on which the account last successfully logged in. | [optional] |
| **last_successful_login_host_country** | **String** | The name of the country where the asset is located on which the account last successfully logged in. | [optional] |
| **last_successful_login_hostname** | **String** | The hostname of the asset on which the account last successfully logged in. | [optional] |
| **last_successful_login_remote_ip** | **String** | The remote IP address of the asset on which the account last successfully logged in. | [optional] |
| **last_successful_login_timestamp** | **String** | The date and time of the account&#39;s most recent successful login. | [optional] |
| **last_successful_login_type** | **String** | The type of the account&#39;s most recent successful login. &lt;ul&gt;&lt;li&gt;Interactive&lt;/li&gt;&lt;li&gt;Network&lt;/li&gt;&lt;li&gt;Service&lt;/li&gt;&lt;li&gt;Remote interactive&lt;/li&gt;&lt;li&gt;Cached credentials&lt;/li&gt;&lt;li&gt;Auditing&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **local_admin_privileges** | **String** | Whether the account has local administrator privileges (Yes, No). | [optional] |
| **login_domain** | **String** | The domain of the asset the account successfully logged in to. | [optional] |
| **password_last_set_timestamp** | **String** | The most recent date and time the account&#39;s password was changed. | [optional] |
| **user_sid** | **String** | The account&#39;s security identifier on Windows assets. | [optional] |
| **username** | **String** | The account&#39;s username. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIAccount.new(
  account_name: null,
  account_type: null,
  admin_privileges: null,
  cid: null,
  first_seen_timestamp: null,
  id: null,
  last_failed_login_hostname: null,
  last_failed_login_timestamp: null,
  last_failed_login_type: null,
  last_successful_login_host_city: null,
  last_successful_login_host_country: null,
  last_successful_login_hostname: null,
  last_successful_login_remote_ip: null,
  last_successful_login_timestamp: null,
  last_successful_login_type: null,
  local_admin_privileges: null,
  login_domain: null,
  password_last_set_timestamp: null,
  user_sid: null,
  username: null
)
```

