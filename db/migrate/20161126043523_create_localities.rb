class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :registration_number_id

      t.timestamps null: false
    end
  end
end
