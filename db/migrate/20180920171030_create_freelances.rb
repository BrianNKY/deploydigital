class CreateFreelances < ActiveRecord::Migration[5.2]
  def change
    create_table :freelances do |t|

      t.timestamps
    end
  end
end
