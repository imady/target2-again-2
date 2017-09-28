require 'test_helper'

class SubjectControllerTest < ActionController::TestCase
  test "should get math" do
    get :math
    assert_response :success
  end

  test "should get english" do
    get :english
    assert_response :success
  end

end
