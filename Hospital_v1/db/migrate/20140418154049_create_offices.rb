class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
    	t.string :name
    	t.text :description
      # t.string :location
    	t.string :workflow_state
      t.timestamps
    end
  end
end
