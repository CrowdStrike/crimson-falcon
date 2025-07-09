# Falcon::DomainOCITenancyValidated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **home_region** | **String** | Region of OCI Account/Tenancy |  |
| **overall_status** | **String** | OCI Tenancy Registration status |  |
| **products** | **Hash&lt;String, Hash&gt;** | Tenancy registration details for each product and feature |  |
| **tenancy_ocid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainOCITenancyValidated.new(
  cid: null,
  home_region: null,
  overall_status: null,
  products: null,
  tenancy_ocid: null
)
```

