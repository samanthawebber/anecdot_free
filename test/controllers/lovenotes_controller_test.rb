require "test_helper"

class LovenotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lovenote = lovenotes(:one)
  end

  test "should get index" do
    get lovenotes_url
    assert_response :success
  end

  test "should get new" do
    get new_lovenote_url
    assert_response :success
  end

  test "should create lovenote" do
    assert_difference("Lovenote.count") do
      post lovenotes_url, params: { lovenote: { story: @lovenote.story } }
    end

    assert_redirected_to lovenote_url(Lovenote.last)
  end

  test "should show lovenote" do
    get lovenote_url(@lovenote)
    assert_response :success
  end

  test "should get edit" do
    get edit_lovenote_url(@lovenote)
    assert_response :success
  end

  test "should update lovenote" do
    patch lovenote_url(@lovenote), params: { lovenote: { story: @lovenote.story } }
    assert_redirected_to lovenote_url(@lovenote)
  end

  test "should destroy lovenote" do
    assert_difference("Lovenote.count", -1) do
      delete lovenote_url(@lovenote)
    end

    assert_redirected_to lovenotes_url
  end
end
