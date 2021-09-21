# frozen_string_literal: true

require 'test_helper'

class RetailersControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get retailers_show_url
    assert_response :success
  end
end
