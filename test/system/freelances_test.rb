require "application_system_test_case"

class FreelancesTest < ApplicationSystemTestCase
  setup do
    @freelance = freelances(:one)
  end

  test "visiting the index" do
    visit freelances_url
    assert_selector "h1", text: "Freelances"
  end

  test "creating a Freelance" do
    visit freelances_url
    click_on "New Freelance"

    click_on "Create Freelance"

    assert_text "Freelance was successfully created"
    click_on "Back"
  end

  test "updating a Freelance" do
    visit freelances_url
    click_on "Edit", match: :first

    click_on "Update Freelance"

    assert_text "Freelance was successfully updated"
    click_on "Back"
  end

  test "destroying a Freelance" do
    visit freelances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Freelance was successfully destroyed"
  end
end
