require 'test_helper'

class MemberWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_work = member_works(:one)
  end

  test 'should get index' do
    get member_works_url
    assert_response :success
  end

  test 'should get new' do
    get new_member_work_url
    assert_response :success
  end

  test 'should create member_work' do
    assert_difference('MemberWork.count') do
      post member_works_url, params: {
        member_work: {
          bill_proposal: @member_work.bill_proposal,
          main_session_attendance: @member_work.main_session_attendance,
          member_id: @member_work.member_id,
          sub_session_attendance: @member_work.sub_session_attendance
        }
      }
    end

    assert_redirected_to member_work_path(MemberWork.last)
  end

  test 'should show member_work' do
    get member_work_url(@member_work)
    assert_response :success
  end

  test 'should get edit' do
    get edit_member_work_url(@member_work)
    assert_response :success
  end

  test 'should update member_work' do
    patch member_work_url(@member_work), params: {
      member_work: {
        bill_proposal: @member_work.bill_proposal,
        main_session_attendance: @member_work.main_session_attendance,
        member_id: @member_work.member_id,
        sub_session_attendance: @member_work.sub_session_attendance
      }
    }
    assert_redirected_to member_work_path(@member_work)
  end

  test 'should destroy member_work' do
    assert_difference('MemberWork.count', -1) do
      delete member_work_url(@member_work)
    end

    assert_redirected_to member_works_path
  end
end
