class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name_s
      t.string :descripion_s
      t.string :links_s

      t.timestamps
    end
  end
end
