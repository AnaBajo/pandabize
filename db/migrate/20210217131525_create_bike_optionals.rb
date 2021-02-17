class CreateBikeOptionals < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_optionals do |t|
      t.integer :bike_id
      t.integer :customization_id

      t.timestamps
    end
  end
end
