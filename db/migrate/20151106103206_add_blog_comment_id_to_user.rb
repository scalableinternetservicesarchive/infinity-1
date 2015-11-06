class AddBlogCommentIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :blog_comment_id, :integer
  end
end
