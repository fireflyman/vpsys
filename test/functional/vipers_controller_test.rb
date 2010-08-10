require 'test_helper'

class VipersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vipers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create viper" do
    assert_difference('Viper.count') do
      post :create, :viper => { }
    end

    assert_redirected_to viper_path(assigns(:viper))
  end

  test "should show viper" do
    get :show, :id => vipers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vipers(:one).to_param
    assert_response :success
  end

  test "should update viper" do
    put :update, :id => vipers(:one).to_param, :viper => { }
    assert_redirected_to viper_path(assigns(:viper))
  end

  test "should destroy viper" do
    assert_difference('Viper.count', -1) do
      delete :destroy, :id => vipers(:one).to_param
    end

    assert_redirected_to vipers_path
  end
end
