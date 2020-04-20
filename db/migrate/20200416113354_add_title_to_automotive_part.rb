class AddTitleToAutomotivePart < ActiveRecord::Migration[5.2]
  def change
    add_column :automotive_parts, :title, :string
  end
end
