class AddCommentIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :comment_id, :integer
  end
end
