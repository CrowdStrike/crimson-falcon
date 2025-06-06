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

# Unit tests for Falcon::CertificateBasedExclusions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CertificateBasedExclusions' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::CertificateBasedExclusions.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of CertificateBasedExclusions' do
    it 'should create an instance of CertificateBasedExclusions' do
      expect(@api_instance).to be_instance_of(Falcon::CertificateBasedExclusions)
    end
  end

  # unit tests for cb_exclusions_create_v1
  # Create new Certificate Based Exclusions.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiCertBasedExclusionRespV1]
  describe 'cb_exclusions_create_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for cb_exclusions_delete_v1
  # Delete the exclusions by id
  # @param ids The ids of the exclusions to delete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :comment The comment why these exclusions were deleted
  # @return [ApiCertBasedExclusionRespV1]
  describe 'cb_exclusions_delete_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for cb_exclusions_get_v1
  # Find all exclusion IDs matching the query with filter
  # @param ids The ids of the exclusions to retrieve
  # @param [Hash] opts the optional parameters
  # @return [ApiCertBasedExclusionRespV1]
  describe 'cb_exclusions_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for cb_exclusions_query_v1
  # Search for cert-based exclusions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-100]
  # @option opts [String] :sort The sort expression that should be used to sort the results.
  # @return [MsaspecQueryResponse]
  describe 'cb_exclusions_query_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for cb_exclusions_update_v1
  # Updates existing Certificate Based Exclusions
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiCertBasedExclusionRespV1]
  describe 'cb_exclusions_update_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for certificates_get_v1
  # Retrieves certificate signing information for a file
  # @param ids The SHA256 Hash of the file to retrieve certificate signing info for
  # @param [Hash] opts the optional parameters
  # @return [ApiRespCertificatesV1]
  describe 'certificates_get_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
