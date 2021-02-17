class RemoveDescriptionFromBikes < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikes, :description, :text
  end
end
