class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name_l
      t.string :email
      t.string :address
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
