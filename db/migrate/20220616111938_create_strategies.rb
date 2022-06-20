class CreateStrategies < ActiveRecord::Migration[7.0]
  def change
    create_table :strategies do |t|
      t.string :name
      t.text :description
      t.belongs_to :raid, index: true, foreign_key: true
      t.belongs_to :data_center, index: true, foreign_key: true

      t.timestamps
    end
  end
end
