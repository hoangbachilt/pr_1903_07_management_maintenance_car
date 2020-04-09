class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :Category, foreign_key: true

      t.timestamps
    end
  end
end
