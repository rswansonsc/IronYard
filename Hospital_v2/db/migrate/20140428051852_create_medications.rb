class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :description
      t.string :workflow_state

      t.timestamps
    end
  end
end
