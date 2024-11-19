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

# Unit tests for Falcon::EventStreams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventStreams' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::EventStreams.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of EventStreams' do
    it 'should create an instance of EventStreams' do
      expect(@api_instance).to be_instance_of(Falcon::EventStreams)
    end
  end

  # unit tests for list_available_streams_o_auth2
  # Discover all event streams in your environment
  # @param app_id Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :format Format for streaming events. Valid values: json, flatjson
  # @return [MainDiscoveryResponseV2]
  describe 'list_available_streams_o_auth2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for refresh_active_stream_session
  # Refresh an active event stream. Use the URL shown in a GET /sensors/entities/datafeed/v2 response.
  # @param action_name Action name. Allowed value is refresh_active_stream_session.
  # @param app_id Label that identifies your connection. Max: 32 alphanumeric characters (a-z, A-Z, 0-9).
  # @param partition Partition to request data for.
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyMetaOnly]
  describe 'refresh_active_stream_session test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
