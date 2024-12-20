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

# Unit tests for Falcon::Malquery
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Malquery' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::Malquery.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of Malquery' do
    it 'should create an instance of Malquery' do
      expect(@api_instance).to be_instance_of(Falcon::Malquery)
    end
  end

  # unit tests for get_mal_query_download_v1
  # Download a file indexed by MalQuery. Specify the file using its SHA256. Only one file is supported at this time
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_mal_query_download_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_mal_query_entities_samples_fetch_v1
  # Fetch a zip archive with password &#39;infected&#39; containing the samples. Call this once the /entities/samples-multidownload request has finished processing
  # @param ids Multidownload job id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_mal_query_entities_samples_fetch_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_mal_query_metadata_v1
  # Retrieve indexed files metadata by their hash
  # @param ids The file SHA256.
  # @param [Hash] opts the optional parameters
  # @return [MalquerySampleMetadataResponse]
  describe 'get_mal_query_metadata_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_mal_query_quotas_v1
  # Get information about search and download quotas in your environment
  # @param [Hash] opts the optional parameters
  # @return [MalqueryRateLimitsResponse]
  describe 'get_mal_query_quotas_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_mal_query_request_v1
  # Check the status and results of an asynchronous request, such as hunt or exact-search. Supports a single request id at this time.
  # @param ids Identifier of a MalQuery request
  # @param [Hash] opts the optional parameters
  # @return [MalqueryRequestResponse]
  describe 'get_mal_query_request_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_mal_query_entities_samples_multidownload_v1
  # Schedule samples for download. Use the result id with the /request endpoint to check if the download is ready after which you can call the /entities/samples-fetch to get the zip
  # @param body Download request. See model for more details.
  # @param [Hash] opts the optional parameters
  # @return [MalqueryExternalQueryResponse]
  describe 'post_mal_query_entities_samples_multidownload_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_mal_query_exact_search_v1
  # Search Falcon MalQuery for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity. You can filter results on criteria such as file type, file size and first seen date. Returns a request id which can be used with the /request endpoint
  # @param body Exact search parameters. See model for more details.
  # @param [Hash] opts the optional parameters
  # @return [MalqueryExternalQueryResponse]
  describe 'post_mal_query_exact_search_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_mal_query_fuzzy_search_v1
  # Search Falcon MalQuery quickly, but with more potential for false positives. Search for a combination of hex patterns and strings in order to identify samples based upon file content at byte level granularity.
  # @param body Fuzzy search parameters. See model for more details.
  # @param [Hash] opts the optional parameters
  # @return [MalqueryFuzzySearchResponse]
  describe 'post_mal_query_fuzzy_search_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_mal_query_hunt_v1
  # Schedule a YARA-based search for execution. Returns a request id which can be used with the /request endpoint
  # @param body Hunt parameters. See model for more details.
  # @param [Hash] opts the optional parameters
  # @return [MalqueryExternalQueryResponse]
  describe 'post_mal_query_hunt_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
