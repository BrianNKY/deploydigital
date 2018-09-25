class CreateCgus < ActiveRecord::Migration[5.2]
  def change
    create_table :cgus do |t|

      t.timestamps
    end
  end
end
