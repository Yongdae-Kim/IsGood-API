require 'test_helper'

class MemberStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_stat = member_stats(:one)
  end

  test 'should get index' do
    get member_stats_url
    assert_response :success
  end

  test 'should get new' do
    get new_member_stat_url
    assert_response :success
  end

  test 'should create member_stat' do
    assert_difference('MemberStat.count') do
      post member_stats_url, params: {
        member_stat: {
          item1_point: @member_stat.item1_point,
          item2_point: @member_stat.item2_point,
          item3_point: @member_stat.item3_point,
          item4_point: @member_stat.item4_point,
          item5_point: @member_stat.item5_point,
          member_id: @member_stat.member_id
        }
      }
    end

    assert_redirected_to member_stat_path(MemberStat.last)
  end

  test 'should show member_stat' do
    get member_stat_url(@member_stat)
    assert_response :success
  end

  test 'should get edit' do
    get edit_member_stat_url(@member_stat)
    assert_response :success
  end

  test 'should update member_stat' do
    patch member_stat_url(@member_stat), params: {
      member_stat: {
        item1_point: @member_stat.item1_point,
        item2_point: @member_stat.item2_point,
        item3_point: @member_stat.item3_point,
        item4_point: @member_stat.item4_point,
        item5_point: @member_stat.item5_point,
        member_id: @member_stat.member_id
      }
    }
    assert_redirected_to member_stat_path(@member_stat)
  end

  test 'should destroy member_stat' do
    assert_difference('MemberStat.count', -1) do
      delete member_stat_url(@member_stat)
    end

    assert_redirected_to member_stats_path
  end
end
