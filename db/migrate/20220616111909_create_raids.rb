class CreateRaids < ActiveRecord::Migration[7.0]
  def change
    create_table :raids do |t|
      t.string :name
      t.integer :player_level
      t.integer :item_level

      t.timestamps
    end
  end
end
