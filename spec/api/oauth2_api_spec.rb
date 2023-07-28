=begin
Crimson Falcon - Ruby Client SDK

Code auto-generated by OpenAPI Generator; DO NOT EDIT.

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

=end

require 'spec_helper'
require 'json'

# Unit tests for Falcon::Oauth2Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Oauth2Api' do
  before do
    # run before each test
    @api_instance = Falcon::Oauth2Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Oauth2Api' do
    it 'should create an instance of Oauth2Api' do
      expect(@api_instance).to be_instance_of(Falcon::Oauth2Api)
    end
  end

  # unit tests for oauth2_access_token
  # Generate an OAuth2 access token
  # @param client_id The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
  # @param client_secret The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :member_cid For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID
  # @return [DomainAccessTokenResponseV1]
  describe 'oauth2_access_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for oauth2_revoke_token
  # Revoke a previously issued OAuth2 access token before the end of its standard 30-minute lifespan.
  # @param token The OAuth2 access token you want to revoke.  Include your API client ID and secret in basic auth format (&#x60;Authorization: basic &lt;encoded API client ID and secret&gt;&#x60;) in your request header.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :client_id The OAuth2 client ID you are revoking the token for.
  # @return [MsaReplyMetaOnly]
  describe 'oauth2_revoke_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
