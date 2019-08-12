class CreateRanking2s < ActiveRecord::Migration[5.2]
  def change
    create_table :ranking2s do |t|
      t.string :name, :null=>false, :default=>'NoName'
      t.integer :score
      t.string :memo

      t.timestamps
    end
  end
end
