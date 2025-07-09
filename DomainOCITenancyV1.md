# Falcon::DomainOCITenancyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **conditions** | [**Array&lt;DomainCloudCondition&gt;**](DomainCloudCondition.md) |  | [optional] |
| **created_at** | **Time** | OCI Tenancy created date |  |
| **cspm_enabled** | **Boolean** |  |  |
| **finger_print** | **String** | OCI Tenancy Registration fingerprint |  |
| **group_name** | **String** | OCI Tenancy group name |  |
| **group_ocid** | **String** | Group OCID |  |
| **home_region** | **String** | Region of OCI Account/Tenancy |  |
| **is_connected** | **Boolean** | Connection to OCI succeeded or not |  |
| **key_age** | **Integer** | OCI Tenancy key age |  |
| **overall_status** | **String** | OCI Tenancy Registration status |  |
| **policy_name** | **String** | OCI Tenancy policy name |  |
| **policy_ocid** | **String** | Policy OCID |  |
| **private_key** | **String** | OCI Tenancy Registration private key | [optional] |
| **products** | **Hash&lt;String, Hash&gt;** | Tenancy registration details for each product and feature |  |
| **public_key** | **String** | OCI Tenancy Registration public key |  |
| **stack_name** | **String** | OCI Tenancy stack name |  |
| **stack_ocid** | **String** | OCI Tenancy stack OCID |  |
| **tenancy_name** | **String** |  |  |
| **tenancy_ocid** | **String** | OCI provided unique identifier for the account. |  |
| **updated_at** | **Time** | OCI Tenancy updated date |  |
| **user_email** | **String** | User email |  |
| **user_name** | **String** | OCI Tenancy user name |  |
| **user_ocid** | **String** | User OCID |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyV1.new(
  cid: null,
  conditions: null,
  created_at: null,
  cspm_enabled: null,
  finger_print: null,
  group_name: null,
  group_ocid: null,
  home_region: null,
  is_connected: null,
  key_age: null,
  overall_status: null,
  policy_name: null,
  policy_ocid: null,
  private_key: null,
  products: null,
  public_key: null,
  stack_name: null,
  stack_ocid: null,
  tenancy_name: null,
  tenancy_ocid: null,
  updated_at: null,
  user_email: null,
  user_name: null,
  user_ocid: null
)
```

