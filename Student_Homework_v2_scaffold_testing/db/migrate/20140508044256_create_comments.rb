class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.date :date_c
      t.time :time_c
      t.string :links_c
      t.text :comment_detail

      t.timestamps
    end
  end
end
