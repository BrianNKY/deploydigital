require 'test_helper'

class MentionslegalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentionslegale = mentionslegales(:one)
  end

  test "should get index" do
    get mentionslegales_url
    assert_response :success
  end

  test "should get new" do
    get new_mentionslegale_url
    assert_response :success
  end

  test "should create mentionslegale" do
    assert_difference('Mentionslegale.count') do
      post mentionslegales_url, params: { mentionslegale: {  } }
    end

    assert_redirected_to mentionslegale_url(Mentionslegale.last)
  end

  test "should show mentionslegale" do
    get mentionslegale_url(@mentionslegale)
    assert_response :success
  end

  test "should get edit" do
    get edit_mentionslegale_url(@mentionslegale)
    assert_response :success
  end

  test "should update mentionslegale" do
    patch mentionslegale_url(@mentionslegale), params: { mentionslegale: {  } }
    assert_redirected_to mentionslegale_url(@mentionslegale)
  end

  test "should destroy mentionslegale" do
    assert_difference('Mentionslegale.count', -1) do
      delete mentionslegale_url(@mentionslegale)
    end

    assert_redirected_to mentionslegales_url
  end
end
