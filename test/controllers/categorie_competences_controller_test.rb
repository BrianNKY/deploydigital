require 'test_helper'

class CategorieCompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorie_competence = categorie_competences(:one)
  end

  test "should get index" do
    get categorie_competences_url
    assert_response :success
  end

  test "should get new" do
    get new_categorie_competence_url
    assert_response :success
  end

  test "should create categorie_competence" do
    assert_difference('CategorieCompetence.count') do
      post categorie_competences_url, params: { categorie_competence: { nom: @categorie_competence.nom } }
    end

    assert_redirected_to categorie_competence_url(CategorieCompetence.last)
  end

  test "should show categorie_competence" do
    get categorie_competence_url(@categorie_competence)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorie_competence_url(@categorie_competence)
    assert_response :success
  end

  test "should update categorie_competence" do
    patch categorie_competence_url(@categorie_competence), params: { categorie_competence: { nom: @categorie_competence.nom } }
    assert_redirected_to categorie_competence_url(@categorie_competence)
  end

  test "should destroy categorie_competence" do
    assert_difference('CategorieCompetence.count', -1) do
      delete categorie_competence_url(@categorie_competence)
    end

    assert_redirected_to categorie_competences_url
  end
end
