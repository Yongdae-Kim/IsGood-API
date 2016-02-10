require 'test_helper'

module Api
  class RegionsControllerTest < ActionDispatch::IntegrationTest
    test 'GET #index' do
      get api_regions_url, params: { format: :json }
      assert_response :success
    end
  end
end
