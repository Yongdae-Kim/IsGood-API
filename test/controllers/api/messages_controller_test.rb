require 'test_helper'

module Api
  class MessagesControllerTest < ActionDispatch::IntegrationTest
    test 'GET #index' do
      get api_messages_url, params: { format: :json }
      assert_response :success
    end
  end
end
