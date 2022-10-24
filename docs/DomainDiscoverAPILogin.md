# Falcon::DomainDiscoverAPILogin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account that made the login. | [optional] |
| **account_name** | **String** | The name of the account that made the login (Domain\\Username or Hostname\\Username). | [optional] |
| **account_type** | **String** | The type of the account that made the login. | [optional] |
| **admin_privileges** | **String** | Whether the account that made the login has administrator privileges (Yes, No, or Unknown). | [optional] |
| **aggregation_time_interval** | **String** | A login represents an aggregation of login attempts made in a window of time (1-hour window for logins in the past day, or 24-hour window for logins older than a day). | [optional] |
| **aid** | **String** | The agent ID of the Falcon sensor installed on the asset where the login took place. | [optional] |
| **cid** | **String** | The customer ID where login took place. | [optional] |
| **failure_description** | **String** | The description of the reason why the login failed, if login_status&#x3D;\&quot;Failed\&quot;.&lt;ul&gt;&lt;li&gt;There are currently no login servers available to service the login request.&lt;/li&gt;&lt;li&gt;User login with misspelled or bad user account&lt;/li&gt;&lt;li&gt;User login with misspelled or bad password&lt;/li&gt;&lt;li&gt;This is either due to a bad username or authentication information&lt;/li&gt;&lt;li&gt;Unknown user name or bad password.&lt;/li&gt;&lt;li&gt;User login outside authorized hours&lt;/li&gt;&lt;li&gt;User login from unauthorized workstation&lt;/li&gt;&lt;li&gt;User login with expired password&lt;/li&gt;&lt;li&gt;User login to account disabled by administrator&lt;/li&gt;&lt;li&gt;Indicates the Sam Server was in the wrong state to perform the desired operation.&lt;/li&gt;&lt;li&gt;Clocks between DC and other computer too far out of sync&lt;/li&gt;&lt;li&gt;The user has not been granted the requested login type (aka login right) at this machine&lt;/li&gt;&lt;li&gt;The login request failed because the trust relationship between the primary domain and the trusted domain failed.&lt;/li&gt;&lt;li&gt;An attempt was made to login, but the Netlogon service was not started.&lt;/li&gt;&lt;li&gt;User login with expired account&lt;/li&gt;&lt;li&gt;User is required to change password at next login&lt;/li&gt;&lt;li&gt;Evidently a bug in Windows and not a risk&lt;/li&gt;&lt;li&gt;User login with account locked&lt;/li&gt;&lt;li&gt;Failure Reason: An Error occurred during Login&lt;/li&gt;&lt;li&gt;Login Failure: The machine you are logging in to is protected by an authentication firewall. The specified account is not allowed to authenticate to the machine.&lt;/li&gt;&lt;li&gt;Status OK.&lt;/li&gt;&lt;li&gt;Invalid password entered&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **host_city** | **String** | The name of the city where the asset is located where the login took place. | [optional] |
| **host_country** | **String** | The name of the country where the asset is located on which the login took place. | [optional] |
| **host_id** | **String** | The unique ID of the asset where the login took place. | [optional] |
| **hostname** | **String** | The hostname of the host where the login took place. | [optional] |
| **id** | **String** | The unique ID of the login. | [optional] |
| **is_suspicious** | **Boolean** | Whether the failed login is considered suspicious based on criteria including login failures and locations (true or false). | [optional] |
| **local_ip** | **String** | The external IP address of the asset where the login took place. | [optional] |
| **login_domain** | **String** | The domain of the asset where the login took place. | [optional] |
| **login_event_count** | **Integer** | Number of times a login attempt happened in the specified aggregation time interval for this login (1-hour window for logins in the past day, or 24-hour window for logins older than a day). | [optional] |
| **login_status** | **String** | The status of the login (Successful or Failed). | [optional] |
| **login_timestamp** | **String** | The date and time of the most recent attempt in the login. | [optional] |
| **login_type** | **String** | The type of the login.  For successful logins: &lt;ul&gt;&lt;li&gt;Interactive&lt;/li&gt;&lt;li&gt;Service&lt;/li&gt;&lt;li&gt;Terminal server&lt;/li&gt;&lt;li&gt;Cached credentials&lt;/li&gt;&lt;li&gt;Auditing&lt;/li&gt;&lt;/ul&gt; For failed logins: &lt;ul&gt;&lt;li&gt;Interactive&lt;/li&gt;&lt;li&gt;Network&lt;/li&gt;&lt;li&gt;Batch&lt;/li&gt;&lt;li&gt;Service&lt;/li&gt;&lt;li&gt;Unlock&lt;/li&gt;&lt;li&gt;Network cleartext&lt;/li&gt;&lt;li&gt;New credentials&lt;/li&gt;&lt;li&gt;Terminal server&lt;/li&gt;&lt;li&gt;Cached credentials&lt;/li&gt;&lt;li&gt;Auditing&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **remote_ip** | **String** | The remote IP address where the login was initiated. | [optional] |
| **user_sid** | **String** | The security identifier of the account on a Windows asset that made the login. | [optional] |
| **username** | **String** | The username of the account that made the login. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDiscoverAPILogin.new(
  account_id: null,
  account_name: null,
  account_type: null,
  admin_privileges: null,
  aggregation_time_interval: null,
  aid: null,
  cid: null,
  failure_description: null,
  host_city: null,
  host_country: null,
  host_id: null,
  hostname: null,
  id: null,
  is_suspicious: null,
  local_ip: null,
  login_domain: null,
  login_event_count: null,
  login_status: null,
  login_timestamp: null,
  login_type: null,
  remote_ip: null,
  user_sid: null,
  username: null
)
```

