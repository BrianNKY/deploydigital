class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :nom
      t.text :contenu
      t.string :image
      t.text :competences, array: true

      t.timestamps
    end
  end
end
