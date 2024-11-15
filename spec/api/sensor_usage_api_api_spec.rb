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

# Unit tests for Falcon::SensorUsageApiApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SensorUsageApiApi' do
  before do
    # run before each test
    @api_instance = Falcon::SensorUsageApiApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SensorUsageApiApi' do
    it 'should create an instance of SensorUsageApiApi' do
      expect(@api_instance).to be_instance_of(Falcon::SensorUsageApiApi)
    end
  end

  # unit tests for get_sensor_usage_weekly
  # Fetches weekly average. Each data point represents the average of how many unique AIDs were seen per week for the previous 28 days.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter The FQL search filter. Allowed fields: \&quot;event_date\&quot; : A specified date that will be final date of the results returned. Specified date cannot be after the default.  Format: &#39;2024-06-11&#39;  Default: the current date, minus 2 days, in UTC \&quot;period\&quot; : An integer surrounded by single quotes representing the number of days to return.  Format: &#39;30&#39;  Default: &#39;28&#39;  Minimum: &#39;1&#39;  Maximum: &#39;395&#39; \&quot;selected_cids\&quot; : A comma separated list of CIDs to return data for. Caller must be a parent CID or have special access enabled.  Format: &#39;cid_1,cid_2,cid_3&#39;  Default: for parent CIDs the default is the parent and all children, otherwise the current CID
  # @return [ApiWeeklyAverageResponse]
  describe 'get_sensor_usage_weekly test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end