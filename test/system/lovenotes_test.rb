require "application_system_test_case"

class LovenotesTest < ApplicationSystemTestCase
  setup do
    @lovenote = lovenotes(:one)
  end

  test "visiting the index" do
    visit lovenotes_url
    assert_selector "h1", text: "Lovenotes"
  end

  test "should create lovenote" do
    visit lovenotes_url
    click_on "New lovenote"

    fill_in "Story", with: @lovenote.story
    click_on "Create Lovenote"

    assert_text "Lovenote was successfully created"
    click_on "Back"
  end

  test "should update Lovenote" do
    visit lovenote_url(@lovenote)
    click_on "Edit this lovenote", match: :first

    fill_in "Story", with: @lovenote.story
    click_on "Update Lovenote"

    assert_text "Lovenote was successfully updated"
    click_on "Back"
  end

  test "should destroy Lovenote" do
    visit lovenote_url(@lovenote)
    click_on "Destroy this lovenote", match: :first

    assert_text "Lovenote was successfully destroyed"
  end
end
