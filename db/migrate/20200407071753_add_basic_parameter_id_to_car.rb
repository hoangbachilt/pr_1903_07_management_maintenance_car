class AddBasicParameterIdToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :basic_parameter_id, :integer
  end
end
