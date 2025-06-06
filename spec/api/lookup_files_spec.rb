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

# Unit tests for Falcon::LookupFiles
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LookupFiles' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::LookupFiles.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of LookupFiles' do
    it 'should create an instance of LookupFiles' do
      expect(@api_instance).to be_instance_of(Falcon::LookupFiles)
    end
  end

  # unit tests for create_file_v1
  # Creates a lookup file
  # @param file File to be uploaded
  # @param name Name used to identify the file
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_username Requester Username.
  # @option opts [String] :x_cs_useruuid Requester UUID.
  # @option opts [String] :description File description
  # @option opts [String] :id Unique identifier of the file being updated.
  # @option opts [String] :repo Name of repository or view to save the file
  # @return [DomainLookupFileWrapper]
  describe 'create_file_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_file_v1
  # Updates a lookup file
  # @param id Unique identifier of the file being updated.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_username Requester Username.
  # @option opts [String] :x_cs_useruuid Requester UUID.
  # @option opts [String] :description File description
  # @option opts [File] :file File to be uploaded
  # @return [DomainLookupFileWrapper]
  describe 'update_file_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
