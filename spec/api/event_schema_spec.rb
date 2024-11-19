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

# Unit tests for Falcon::EventSchema
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventSchema' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::EventSchema.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of EventSchema' do
    it 'should create an instance of EventSchema' do
      expect(@api_instance).to be_instance_of(Falcon::EventSchema)
    end
  end

  # unit tests for fdrschema_combined_event_get
  # Fetch combined schema
  # @param [Hash] opts the optional parameters
  # @return [SchemaSensorEventResponseV1]
  describe 'fdrschema_combined_event_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fdrschema_entities_event_get
  # Fetch event schema by ID
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :ids Specify feed IDs to fetch
  # @return [SchemaSensorEventResponseV1]
  describe 'fdrschema_entities_event_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fdrschema_queries_event_get
  # Get list of event IDs given a particular query.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Limit of the data
  # @option opts [Integer] :offset Offset into the data
  # @option opts [String] :filter FQL filter of the data
  # @option opts [String] :sort Sort the data
  # @return [MsaspecQueryResponse]
  describe 'fdrschema_queries_event_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
