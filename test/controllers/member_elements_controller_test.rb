require 'test_helper'

class MemberElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_element = member_elements(:one)
  end

  test 'should get index' do
    get member_elements_url
    assert_response :success
  end

  test 'should get new' do
    get new_member_element_url
    assert_response :success
  end

  test 'should create member_element' do
    assert_difference('MemberElement.count') do
      post member_elements_url, params: {
        member_element: {
          item1_id: @member_element.item1_id,
          item2_id: @member_element.item2_id,
          item3_id: @member_element.item3_id,
          item4_id: @member_element.item4_id,
          item5_id: @member_element.item5_id,
          member_id: @member_element.member_id
        }
      }
    end

    assert_redirected_to member_element_path(MemberElement.last)
  end

  test 'should show member_element' do
    get member_element_url(@member_element)
    assert_response :success
  end

  test 'should get edit' do
    get edit_member_element_url(@member_element)
    assert_response :success
  end

  test 'should update member_element' do
    patch member_element_url(@member_element), params: {
      member_element: {
        item1_id: @member_element.item1_id,
        item2_id: @member_element.item2_id,
        item3_id: @member_element.item3_id,
        item4_id: @member_element.item4_id,
        item5_id: @member_element.item5_id,
        member_id: @member_element.member_id
      }
    }
    assert_redirected_to member_element_path(@member_element)
  end

  test 'should destroy member_element' do
    assert_difference('MemberElement.count', -1) do
      delete member_element_url(@member_element)
    end

    assert_redirected_to member_elements_path
  end
end
