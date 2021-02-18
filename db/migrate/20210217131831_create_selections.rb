class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.integer :first_customization_id
      t.integer :second_customization_id

      t.timestamps
    end
  end
end
