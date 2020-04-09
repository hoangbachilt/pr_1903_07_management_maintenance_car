class CreateTechnicalParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :technical_parameters do |t|
      t.string :overall_dimensions_outside
      t.string :ther_standard_long
      t.string :float
      t.string :minimum_rotation_radius
      t.string :float
      t.integer :max_speed

      t.timestamps
    end
  end
end
