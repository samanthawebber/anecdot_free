require "application_system_test_case"

class MementosTest < ApplicationSystemTestCase
  setup do
    @memento = mementos(:one)
  end

  test "visiting the index" do
    visit mementos_url
    assert_selector "h1", text: "Mementos"
  end

  test "should create memento" do
    visit mementos_url
    click_on "New memento"

    fill_in "Story", with: @memento.story
    click_on "Create Memento"

    assert_text "Memento was successfully created"
    click_on "Back"
  end

  test "should update Memento" do
    visit memento_url(@memento)
    click_on "Edit this memento", match: :first

    fill_in "Story", with: @memento.story
    click_on "Update Memento"

    assert_text "Memento was successfully updated"
    click_on "Back"
  end

  test "should destroy Memento" do
    visit memento_url(@memento)
    click_on "Destroy this memento", match: :first

    assert_text "Memento was successfully destroyed"
  end
end
