require 'test_helper'

class ReocketElevatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reocket_elevators_index_url
    assert_response :success
  end

end
