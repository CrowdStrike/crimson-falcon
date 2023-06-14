=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

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
