require 'test_helper'

class CgusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cgu = cgus(:one)
  end

  test "should get index" do
    get cgus_url
    assert_response :success
  end

  test "should get new" do
    get new_cgu_url
    assert_response :success
  end

  test "should create cgu" do
    assert_difference('Cgu.count') do
      post cgus_url, params: { cgu: {  } }
    end

    assert_redirected_to cgu_url(Cgu.last)
  end

  test "should show cgu" do
    get cgu_url(@cgu)
    assert_response :success
  end

  test "should get edit" do
    get edit_cgu_url(@cgu)
    assert_response :success
  end

  test "should update cgu" do
    patch cgu_url(@cgu), params: { cgu: {  } }
    assert_redirected_to cgu_url(@cgu)
  end

  test "should destroy cgu" do
    assert_difference('Cgu.count', -1) do
      delete cgu_url(@cgu)
    end

    assert_redirected_to cgus_url
  end
end
