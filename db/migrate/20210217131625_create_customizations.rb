class CreateCustomizations < ActiveRecord::Migration[6.0]
  def change
    create_table :customizations do |t|
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
