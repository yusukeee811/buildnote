require "test_helper"

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_users_update_url
    assert_response :success
  end

  test "should get withdraw" do
    get admin_users_withdraw_url
    assert_response :success
  end
end
