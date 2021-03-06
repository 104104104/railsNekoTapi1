class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.string :name, :null => false, :default => 'Noname'
      t.integer :score
      t.string :memo

      t.timestamps
    end
  end
end
