class CreateAutomotiveParts < ActiveRecord::Migration[5.2]
  def change
    create_table :automotive_parts do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :service_pack, foreign_key: true
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
