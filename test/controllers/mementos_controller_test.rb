require "test_helper"

class MementosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memento = mementos(:one)
  end

  test "should get index" do
    get mementos_url
    assert_response :success
  end

  test "should get new" do
    get new_memento_url
    assert_response :success
  end

  test "should create memento" do
    assert_difference("Memento.count") do
      post mementos_url, params: { memento: { story: @memento.story } }
    end

    assert_redirected_to memento_url(Memento.last)
  end

  test "should show memento" do
    get memento_url(@memento)
    assert_response :success
  end

  test "should get edit" do
    get edit_memento_url(@memento)
    assert_response :success
  end

  test "should update memento" do
    patch memento_url(@memento), params: { memento: { story: @memento.story } }
    assert_redirected_to memento_url(@memento)
  end

  test "should destroy memento" do
    assert_difference("Memento.count", -1) do
      delete memento_url(@memento)
    end

    assert_redirected_to mementos_url
  end
end
