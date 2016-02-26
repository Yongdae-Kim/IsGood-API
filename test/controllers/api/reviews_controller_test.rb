require 'test_helper'

module Api
  class ReviewsControllerTest < ActionDispatch::IntegrationTest
    test 'GET #index' do
      get api_reviews_url, params: { format: :json }
      assert_response :success
    end
  end
end
