class AddCountryToLocations < ActiveRecord::Migration
  def change
  add_column :locations, :country, :string
  end
end
