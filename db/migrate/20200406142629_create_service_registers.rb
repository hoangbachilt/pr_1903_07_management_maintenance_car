class CreateServiceRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :service_registers do |t|
      t.references :user, foreign_key: true
      t.references :service_pack, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
