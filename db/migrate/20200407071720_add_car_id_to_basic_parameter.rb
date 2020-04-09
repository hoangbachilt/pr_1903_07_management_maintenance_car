class AddCarIdToBasicParameter < ActiveRecord::Migration[5.2]
  def change
    add_column :basic_parameters, :car_id, :integer
  end
end
