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

# Unit tests for Falcon::ContainerDetections
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContainerDetections' do
  before do
    # run before each test
    @api_instance = Falcon::ContainerDetections.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContainerDetections' do
    it 'should create an instance of ContainerDetections' do
      expect(@api_instance).to be_instance_of(Falcon::ContainerDetections)
    end
  end

  # unit tests for read_combined_detections
  # Retrieve image assessment detections identified by the provided filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @option opts [String] :sort The fields to sort the records on. Supported columns:  [containers_impacted detection_name detection_severity detection_type images_impacted last_detected]
  # @return [DetectionsApiCombinedDetections]
  describe 'read_combined_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_detections
  # Retrieve image assessment detection entities identified by the provided filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,detection_type,image_registry,image_repository,image_tag
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [DetectionsApiAssessmentDetections]
  describe 'read_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_detections_count
  # Aggregate count of detections
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  # @return [DetectionsApiDetectionsCount]
  describe 'read_detections_count test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_detections_count_by_severity
  # Aggregate counts of detections by severity
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  # @return [DetectionsApiDetectionsBySeverity]
  describe 'read_detections_count_by_severity test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for read_detections_count_by_type
  # Aggregate counts of detections by detection type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  # @return [DetectionsApiDetectionsByType]
  describe 'read_detections_count_by_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_detections
  # Retrieve image assessment detection entities identified by the provided filter criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter images using a query in Falcon Query Language (FQL). Supported filters:  cid,container_id,detection_type,id,image_digest,image_id,image_registry,image_repository,image_tag,name,severity
  # @option opts [Integer] :limit The upper-bound on the number of records to retrieve.
  # @option opts [Integer] :offset The offset from where to begin.
  # @return [CommonGenericEntityResponseString]
  describe 'search_detections test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
