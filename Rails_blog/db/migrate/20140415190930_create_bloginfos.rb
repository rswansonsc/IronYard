class CreateBloginfos < ActiveRecord::Migration
  def change
    create_table :bloginfos do |t|
    	t.string :title
    	t.string :content
      t.timestamps
    end
  end
end
