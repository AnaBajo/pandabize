class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :bike_id
      t.integer :user_id
      t.jsonb :selected_customizations

      t.timestamps
    end
  end
end
