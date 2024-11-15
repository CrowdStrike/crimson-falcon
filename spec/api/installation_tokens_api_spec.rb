=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

MIT License

Copyright (c) 2023 Crowdstrike

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::InstallationTokens
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InstallationTokens' do
  before do
    # run before each test
    @api_instance = Falcon::InstallationTokens.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstallationTokens' do
    it 'should create an instance of InstallationTokens' do
      expect(@api_instance).to be_instance_of(Falcon::InstallationTokens)
    end
  end

  # unit tests for audit_events_query
  # Search for audit events by providing an FQL filter and paging details.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from.
  # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
  # @option opts [String] :sort The property to sort by (e.g. timestamp.desc).
  # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;action:&#39;token_create&#39;&#x60;).
  # @return [MsaspecQueryResponse]
  describe 'audit_events_query test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for audit_events_read
  # Gets the details of one or more audit events by id.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids IDs of audit events to retrieve details for
  # @return [ApiAuditEventDetailsResponseV1]
  describe 'audit_events_read test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for customer_settings_read
  # Check current installation token settings.
  # @param [Hash] opts the optional parameters
  # @return [ApiCustomerSettingsResponseV1]
  describe 'customer_settings_read test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tokens_create
  # Creates a token.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiTokenDetailsResponseV1]
  describe 'tokens_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tokens_delete
  # Deletes a token immediately. To revoke a token, use PATCH /installation-tokens/entities/tokens/v1 instead.
  # @param ids The token ids to delete.
  # @param [Hash] opts the optional parameters
  # @return [MsaspecResponseFields]
  describe 'tokens_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tokens_query
  # Search for tokens by providing an FQL filter and paging details.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from.
  # @option opts [Integer] :limit The maximum records to return. [1-1000]. Defaults to 50.
  # @option opts [String] :sort The property to sort by (e.g. created_timestamp.desc).
  # @option opts [String] :filter The filter expression that should be used to limit the results (e.g., &#x60;status:&#39;valid&#39;&#x60;).
  # @return [MsaspecQueryResponse]
  describe 'tokens_query test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tokens_read
  # Gets the details of one or more tokens by id.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids IDs of tokens to retrieve details for
  # @return [ApiTokenDetailsResponseV1]
  describe 'tokens_read test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tokens_update
  # Updates one or more tokens. Use this endpoint to edit labels, change expiration, revoke, or restore.
  # @param ids The token ids to update.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaspecQueryResponse]
  describe 'tokens_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
