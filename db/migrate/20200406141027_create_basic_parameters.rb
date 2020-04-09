class CreateBasicParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_parameters do |t|
      t.string :origin
      t.integer :status
      t.string :km_travel
      t.integer :color_outside
      t.integer :color_inside
      t.integer :number_of_seats
      t.string :engine
      t.integer :fueling_system
      t.integer :gear
      t.text :description

      t.timestamps
    end
  end
end
