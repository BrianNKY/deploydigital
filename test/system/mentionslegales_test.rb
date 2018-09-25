require "application_system_test_case"

class MentionslegalesTest < ApplicationSystemTestCase
  setup do
    @mentionslegale = mentionslegales(:one)
  end

  test "visiting the index" do
    visit mentionslegales_url
    assert_selector "h1", text: "Mentionslegales"
  end

  test "creating a Mentionslegale" do
    visit mentionslegales_url
    click_on "New Mentionslegale"

    click_on "Create Mentionslegale"

    assert_text "Mentionslegale was successfully created"
    click_on "Back"
  end

  test "updating a Mentionslegale" do
    visit mentionslegales_url
    click_on "Edit", match: :first

    click_on "Update Mentionslegale"

    assert_text "Mentionslegale was successfully updated"
    click_on "Back"
  end

  test "destroying a Mentionslegale" do
    visit mentionslegales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mentionslegale was successfully destroyed"
  end
end
