require "application_system_test_case"

class CgusTest < ApplicationSystemTestCase
  setup do
    @cgu = cgus(:one)
  end

  test "visiting the index" do
    visit cgus_url
    assert_selector "h1", text: "Cgus"
  end

  test "creating a Cgu" do
    visit cgus_url
    click_on "New Cgu"

    click_on "Create Cgu"

    assert_text "Cgu was successfully created"
    click_on "Back"
  end

  test "updating a Cgu" do
    visit cgus_url
    click_on "Edit", match: :first

    click_on "Update Cgu"

    assert_text "Cgu was successfully updated"
    click_on "Back"
  end

  test "destroying a Cgu" do
    visit cgus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cgu was successfully destroyed"
  end
end
