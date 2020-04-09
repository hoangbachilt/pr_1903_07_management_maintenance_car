class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :staff_name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.integer :level
      t.boolean :admin

      t.timestamps
    end
  end
end
