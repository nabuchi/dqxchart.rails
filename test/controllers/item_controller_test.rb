require 'test_helper'

class ItemControllerTest < ActionController::TestCase
  test "should get graphs" do
    get :graphs
    assert_response :success
  end

end
