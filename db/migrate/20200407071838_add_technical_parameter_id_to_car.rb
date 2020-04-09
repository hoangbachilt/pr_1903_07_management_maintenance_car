class AddTechnicalParameterIdToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :technical_parameter_id, :integer
  end
end
