require "test_helper"

class Public::TrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_trainings_index_url
    assert_response :success
  end

  test "should get new" do
    get public_trainings_new_url
    assert_response :success
  end

  test "should get create" do
    get public_trainings_create_url
    assert_response :success
  end

  test "should get edit" do
    get public_trainings_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_trainings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_trainings_destroy_url
    assert_response :success
  end
end
