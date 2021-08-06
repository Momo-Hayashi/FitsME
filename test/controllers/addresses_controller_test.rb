require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get addresses_destroy_url
    assert_response :success
  end

end
