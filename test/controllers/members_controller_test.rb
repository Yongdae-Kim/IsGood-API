require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test 'should get index' do
    get members_url
    assert_response :success
  end

  test 'should get new' do
    get new_member_url
    assert_response :success
  end

  test 'should create member' do
    assert_difference('Member.count') do
      post members_url, params: {
        member: {
          address: @member.address,
          birth: @member.birth,
          career: @member.career,
          department: @member.department,
          email: @member.email,
          homepage: @member.homepage,
          military: @member.military,
          name: @member.name,
          party_id: @member.party_id,
          rank: @member.rank,
          region_id: @member.region_id,
          location: @member.location
        }
      }
    end

    assert_redirected_to member_path(Member.last)
  end

  test 'should show member' do
    get member_url(@member)
    assert_response :success
  end

  test 'should get edit' do
    get edit_member_url(@member)
    assert_response :success
  end

  test 'should update member' do
    patch member_url(@member), params: {
      member: {
        address: @member.address,
        birth: @member.birth,
        career: @member.career,
        department: @member.department,
        email: @member.email,
        homepage: @member.homepage,
        military: @member.military,
        name: @member.name,
        party_id: @member.party_id,
        rank: @member.rank,
        region_id: @member.region_id,
        location: @member.location
      }
    }
    assert_redirected_to member_path(@member)
  end

  test 'should destroy member' do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_path
  end
end
