class CreateDataCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :data_centers do |t|
      t.string :name
      t.belongs_to :region, index: true, foreign_key: true

      t.timestamps
    end
  end
end
