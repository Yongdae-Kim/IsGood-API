require 'test_helper'

module Api
  class PartiesControllerTest < ActionDispatch::IntegrationTest
    test 'GET #index' do
      get api_parties_url, params: { format: :json }
      assert_response :success
    end
  end
end
