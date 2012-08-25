require 'test_helper'

class WscoloresControllerTest < ActionController::TestCase
  test "should get leer3" do
    get :leer3
    assert_response :success
  end

  test "should get crear" do
    get :crear
    assert_response :success
  end

  test "should get colordia" do
    get :colordia
    assert_response :success
  end

end
