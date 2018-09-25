class AddCompetenceToCategorieCompetence < ActiveRecord::Migration[5.2]
  def change
    add_reference :categorie_competences, :competence, foreign_key: true
  end
end
