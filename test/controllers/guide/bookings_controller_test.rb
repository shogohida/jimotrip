require 'test_helper'

class Guide::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guide_bookings_index_url
    assert_response :success
  end

end
