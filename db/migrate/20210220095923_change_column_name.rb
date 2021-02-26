class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :customizations, :name, :element
  end
end
