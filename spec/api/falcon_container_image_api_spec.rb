=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::FalconContainerImageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FalconContainerImageApi' do
  before do
    # run before each test
    @api_instance = Falcon::FalconContainerImageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FalconContainerImageApi' do
    it 'should create an instance of FalconContainerImageApi' do
      expect(@api_instance).to be_instance_of(Falcon::FalconContainerImageApi)
    end
  end

  # unit tests for create_registry_entities
  # Create a registry entity using the provided details
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalRegistryResponse]
  describe 'create_registry_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_registry_entities
  # Delete the registry entity identified by the entity UUID
  # @param ids Registry entity UUID
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalRegistryListResponse]
  describe 'delete_registry_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_registry_entities
  # Retrieve registry entities identified by the customer id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @option opts [String] :sort The field to sort on, e.g. id.desc or id.asc.
  # @return [DomainExternalQueryResponse]
  describe 'read_registry_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_registry_entities_by_uuid
  # Retrieve the registry entity identified by the entity UUID
  # @param ids Registry entity UUID
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalRegistryListResponse]
  describe 'read_registry_entities_by_uuid test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_registry_entities
  # Update the registry entity, as identified by the entity UUID, using the provided details
  # @param id Registry entity UUID
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [DomainExternalRegistryResponse]
  describe 'update_registry_entities test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
