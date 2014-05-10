class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name_a
      t.string :descripion_a
      t.string :links_a

      t.timestamps
    end
  end
end
