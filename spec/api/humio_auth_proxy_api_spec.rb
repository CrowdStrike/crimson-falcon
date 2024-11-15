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

# Unit tests for Falcon::HumioAuthProxy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HumioAuthProxy' do
  before do
    # run before each test
    @api_instance = Falcon::HumioAuthProxy.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HumioAuthProxy' do
    it 'should create an instance of HumioAuthProxy' do
      expect(@api_instance).to be_instance_of(Falcon::HumioAuthProxy)
    end
  end

  # unit tests for get_lookup_from_package_v1
  # Download lookup file in package from NGSIEM
  # @param repository name of repository
  # @param package name of package
  # @param filename name of lookup file
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_lookup_from_package_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lookup_from_package_with_namespace_v1
  # Download lookup file in namespaced package from NGSIEM
  # @param repository name of repository
  # @param namespace name of namespace
  # @param package name of package
  # @param filename name of lookup file
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_lookup_from_package_with_namespace_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_lookup_v1
  # Download lookup file from NGSIEM
  # @param repository name of repository
  # @param filename name of lookup file
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_lookup_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_search_status_v1
  # Get status of search
  # @param repository name of repository
  # @param id id of query
  # @param [Hash] opts the optional parameters
  # @return [MsaspecResponseFields]
  describe 'get_search_status_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for start_search_v1
  # Initiate search
  # @param repository name of repository
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'start_search_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for stop_search_v1
  # Stop search
  # @param repository name of repository
  # @param id id of query
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'stop_search_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_lookup_v1
  # Upload file to NGSIEM
  # @param repository name of repository
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'upload_lookup_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
