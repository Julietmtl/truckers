require "test_helper"

class TrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trucks_url
    assert_response :success
  end

  test "should get show" do
    get truck_url(@truck)
    assert_response :success
  end
end
