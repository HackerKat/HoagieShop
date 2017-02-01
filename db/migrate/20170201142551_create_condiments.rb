class CreateCondiments < ActiveRecord::Migration[5.0]
  def change
    create_table :condiments do |t|
      t.string :name
      t.integer :spiceindex
      t.integer :amount

      t.timestamps
    end
  end
end
