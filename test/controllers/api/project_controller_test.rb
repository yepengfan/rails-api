require 'test_helper'

class Api::ProjectControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
