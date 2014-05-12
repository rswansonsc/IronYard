class AddBelongToSubmissions < ActiveRecord::Migration
  def change
  add_column :submissions, :assignment_id, :integer
  add_column :comments, :assignment_id, :integer
  end
end
