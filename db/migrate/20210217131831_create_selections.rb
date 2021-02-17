class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.integer :customization_A_id
      t.integer :customization_B_id

      t.timestamps
    end
  end
end
