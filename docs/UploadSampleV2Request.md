# Falcon::UploadSampleV2Request

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sample** | **File** | Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;. |  |
| **file_name** | **String** | Name of the file. |  |
| **comment** | **String** | A descriptive comment to identify the file for other users. | [optional] |
| **is_confidential** | **Boolean** | Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;. | [optional][default to true] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::UploadSampleV2Request.new(
  sample: null,
  file_name: null,
  comment: null,
  is_confidential: null
)
```

