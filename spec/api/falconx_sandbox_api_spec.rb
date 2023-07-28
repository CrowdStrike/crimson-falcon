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

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::FalconxSandboxApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FalconxSandboxApi' do
  before do
    # run before each test
    @api_instance = Falcon::FalconxSandboxApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FalconxSandboxApi' do
    it 'should create an instance of FalconxSandboxApi' do
      expect(@api_instance).to be_instance_of(Falcon::FalconxSandboxApi)
    end
  end

  # unit tests for delete_report
  # Delete report based on the report ID. Operation can be checked for success by polling for the report ID on the report-summaries endpoint.
  # @param ids ID of a report.
  # @param [Hash] opts the optional parameters
  # @return [FalconxQueryResponse]
  describe 'delete_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_sample_v2
  # Removes a sample, including file, meta and submissions from the collection
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'delete_sample_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_artifacts
  # Download IOC packs, PCAP files, memory dumps, and other analysis artifacts.
  # @param id ID of an artifact, such as an IOC pack, PCAP file, memory dump, or actor image. Find an artifact ID in a report or summary.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name The name given to your downloaded file.
  # @option opts [String] :accept_encoding Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format.
  # @return [MsaspecQueryResponse]
  describe 'get_artifacts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_memory_dump
  # Get memory dump content, as binary
  # @param id Memory dump id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name The name given to your downloaded file.
  # @option opts [String] :accept_encoding Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format.
  # @return [MsaspecQueryResponse]
  describe 'get_memory_dump test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_memory_dump_extracted_strings
  # Get extracted strings from a memory dump
  # @param id Extracted strings id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name The name given to your downloaded file.
  # @option opts [String] :accept_encoding Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format.
  # @return [MsaspecQueryResponse]
  describe 'get_memory_dump_extracted_strings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_memory_dump_hex_dump
  # Get hex view of a memory dump
  # @param id Hex dump id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name The name given to your downloaded file.
  # @option opts [String] :accept_encoding Format used to compress your downloaded file. Currently, you must provide the value &#x60;gzip&#x60;, the only valid format.
  # @return [MsaspecQueryResponse]
  describe 'get_memory_dump_hex_dump test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_reports
  # Get a full sandbox report.
  # @param ids ID of a report. Find a report ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/reports/v1&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [FalconxReportV1Response]
  describe 'get_reports test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_sample_v2
  # Retrieves the file associated with the given ID (SHA256)
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :password_protected Flag whether the sample should be zipped and password protected with pass&#x3D;&#39;infected&#39;
  # @return [String]
  describe 'get_sample_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_submissions
  # Check the status of a sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  # @param ids ID of a submitted malware sample. Find a submission ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/submissions/v1&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [FalconxSubmissionV1Response]
  describe 'get_submissions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_summary_reports
  # Get a short summary version of a sandbox report.
  # @param ids ID of a summary. Find a summary ID from the response when submitting a malware sample or search with &#x60;/falconx/queries/reports/v1&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [FalconxSummaryReportV1Response]
  describe 'get_summary_reports test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_reports
  # Find sandbox reports by providing an FQL filter and paging details. Returns a set of report IDs that match your criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset The offset to start retrieving reports from.
  # @option opts [Integer] :limit Maximum number of report IDs to return. Max: 5000.
  # @option opts [String] :sort Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;.
  # @return [MsaspecQueryResponse]
  describe 'query_reports test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_sample_v1
  # Retrieves a list with sha256 of samples that exist and customer has rights to access them, maximum number of accepted items is 200
  # @param body Pass a list of sha256s to check if the exist. It will be returned the list of existing hashes.
  # @param [Hash] opts the optional parameters
  # @return [MsaQueryResponse]
  describe 'query_sample_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_submissions
  # Find submission IDs for uploaded files by providing an FQL filter and paging details. Returns a set of submission IDs that match your criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. For more information about FQL queries, see [our FQL documentation in Falcon](https://falcon.crowdstrike.com/support/documentation/45/falcon-query-language-feature-guide).
  # @option opts [String] :offset The offset to start retrieving submissions from.
  # @option opts [Integer] :limit Maximum number of submission IDs to return. Max: 5000.
  # @option opts [String] :sort Sort order: &#x60;asc&#x60; or &#x60;desc&#x60;.
  # @return [MsaspecQueryResponse]
  describe 'query_submissions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for submit
  # Submit an uploaded file or a URL for sandbox analysis. Time required for analysis varies but is usually less than 15 minutes.
  # @param body Submit either a URL or a sample SHA256 for sandbox analysis. The sample file must have been previously uploaded through &#x60;/samples/entities/samples/v2&#x60;. You must specify a JSON object that includes the &#x60;falconx.SubmissionParametersV1&#x60; key/value pairs shown below.  **&#x60;environment_id&#x60;**: Specifies the sandbox environment used for analysis. Values:  - &#x60;300&#x60;: Linux Ubuntu 16.04, 64-bit - &#x60;200&#x60;: Android (static analysis) - &#x60;160&#x60;: Windows 10, 64-bit - &#x60;110&#x60;: Windows 7, 64-bit - &#x60;100&#x60;: Windows 7, 32-bit  **&#x60;sha256&#x60;** ID of the sample, which is a SHA256 hash value. Find a sample ID from the response when uploading a malware sample or search with &#x60;/falconx/queries/submissions/v1&#x60;.The &#x60;url&#x60; parameter must be unset if &#x60;sha256&#x60; is used.  **&#x60;url&#x60;** A web page or file URL. It can be HTTP(S) or FTP. The &#x60;sha256&#x60; parameter must be unset if &#x60;url&#x60; is used.  **&#x60;action_script&#x60;** (optional): Runtime script for sandbox analysis. Values:  - &#x60;default&#x60; - &#x60;default_maxantievasion&#x60; - &#x60;default_randomfiles&#x60; - &#x60;default_randomtheme&#x60; - &#x60;default_openie&#x60;  **&#x60;command_line&#x60;** (optional): Command line script passed to the submitted file at runtime. Max length: 2048 characters  **&#x60;document_password&#x60;** (optional): Auto-filled for Adobe or Office files that prompt for a password. Max length: 32 characters  **&#x60;enable_tor&#x60;** (optional): Deprecated, please use &#x60;network_settings&#x60; instead. If &#x60;true&#x60;, sandbox analysis routes network traffic via TOR. Default: &#x60;false&#x60;.  **&#x60;network_settings&#x60;** (optional): Specifies the sandbox network_settings used for analysis. Values:  - &#x60;default&#x60;: Fully operating network - &#x60;tor&#x60;: Route network traffic via TOR - &#x60;simulated&#x60;: Simulate network traffic - &#x60;offline&#x60;: No network traffic  **&#x60;submit_name&#x60;** (optional): Name of the malware sample that&#39;s used for file type detection and analysis  **&#x60;system_date&#x60;** (optional): Set a custom date in the format &#x60;yyyy-MM-dd&#x60; for the sandbox environment  **&#x60;system_time&#x60;** (optional): Set a custom time in the format &#x60;HH:mm&#x60; for the sandbox environment.
  # @param [Hash] opts the optional parameters
  # @return [FalconxSubmissionV1Response]
  describe 'submit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_sample_v2
  # Upload a file for sandbox analysis. After uploading, use &#x60;/falconx/entities/submissions/v1&#x60; to start analyzing the file.
  # @param sample Content of the uploaded sample in binary format. For example, use &#x60;--data-binary @$FILE_PATH&#x60; when using cURL. Max file size: 256 MB.  Accepted file formats:  - Portable executables: &#x60;.exe&#x60;, &#x60;.scr&#x60;, &#x60;.pif&#x60;, &#x60;.dll&#x60;, &#x60;.com&#x60;, &#x60;.cpl&#x60;, etc. - Office documents: &#x60;.doc&#x60;, &#x60;.docx&#x60;, &#x60;.ppt&#x60;, &#x60;.pps&#x60;, &#x60;.pptx&#x60;, &#x60;.ppsx&#x60;, &#x60;.xls&#x60;, &#x60;.xlsx&#x60;, &#x60;.rtf&#x60;, &#x60;.pub&#x60; - PDF - APK - Executable JAR - Windows script component: &#x60;.sct&#x60; - Windows shortcut: &#x60;.lnk&#x60; - Windows help: &#x60;.chm&#x60; - HTML application: &#x60;.hta&#x60; - Windows script file: &#x60;.wsf&#x60; - Javascript: &#x60;.js&#x60; - Visual Basic: &#x60;.vbs&#x60;,  &#x60;.vbe&#x60; - Shockwave Flash: &#x60;.swf&#x60; - Perl: &#x60;.pl&#x60; - Powershell: &#x60;.ps1&#x60;, &#x60;.psd1&#x60;, &#x60;.psm1&#x60; - Scalable vector graphics: &#x60;.svg&#x60; - Python: &#x60;.py&#x60; - Linux ELF executables - Email files: MIME RFC 822 &#x60;.eml&#x60;, Outlook &#x60;.msg&#x60;.
  # @param file_name Name of the file.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :comment A descriptive comment to identify the file for other users.
  # @option opts [Boolean] :is_confidential Defines visibility of this file in Falcon MalQuery, either via the API or the Falcon console.  - &#x60;true&#x60;: File is only shown to users within your customer account - &#x60;false&#x60;: File can be seen by other CrowdStrike customers   Default: &#x60;true&#x60;.
  # @return [ClientSampleMetadataResponseV2]
  describe 'upload_sample_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
