class CreateAutomotivePartDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :automotive_part_details do |t|
      t.references :service_pack, foreign_key: true
      t.references :automotive_part, foreign_key: true

      t.timestamps
    end
  end
end
