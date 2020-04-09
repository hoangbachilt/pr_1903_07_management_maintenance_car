class CreateServicePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :service_packs do |t|
      t.string :name
      t.text :desciption
      t.float :price
      t.float :price_parts

      t.timestamps
    end
  end
end
