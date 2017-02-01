class CreateBreads < ActiveRecord::Migration[5.0]
  def change
    create_table :breads do |t|
      t.string :name
      t.integer :size
      t.integer :amount

      t.timestamps
    end
  end
end
