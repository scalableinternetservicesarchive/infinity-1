class AddUserIdToBlogComment < ActiveRecord::Migration
  def change
    add_column :blog_comments, :user_id, :integer
  end
end
