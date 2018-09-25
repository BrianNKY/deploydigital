class CreateMentionslegales < ActiveRecord::Migration[5.2]
  def change
    create_table :mentionslegales do |t|

      t.timestamps
    end
  end
end
