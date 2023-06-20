=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

CrowdStrike Swagger API Version: 2023-05-30T23:10:32Z

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::SampleUploadsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SampleUploadsApi' do
  before do
    # run before each test
    @api_instance = Falcon::SampleUploadsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SampleUploadsApi' do
    it 'should create an instance of SampleUploadsApi' do
      expect(@api_instance).to be_instance_of(Falcon::SampleUploadsApi)
    end
  end

  # unit tests for archive_delete_v1
  # Delete an archive that was uploaded previously
  # @param id The archive SHA256.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive_delete_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for archive_get_v1
  # Retrieves the archives upload operation statuses. Status &#x60;done&#x60; means that archive was processed successfully. Status &#x60;error&#x60; means that archive was not processed successfully.
  # @param id The archive SHA256.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_files If &#x60;true&#x60; includes processed archive files in response.
  # @return [ClientArchiveCreateResponseV1]
  describe 'archive_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for archive_list_v1
  # Retrieves the archives files in chunks.
  # @param id The archive SHA256.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Max number of files to retrieve.
  # @option opts [String] :offset Offset from where to get files.
  # @return [ClientArchiveListFilesResponseV1]
  describe 'archive_list_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for archive_upload_v1
  # Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis. This method is deprecated in favor of &#x60;/archives/entities/archives/v2&#x60;
  # @param name Name of the archive.
  # @param body Content of the uploaded archive in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 100 MB.  Accepted file formats:  - Portable executables: &#x60;.zip&#x60;, &#x60;.7z&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :password Archive password.
  # @option opts [Boolean] :is_confidential Defines visibility of this file, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;.
  # @option opts [String] :comment A descriptive comment to identify the file for other users.
  # @return [ClientArchiveCreateResponseV1]
  describe 'archive_upload_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for archive_upload_v2
  # Uploads an archive and extracts files list from it. Operation is asynchronous use &#x60;/archives/entities/archives/v1&#x60; to check the status. After uploading, use &#x60;/archives/entities/extractions/v1&#x60; to copy the file to internal storage making it available for content analysis.
  # @param file Content of the uploaded archive. For example, use &#x60;--form file&#x3D;@$FILE_PATH;type&#x3D;&#x60; when using cURL. Supported file types are &#x60;application/zip&#x60; and &#x60;application/x-7z-compressed&#x60;.
  # @param name Name of the archive. For example, use &#x60;--form name&#x3D;&#x60; when using cURL.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :password Archive password. For example, use &#x60;--form password&#x3D;&#x60; when using cURL.
  # @option opts [Boolean] :is_confidential Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console. For example, use &#x60;--form is_confidential&#x3D;&#x60; when using cURL.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;.
  # @option opts [String] :comment A descriptive comment to identify the file for other users. For example, use &#x60;--form comment&#x3D;&#x60; when using cURL.
  # @return [ClientArchiveCreateResponseV1]
  describe 'archive_upload_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_sample_v3
  # Removes a sample, including file, meta and submissions from the collection
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'delete_sample_v3 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extraction_create_v1
  # Extracts files from an uploaded archive and copies them to internal storage making it available for content analysis.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ClientExtractionCreateResponseV1]
  describe 'extraction_create_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extraction_get_v1
  # Retrieves the files extraction operation statuses. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.
  # @param id The extraction operation ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_files If &#x60;true&#x60; includes processed archive files in response.
  # @return [ClientExtractionCreateResponseV1]
  describe 'extraction_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for extraction_list_v1
  # Retrieves the files extractions in chunks. Status &#x60;done&#x60; means that all files were processed successfully. Status &#x60;error&#x60; means that at least one of the file could not be processed.
  # @param id The extraction operation ID.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Max number of file extractions to retrieve.
  # @option opts [String] :offset Offset from where to get file extractions.
  # @return [ClientExtractionListFilesResponseV1]
  describe 'extraction_list_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_sample_v3
  # Retrieves the file associated with the given ID (SHA256)
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :password_protected Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39;
  # @return [String]
  describe 'get_sample_v3 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_sample_v3
  # Upload a file for further cloud analysis. After uploading, call the specific analysis API endpoint.
  # @param sample Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;.
  # @param file_name Name of the file.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :comment A descriptive comment to identify the file for other users.
  # @option opts [Boolean] :is_confidential Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;.
  # @return [ClientSampleMetadataResponseV2]
  describe 'upload_sample_v3 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
