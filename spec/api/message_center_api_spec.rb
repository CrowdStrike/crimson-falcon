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

# Unit tests for Falcon::MessageCenterApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessageCenterApi' do
  before do
    # run before each test
    @api_instance = Falcon::MessageCenterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessageCenterApi' do
    it 'should create an instance of MessageCenterApi' do
      expect(@api_instance).to be_instance_of(Falcon::MessageCenterApi)
    end
  end

  # unit tests for aggregate_cases
  # Retrieve aggregate case values based on the matched filter
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'aggregate_cases test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for case_add_activity
  # Add an activity to case. Only activities of type comment are allowed via API
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'case_add_activity test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for case_add_attachment
  # Upload an attachment for the case.
  # Upload an attachment for the case. Maximum upload size allowed is *15 MB*.   Filename must start with *[a-zA-Z0-9_-]*. Allowed characters in file name are *[a-zA-Z0-9-_.\\s]*.    Maximum file name is *255* characters      Following attachment types are allowed:   - png   - bmp   - jpg   - jpeg   - gif   - pdf   - doc   - docx   - xls   - xlsx   - pptx   - txt   - csv
  # @param case_id Case ID
  # @param user_uuid User UUID
  # @param file File Body
  # @param [Hash] opts the optional parameters
  # @return [ApiMessageCenterAttachmentUploadResponse]
  describe 'case_add_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for case_download_attachment
  # retrieves an attachment for the case, given the attachment id
  # @param id attachment ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'case_download_attachment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_case
  # create a new case
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyAffectedEntities]
  describe 'create_case test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_case_v2
  # create a new case
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyAffectedEntities]
  describe 'create_case_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_case_activity_by_ids
  # Retrieve activities for given id&#39;s
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiMessageCenterActivityResponse]
  describe 'get_case_activity_by_ids test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_case_entities_by_ids
  # Retrieve message center cases
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiMessageCenterCasesResponse]
  describe 'get_case_entities_by_ids test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_activity_by_case_id
  # Retrieve activities id&#39;s for a case
  # @param case_id Case ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   activity.created_time activity.type
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_activity_by_case_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_cases_ids_by_filter
  # Retrieve case id&#39;s that match the provided filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The property to sort on, followed by a dot (.), followed by the sort direction, either \&quot;asc\&quot; or \&quot;desc\&quot;.
  # @option opts [String] :filter Optional filter and sort criteria in the form of an FQL query. Allowed filters are:   _all activity.body case.aids case.assigner.display_name case.assigner.first_name case.assigner.last_name case.assigner.uid case.assigner.uuid case.body case.created_time case.detections.id case.hosts case.id case.incidents.id case.ip_addresses case.key case.last_modified_time case.status case.title case.type
  # @option opts [String] :offset Starting index of overall result set from which to return ids.
  # @return [MsaQueryResponse]
  describe 'query_cases_ids_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
