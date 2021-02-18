class CreatePurchasedCustomizationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_customizations do |t|
      t.references :order
      t.references :customization
    end
    remove_column :orders, :selected_customizations, :jsonb
  end
end
