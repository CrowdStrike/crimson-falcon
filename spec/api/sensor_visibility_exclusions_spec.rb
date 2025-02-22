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

# Unit tests for Falcon::SensorVisibilityExclusions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SensorVisibilityExclusions' do
  before(:all) do
    # run before each test
    @api_instance = Falcon::SensorVisibilityExclusions.new
  end

  after(:all) do
    # run after each test
  end

  describe 'test an instance of SensorVisibilityExclusions' do
    it 'should create an instance of SensorVisibilityExclusions' do
      expect(@api_instance).to be_instance_of(Falcon::SensorVisibilityExclusions)
    end
  end

  # unit tests for create_sv_exclusions_v1
  # Create the sensor visibility exclusions
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [ExclusionsRespV1]
  describe 'create_sv_exclusions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_sensor_visibility_exclusions_v1
  # Delete the sensor visibility exclusions by id
  # @param ids The ids of the exclusions to delete
  # @param [Hash] opts the optional parameters
  # @option opts [String] :comment Explains why this exclusions was deleted
  # @return [MsaQueryResponse]
  describe 'delete_sensor_visibility_exclusions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_sensor_visibility_exclusions_v1
  # Get a set of Sensor Visibility Exclusions by specifying their IDs
  # @param ids The ids of the exclusions to retrieve
  # @param [Hash] opts the optional parameters
  # @return [SvExclusionsRespV1]
  describe 'get_sensor_visibility_exclusions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_sensor_visibility_exclusions_v1
  # Search for sensor visibility exclusions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The filter expression that should be used to limit the results.
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-500]
  # @option opts [String] :sort The sort expression that should be used to sort the results.
  # @return [MsaQueryResponse]
  describe 'query_sensor_visibility_exclusions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_sensor_visibility_exclusions_v1
  # Update the sensor visibility exclusions
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [SvExclusionsRespV1]
  describe 'update_sensor_visibility_exclusions_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
