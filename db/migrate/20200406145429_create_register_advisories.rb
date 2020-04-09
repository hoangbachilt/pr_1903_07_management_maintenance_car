class CreateRegisterAdvisories < ActiveRecord::Migration[5.2]
  def change
    create_table :register_advisories do |t|
      t.string :number_phone
      t.string :manufacturer
      t.integer :status
      t.references :user, foreign_key: true
      t.references :staff, foreign_key: true

      t.timestamps
    end
  end
end
