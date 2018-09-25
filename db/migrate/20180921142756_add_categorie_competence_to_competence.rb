class AddCategorieCompetenceToCompetence < ActiveRecord::Migration[5.2]
  def change
    add_reference :competences, :categorie_competence, foreign_key: true
  end
end
