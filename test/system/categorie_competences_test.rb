require "application_system_test_case"

class CategorieCompetencesTest < ApplicationSystemTestCase
  setup do
    @categorie_competence = categorie_competences(:one)
  end

  test "visiting the index" do
    visit categorie_competences_url
    assert_selector "h1", text: "Categorie Competences"
  end

  test "creating a Categorie competence" do
    visit categorie_competences_url
    click_on "New Categorie Competence"

    fill_in "Nom", with: @categorie_competence.nom
    click_on "Create Categorie competence"

    assert_text "Categorie competence was successfully created"
    click_on "Back"
  end

  test "updating a Categorie competence" do
    visit categorie_competences_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @categorie_competence.nom
    click_on "Update Categorie competence"

    assert_text "Categorie competence was successfully updated"
    click_on "Back"
  end

  test "destroying a Categorie competence" do
    visit categorie_competences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categorie competence was successfully destroyed"
  end
end
