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

# Unit tests for Falcon::MsspApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MsspApi' do
  before do
    # run before each test
    @api_instance = Falcon::MsspApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MsspApi' do
    it 'should create an instance of MsspApi' do
      expect(@api_instance).to be_instance_of(Falcon::MsspApi)
    end
  end

  # unit tests for add_cid_group_members
  # Add new CID group member.
  # @param body Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required.
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'add_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_role
  # Create a link between user group and CID group, with zero or more additional roles. The call does not replace any existing link between them. User group ID and CID group ID have to be specified in request.
  # @param body &#39;user_group_id&#39;, &#39;cid_group_id&#39; and &#39;role_ids&#39; fields are required. Remaining are populated by system.
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'add_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_user_group_members
  # Add new user group member. Maximum 500 members allowed per user group.
  # @param body Both &#39;user_group_id&#39; and &#39;user_uuids&#39; fields are required.
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'add_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_cid_groups
  # Create new CID groups. Name is a required field but description is an optional field. Maximum 500 CID groups allowed.
  # @param body Only &#39;name&#39; and/or &#39;description&#39; fields are required. Remaining are assigned by the system.
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'create_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_user_groups
  # Create new user groups. Name is a required field but description is an optional field. Maximum 500 user groups allowed per customer.
  # @param body Only &#39;name&#39; and/or &#39;description&#39; fields are required. Remaining are assigned by the system.
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'create_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cid_group_members
  # Deprecated : Please use DELETE /entities/cid-group-members/v2. Delete CID group members.
  # @param body Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required.
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'delete_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cid_group_members_v2
  # Delete CID group members. Prevents removal of a cid group a cid group if it is only part of one cid group.
  # @param body Both &#39;cid_group_id&#39; and &#39;cids&#39; fields are required.
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'delete_cid_group_members_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cid_groups
  # Delete CID groups by ID.
  # @param cid_group_ids CID group ids to delete
  # @param [Hash] opts the optional parameters
  # @return [MsaEntitiesResponse]
  describe 'delete_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_user_group_members
  # Delete user group members entry.
  # @param body Both &#39;user_group_id&#39; and &#39;user_uuids&#39; fields are required.
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'delete_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_user_groups
  # Delete user groups by ID.
  # @param user_group_ids User group IDs to delete
  # @param [Hash] opts the optional parameters
  # @return [MsaEntitiesResponse]
  describe 'delete_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for deleted_roles
  # Delete links or additional roles between user groups and CID groups. User group ID and CID group ID have to be specified in request. Only specified roles are removed if specified in request payload, else association between User Group and CID group is dissolved completely (if no roles specified).
  # @param body &#39;user_group_id&#39; and &#39;cid_group_id&#39; fields are required. &#39;role_ids&#39; field is optional. Remaining fields are ignored.
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'deleted_roles test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_children
  # Get link to child customer by child CID(s)
  # @param ids CID of a child customer
  # @param [Hash] opts the optional parameters
  # @return [DomainChildrenResponseV1]
  describe 'get_children test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_children_v2
  # Get link to child customer by child CID(s)
  # @param body
  # @param [Hash] opts the optional parameters
  # @return [DomainChildrenResponseV1]
  describe 'get_children_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cid_group_by_id
  # Deprecated : Please use GET /mssp/entities/cid-groups/v2. Get CID groups by ID.
  # @param cid_group_ids CID group IDs to be searched on
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'get_cid_group_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cid_group_by_id_v2
  # Get CID Groups by ID.
  # @param ids CID group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'get_cid_group_by_id_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cid_group_members_by
  # Deprecated : Please use GET /mssp/entities/cid-group-members/v2. Get CID group members by CID group ID.
  # @param cid_group_ids CID group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'get_cid_group_members_by test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cid_group_members_by_v2
  # Get CID group members by CID Group ID.
  # @param ids CID group IDs search for
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupMembersResponseV1]
  describe 'get_cid_group_members_by_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_roles_by_id
  # Get link between user group and CID group by ID. Link ID is a string consisting of multiple components, but should be treated as opaque.
  # @param ids Link ID is a string consisting of multiple components, but should be treated as opaque.
  # @param [Hash] opts the optional parameters
  # @return [DomainMSSPRoleResponseV1]
  describe 'get_roles_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_group_members_by_id
  # Deprecated : Please use GET /mssp/entities/user-group-members/v2. Get user group members by user group ID.
  # @param user_group_ids User group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'get_user_group_members_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_group_members_by_idv2
  # Get user group members by user group ID.
  # @param ids User group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupMembersResponseV1]
  describe 'get_user_group_members_by_idv2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_groups_by_id
  # Deprecated : Please use GET /entities/user-groups/v2. Get user groups by ID.
  # @param user_group_ids User Group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'get_user_groups_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_user_groups_by_idv2
  # Get user groups by ID.
  # @param ids User group IDs to search for
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'get_user_groups_by_idv2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_children
  # Query for customers linked as children
  # @param [Hash] opts the optional parameters
  # @option opts [String] :filter Filter using a query in Falcon Query Language (FQL). Supported filters: cid
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaspecQueryResponse]
  describe 'query_children test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_cid_group_members
  # Query a CID groups members by associated CID.
  # @param cid CID to lookup associated CID group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return id
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_cid_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_cid_groups
  # Query CID groups.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name to lookup groups for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_roles
  # Query links between user groups and CID groups. At least one of CID group ID or user group ID should also be provided. Role ID is optional.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_group_id User group ID to fetch MSSP role for
  # @option opts [String] :cid_group_id CID group ID to fetch MSSP role for
  # @option opts [String] :role_id Role ID to fetch MSSP role for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_roles test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_user_group_members
  # Query user group member by user UUID.
  # @param user_uuid User UUID to lookup associated user group ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Number of ids to return
  # @return [MsaQueryResponse]
  describe 'query_user_group_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for query_user_groups
  # Query user groups.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Name to lookup groups for
  # @option opts [String] :sort The sort expression used to sort the results
  # @option opts [Integer] :offset Starting index of overall result set from which to return ids
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [MsaQueryResponse]
  describe 'query_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cid_groups
  # Update existing CID groups. CID group ID is expected for each CID group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. CID group member(s) remain unaffected.
  # @param body &#39;cid_group_id&#39; field is required to identify the CID group to update along with &#39;name&#39; and/or &#39;description&#39; fields to be updated.
  # @param [Hash] opts the optional parameters
  # @return [DomainCIDGroupsResponseV1]
  describe 'update_cid_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_user_groups
  # Update existing user group(s). User group ID is expected for each user group definition provided in request body. Name is a required field but description is an optional field. Empty description will override existing value. User group member(s) remain unaffected.
  # @param body &#39;user_group_id&#39; field is required to identify the user group to update along with &#39;name&#39; and/or &#39;description&#39; fields to be updated.
  # @param [Hash] opts the optional parameters
  # @return [DomainUserGroupsResponseV1]
  describe 'update_user_groups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
