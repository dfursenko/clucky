require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { acc_action_token_hash: @user.acc_action_token_hash, access_token_hash: @user.access_token_hash, email: @user.email, login: @user.login, password_hash: @user.password_hash, refresh_token_hash: @user.refresh_token_hash, status: @user.status } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { acc_action_token_hash: @user.acc_action_token_hash, access_token_hash: @user.access_token_hash, email: @user.email, login: @user.login, password_hash: @user.password_hash, refresh_token_hash: @user.refresh_token_hash, status: @user.status } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
