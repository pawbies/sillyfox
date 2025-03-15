class CreateIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, limit: 100
      t.text :description, limit: 500
      t.string :dosage, limit: 20
      t.integer :rating, null: false

      t.timestamps
    end
    add_index :ingredients, :name, unique: true
  end
end
