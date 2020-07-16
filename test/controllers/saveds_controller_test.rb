require 'test_helper'

class SavedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved = saveds(:one)
  end

  test "should get index" do
    get saveds_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_url
    assert_response :success
  end

  test "should create saved" do
    assert_difference('Saved.count') do
      post saveds_url, params: { saved: {  } }
    end

    assert_redirected_to saved_url(Saved.last)
  end

  test "should show saved" do
    get saved_url(@saved)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_url(@saved)
    assert_response :success
  end

  test "should update saved" do
    patch saved_url(@saved), params: { saved: {  } }
    assert_redirected_to saved_url(@saved)
  end

  test "should destroy saved" do
    assert_difference('Saved.count', -1) do
      delete saved_url(@saved)
    end

    assert_redirected_to saveds_url
  end
end
