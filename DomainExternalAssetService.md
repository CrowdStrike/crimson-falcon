# Falcon::DomainExternalAssetService

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applications** | [**Array&lt;DomainExternalAssetApplication&gt;**](DomainExternalAssetApplication.md) | Details about the applications associated to the service | [optional] |
| **blob_links** | [**DomainExternalAssetServiceBlobsLinks**](DomainExternalAssetServiceBlobsLinks.md) |  | [optional] |
| **cloud_provider** | **String** | The cloud provider name | [optional] |
| **cpes** | **Array&lt;String&gt;** | A list of Common Platform Enumeration identifiers for this service. The schema format is: cpe:&lt;cpe_version&gt;:&lt;part&gt;:&lt;vendor&gt;:&lt;product&gt;:&lt;version&gt;:&lt;update&gt;:&lt;edition&gt;:&lt;language&gt;:&lt;sw_edition&gt;:&lt;target_sw&gt;:&lt;target_hw&gt;:&lt;other&gt; | [optional] |
| **first_seen** | **Time** | The first time this service was observed | [optional] |
| **hosting_provider** | **String** | The hosting provider name | [optional] |
| **http_attributes** | [**DomainExternalAssetHTTPAttributes**](DomainExternalAssetHTTPAttributes.md) |  | [optional] |
| **id** | **String** | The unique external asset identifier |  |
| **last_seen** | **Time** | The date on which this was last scanned |  |
| **os** | **String** | The operating system the service is running on | [optional] |
| **platform_name** | **String** | The name of the platform on which the service is running (Windows, Mac, Linux). | [optional] |
| **port** | **Integer** | The port on which the service is accessible |  |
| **protocol** | **String** | The protocol used to access this service |  |
| **status** | **String** | The availability status for this service |  |
| **status_code** | **Integer** | The status code returned by the service |  |
| **subsidiaries** | [**Array&lt;DomainExternalAssetSubsidiary&gt;**](DomainExternalAssetSubsidiary.md) | List of subsidiaries that the asset belongs to | [optional] |
| **tls** | [**DomainExternalAssetSSLRecord**](DomainExternalAssetSSLRecord.md) |  | [optional] |
| **transport** | **String** | The network transport used to access this service |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetService.new(
  applications: null,
  blob_links: null,
  cloud_provider: null,
  cpes: null,
  first_seen: null,
  hosting_provider: null,
  http_attributes: null,
  id: null,
  last_seen: null,
  os: null,
  platform_name: null,
  port: null,
  protocol: null,
  status: null,
  status_code: null,
  subsidiaries: null,
  tls: null,
  transport: null
)
```

