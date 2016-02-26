require 'test_helper'

module Api
  class MembersControllerTest < ActionDispatch::IntegrationTest
    test 'GET #index' do
      get api_members_url, params: { format: :json }
      assert_response :success
    end
  end
end
