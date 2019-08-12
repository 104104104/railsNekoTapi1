class CreateGamecounts < ActiveRecord::Migration[5.2]
  def change
    create_table :gamecounts do |t|
      t.integer :count

      t.timestamps
    end
  end
end
