class AddNameToRegisterAdvisory < ActiveRecord::Migration[5.2]
  def change
    add_column :register_advisories, :username, :string
  end
end
