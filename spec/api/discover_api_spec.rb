=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and examples, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation).     To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`.    Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2023-05-30T23:10:32Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::DiscoverApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DiscoverApi' do
  before do
    # run before each test
    @api_instance = Falcon::DiscoverApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DiscoverApi' do
    it 'should create an instance of DiscoverApi' do
      expect(@api_instance).to be_instance_of(Falcon::DiscoverApi)
    end
  end

  # unit tests for get_accounts
  # Get details on accounts by providing one or more IDs.
  # @param ids One or more account IDs (max: 100). Find account IDs with GET &#x60;/discover/queries/accounts/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIAccountEntitiesResponse]
  describe 'get_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_applications
  # Get details on applications by providing one or more IDs.
  # @param ids The IDs of applications to retrieve. (Min: 1, Max: 100)
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIApplicationEntitiesResponse]
  describe 'get_applications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_hosts
  # Get details on assets by providing one or more IDs.
  # @param ids One or more asset IDs (max: 100). Find asset IDs with GET &#x60;/discover/queries/hosts/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPIHostEntitiesResponse]
  describe 'get_hosts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_logins
  # Get details on logins by providing one or more IDs.
  # @param ids One or more login IDs (max: 100). Find login IDs with GET &#x60;/discover/queries/logins/v1&#x60;
  # @param [Hash] opts the optional parameters
  # @return [DomainDiscoverAPILoginEntitiesResponse]
  describe 'get_logins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_accounts
  # Search for accounts in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of account IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of account IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort accounts by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;username|asc&lt;/li&gt;&lt;li&gt;last_failed_login_timestamp|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter accounts using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;Yes&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;last_successful_login_type:&#39;Terminal server&#39;&lt;/li&gt;&lt;/ul&gt;
  # @return [MsaQueryResponse]
  describe 'query_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_active_discovery_networks
  # Search for active discovery networks in your environment by providing an FQL filter and paging details. returns a set of network IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_useruuid User UUID
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of active discovery network ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort active discovery networks by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for active discovery networks in your environment by providing an FQL filter.
  # @return [MsaspecQueryResponse]
  describe 'query_active_discovery_networks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_active_discovery_rules
  # Search for active discovery rules in your environment by providing an FQL filter and paging details. returns a set of rule IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_useruuid User UUID
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of active discovery rule ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort active discovery rules by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for active discovery rules in your environment by providing an FQL filter.
  # @return [MsaspecQueryResponse]
  describe 'query_active_discovery_rules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_active_discovery_scanners
  # Search for active discovery scanners in your environment by providing an FQL filter and paging details. returns a set of scanner IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_useruuid User UUID
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of active discovery scanner ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort active discovery scanners by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for active discovery scanners in your environment by providing an FQL filter.
  # @return [MsaspecQueryResponse]
  describe 'query_active_discovery_scanners test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_active_discovery_scans
  # Search for active discovery scans in your environment by providing an FQL filter and paging details. returns a set of scan IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_cs_useruuid User UUID
  # @option opts [Integer] :offset The index of the starting resource.
  # @option opts [Integer] :limit The number of active discovery scan ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort active discovery scans by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for active discovery scans in your environment by providing an FQL filter.
  # @return [MsaspecQueryResponse]
  describe 'query_active_discovery_scans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_applications
  # Search for applications in your environment by providing an FQL filter and paging details. returns a set of application IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of application ids to return in this response (Min: 1, Max: 100, Default: 100).
  # @option opts [String] :sort Sort applications by their properties. A single sort field is allowed.
  # @option opts [String] :filter Search for applications in your environment by providing an FQL filter.
  # @return [MsaspecQueryResponse]
  describe 'query_applications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_hosts
  # Search for assets in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of asset IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of asset IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort assets by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;hostname|asc&lt;/li&gt;&lt;li&gt;product_type_desc|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter assets using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;entity_type:&#39;managed&#39;&lt;/li&gt;&lt;li&gt;product_type_desc:&#39;Workstation&#39;&lt;/li&gt;&lt;li&gt;platform_name:&#39;Windows&#39;&lt;/li&gt;&lt;li&gt;last_seen_timestamp:&gt;&#39;now-7d&#39;&lt;/li&gt;&lt;/ul&gt;
  # @return [MsaspecQueryResponse]
  describe 'query_hosts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_logins
  # Search for logins in your environment by providing an FQL (Falcon Query Language) filter and paging details. Returns a set of login IDs which match the filter criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset An offset used with the &#x60;limit&#x60; parameter to manage pagination of results. On your first request, don’t provide an &#x60;offset&#x60;. On subsequent requests, add previous &#x60;offset&#x60; with the previous &#x60;limit&#x60; to continue from that place in the results.
  # @option opts [Integer] :limit The number of login IDs to return in this response (min: 1, max: 100, default: 100). Use with the &#x60;offset&#x60; parameter to manage pagination of results.
  # @option opts [String] :sort Sort logins by their properties. A single sort field is allowed. Common sort options include:  &lt;ul&gt;&lt;li&gt;account_name|asc&lt;/li&gt;&lt;li&gt;login_timestamp|desc&lt;/li&gt;&lt;/ul&gt;
  # @option opts [String] :filter Filter logins using an FQL query. Common filter options include:  &lt;ul&gt;&lt;li&gt;account_type:&#39;Local&#39;&lt;/li&gt;&lt;li&gt;login_type:&#39;Interactive&#39;&lt;/li&gt;&lt;li&gt;first_seen_timestamp:&lt;&#39;now-7d&#39;&lt;/li&gt;&lt;li&gt;admin_privileges:&#39;No&#39;&lt;/li&gt;&lt;/ul&gt;
  # @return [MsaQueryResponse]
  describe 'query_logins test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
