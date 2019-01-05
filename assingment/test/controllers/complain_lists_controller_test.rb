require 'test_helper'

class ComplainListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complain_list = complain_lists(:one)
  end

  test "should get index" do
    get complain_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_complain_list_url
    assert_response :success
  end

  test "should create complain_list" do
    assert_difference('ComplainList.count') do
      post complain_lists_url, params: { complain_list: { description: @complain_list.description, title: @complain_list.title } }
    end

    assert_redirected_to complain_list_url(ComplainList.last)
  end

  test "should show complain_list" do
    get complain_list_url(@complain_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_complain_list_url(@complain_list)
    assert_response :success
  end

  test "should update complain_list" do
    patch complain_list_url(@complain_list), params: { complain_list: { description: @complain_list.description, title: @complain_list.title } }
    assert_redirected_to complain_list_url(@complain_list)
  end

  test "should destroy complain_list" do
    assert_difference('ComplainList.count', -1) do
      delete complain_list_url(@complain_list)
    end

    assert_redirected_to complain_lists_url
  end
end
