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

# Unit tests for Falcon::IdentityEntities
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IdentityEntities' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::IdentityEntities.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of IdentityEntities' do
    it 'should create an instance of IdentityEntities' do
      expect(@api_instance).to be_instance_of(Falcon::IdentityEntities)
    end
  end

  # unit tests for get_sensor_aggregates
  # Get sensor aggregates as specified via json in request body.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [MsaAggregatesResponse]
  describe 'get_sensor_aggregates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_sensor_details
  # Get details on one or more sensors by providing device IDs in a POST body. Supports up to a maximum of 5000 IDs.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ApiSensorDetailsResponseSwagger]
  describe 'get_sensor_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_sensors_by_filter
  # Search for sensors in your environment by hostname, IP, and other criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-200]
  # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @return [MsaspecQueryResponse]
  describe 'query_sensors_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
