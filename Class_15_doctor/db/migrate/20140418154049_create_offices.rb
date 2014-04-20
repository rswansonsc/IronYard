class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
    	t.string :name
    	t.text :description
    	t.boolean :difficult
    	t.string :cost
      # t.string :location
    	t.string :work_flow
      t.timestamps
    end
  end
end
