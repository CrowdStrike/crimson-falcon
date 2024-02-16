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

# Unit tests for Falcon::HostsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HostsApi' do
  before do
    # run before each test
    @api_instance = Falcon::HostsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HostsApi' do
    it 'should create an instance of HostsApi' do
      expect(@api_instance).to be_instance_of(Falcon::HostsApi)
    end
  end

  # unit tests for entities_perform_action
  # Performs the specified action on the provided group IDs.
  # @param ids The group ids to act on
  # @param action_name The action to perform.
  # @param body
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :disable_hostname_check Bool to disable hostname check on add-member
  # @return [DeviceapiGroupsResponseV1]
  describe 'entities_perform_action test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_device_details_v2
  # Get details on one or more hosts by providing host IDs as a query parameter.  Supports up to a maximum 100 IDs.
  # @param ids The host agentIDs used to get details on
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiDeviceDetailsResponseSwagger]
  describe 'get_device_details_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_online_state_v1
  # Get the online status for one or more hosts by specifying each host’s unique ID. Successful requests return an HTTP 200 response and the status for each host identified by a &#x60;state&#x60; of &#x60;online&#x60;, &#x60;offline&#x60;, or &#x60;unknown&#x60; for each host, identified by host &#x60;id&#x60;.  Make a &#x60;GET&#x60; request to &#x60;/devices/queries/devices/v1&#x60; to get a list of host IDs.
  # @param ids The unique ID of the host to get the online status of.
  # @param [Hash] opts the optional parameters
  # @return [StateOnlineStateRespV1]
  describe 'get_online_state_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for perform_action_v2
  # Take various actions on the hosts in your environment. Contain or lift containment on a host. Delete or restore a host.
  # @param action_name Specify one of these actions:  - &#x60;contain&#x60; - This action contains the host, which stops any network communications to locations other than the CrowdStrike cloud and IPs specified in your [containment policy](https://falcon.crowdstrike.com/support/documentation/11/getting-started-guide#containmentpolicy) - &#x60;lift_containment&#x60;: This action lifts containment on the host, which returns its network communications to normal - &#x60;hide_host&#x60;: This action will delete a host. After the host is deleted, no new detections for that host will be reported via UI or APIs - &#x60;unhide_host&#x60;: This action will restore a host. Detection reporting will resume after the host is restored
  # @param body The host agent ID (AID) of the host you want to contain. Get an agent ID from a detection, the Falcon console, or the Streaming API.  Provide the ID in JSON format with the key &#x60;ids&#x60; and the value in square brackets, such as:   &#x60;\&quot;ids\&quot;: [\&quot;123456789\&quot;]&#x60;
  # @param [Hash] opts the optional parameters
  # @return [MsaReplyAffectedEntities]
  describe 'perform_action_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for post_device_details_v2
  # Get details on one or more hosts by providing host IDs in a POST body.  Supports up to a maximum 5000 IDs.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiDeviceDetailsResponseSwagger]
  describe 'post_device_details_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_device_login_history
  # Retrieve details about recent login sessions for a set of devices.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiLoginHistoryResponseV1]
  describe 'query_device_login_history test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_device_login_history_v2
  # Retrieve details about recent interactive login sessions for a set of devices powered by the Host Timeline. A max of 10 device ids can be specified
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiLoginHistoryResponseV1]
  describe 'query_device_login_history_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_devices_by_filter
  # Search for hosts in your environment by platform, hostname, IP, and other criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @return [MsaQueryResponse]
  describe 'query_devices_by_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_devices_by_filter_scroll
  # Search for hosts in your environment by platform, hostname, IP, and other criteria with continuous pagination capability (based on offset pointer which expires after 2 minutes with no maximum limit)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :offset The offset to page from, for the next result set
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @return [DeviceapiDeviceResponse]
  describe 'query_devices_by_filter_scroll test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_get_network_address_history_v1
  # Retrieve history of IP and MAC addresses of devices.
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiNetworkAddressHistoryResponseV1]
  describe 'query_get_network_address_history_v1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_hidden_devices
  # Retrieve hidden hosts that match the provided filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset The offset to start retrieving records from
  # @option opts [Integer] :limit The maximum records to return. [1-5000]
  # @option opts [String] :sort The property to sort by (e.g. status.desc or hostname.asc)
  # @option opts [String] :filter The filter expression that should be used to limit the results
  # @return [MsaQueryResponse]
  describe 'query_hidden_devices test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_device_tags
  # Append or remove one or more Falcon Grouping Tags on one or more hosts.  Tags must be of the form FalconGroupingTags/
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DeviceapiUpdateDeviceTagsSwaggerV1]
  describe 'update_device_tags test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
