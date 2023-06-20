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
