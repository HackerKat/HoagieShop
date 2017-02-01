class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :origin
      t.integer :amount

      t.timestamps
    end
  end
end
