class CreateCategorieCompetences < ActiveRecord::Migration[5.2]
  def change
    create_table :categorie_competences do |t|
      t.string :nom

      t.timestamps
    end
  end
end
