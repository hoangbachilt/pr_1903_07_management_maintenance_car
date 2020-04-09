class AddCarIdToTechnicalParameter < ActiveRecord::Migration[5.2]
  def change
    add_column :technical_parameters, :car_id, :integer
  end
end
