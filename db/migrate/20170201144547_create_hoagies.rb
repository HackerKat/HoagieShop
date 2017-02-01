class CreateHoagies < ActiveRecord::Migration[5.0]
  def change
    create_table :hoagies do |t|
      t.string :name
      t.references :bread, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.references :condiment, foreign_key: true

      t.timestamps
    end
  end
end
